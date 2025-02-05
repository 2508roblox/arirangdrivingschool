<?php

namespace App\Filament\Resources\DashboardResource\Widgets;

use App\Models\Registration;
use Carbon\Carbon;
use Filament\Widgets\ChartWidget;

class RecentRegistrationsChart extends ChartWidget
{
    protected static ?string $heading = 'Monthly Registrations';

    protected function getData(): array
    {
        // Lấy số lượng đăng ký theo tháng trong 12 tháng gần nhất
        $registrations = Registration::selectRaw('COUNT(*) as count, MONTH(start_date) as month')
            ->where('start_date', '>=', Carbon::now()->subYear()) // Lấy dữ liệu trong 12 tháng
            ->groupBy('month')
            ->orderBy('month')
            ->pluck('count', 'month');

        // Tạo mảng dữ liệu cho biểu đồ
        $data = [];
        for ($i = 1; $i <= 12; $i++) {
            $data[] = $registrations->get($i, 0); // 0 nếu không có đăng ký trong tháng
        }

        return [
            'datasets' => [
                [
                    'label' => 'Registrations',
                    'data' => $data,
                ],
            ],
            'labels' => [
                'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
                'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
            ],
        ];
    }
    public function getColumnSpan(): int | array
    {
        return 12; // Chiếm toàn bộ chiều rộng
    }
    protected function getType(): string
    {
        return 'line';
    }
}
