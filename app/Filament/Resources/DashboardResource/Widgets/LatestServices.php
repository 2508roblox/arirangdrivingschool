<?php

namespace App\Filament\Resources\DashboardResource\Widgets;

use App\Models\Service;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;

class LatestServices extends BaseWidget
{
    public function table(Table $table): Table
    {
        return $table
            ->query(Service::latest()->limit(5)) // Lấy 5 dịch vụ mới nhất
            ->columns([
                Tables\Columns\TextColumn::make('name')->label('Service Name')->sortable()->searchable(),
                Tables\Columns\TextColumn::make('duration')->label('Duration')->sortable(),
                Tables\Columns\TextColumn::make('price')->label('Price ($)')->sortable(),
                Tables\Columns\TextColumn::make('lesson_count')->label('Lesson Count')->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make(), // Thêm hành động xem
                Tables\Actions\EditAction::make(), // Thêm hành động chỉnh sửa
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(), // Hành động xóa hàng loạt
            ]);
    }
    public function getColumnSpan(): int | array
    {
        return 12; // Chiếm toàn bộ chiều rộng
    }
}
