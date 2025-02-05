<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RegistrationResource\Pages;
use App\Models\Registration;
use App\Models\Service;
use Filament\Forms;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\BadgeColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class RegistrationResource extends Resource
{
    protected static ?string $model = Registration::class;

    protected static ?string $navigationIcon = 'heroicon-o-users';
    protected static ?string $navigationLabel = 'Lesson Registration';
    protected static ?string $pluralLabel = 'Registrations List';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('first_name')->label('First Name')->required(),
                TextInput::make('last_name')->label('Last Name')->required(),
                TextInput::make('email')->label('Email')->email()->required(),
                TextInput::make('phone')->label('Phone Number')->tel()->required(),
                DatePicker::make('start_date')->label('Start Date')->required(),
                TextInput::make('pickup_address')->label('Pickup Address')->required(),

                Select::make('service_id')
                    ->label('Service Package')
                    ->options(Service::all()->pluck('name', 'id'))
                    ->searchable()
                    ->required(),

                Textarea::make('comment')->label('Message & Comments'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('first_name')->label('First Name')->sortable()->searchable(),
                TextColumn::make('last_name')->label('Last Name')->sortable()->searchable(),
                TextColumn::make('email')->label('Email')->sortable(),
                TextColumn::make('phone')->label('Phone')->sortable(),
                TextColumn::make('start_date')->label('Start Date')->sortable()->date(),
                TextColumn::make('pickup_address')->label('Pickup Address')->sortable(),
                TextColumn::make('service.name')->label('Service Package')->sortable(),
                BadgeColumn::make('comment')->label('Message & Comments')->limit(20),
                TextColumn::make('created_at')->label('Created Date')->sortable()->date(), // Added Created Date
                
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRegistrations::route('/'),
            'create' => Pages\CreateRegistration::route('/create'),
            'edit' => Pages\EditRegistration::route('/{record}/edit'),
        ];
    }
}
