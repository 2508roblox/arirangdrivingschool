<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ServiceResource\Pages;
use App\Models\Service;
use Filament\Forms;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class ServiceResource extends Resource
{
    protected static ?string $model = Service::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Grid::make(2)->schema([
                    TextInput::make('name')
                        ->label('Package Name')
                        ->required()
                        ->maxLength(255),

                    TextInput::make('duration')
                        ->label('Duration')
                        ->required()
                        ->maxLength(255),

                    TextInput::make('price')
                        ->label('Price ($)')
                        ->numeric()
                        ->required(),

                    TextInput::make('lesson_count')
                        ->label('Number of Lessons')
                        ->numeric()
                        ->required(),
                ]),

                Repeater::make('benefits')
                    ->label('Benefits')
                    ->schema([
                        TextInput::make('value')->label('Benefit'),
                    ])
                    ->collapsible()
                    ->grid(1),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Package Name')->sortable()->searchable(),
                TextColumn::make('duration')->label('Duration')->sortable(),
                TextColumn::make('price')->label('Price ($)')->sortable(),
                TextColumn::make('lesson_count')->label('Lessons')->sortable(),
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
            'index' => Pages\ListServices::route('/'),
            'create' => Pages\CreateService::route('/create'),
            'edit' => Pages\EditService::route('/{record}/edit'),
        ];
    }
}
