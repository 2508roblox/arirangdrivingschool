<?php

use App\Http\Controllers\RegistrationController;
use App\Models\Service;
use Illuminate\Support\Facades\Route;

 
Route::get('/', function () {
    $services = Service::all();
    return view('home', compact('services'));
})->name('home');
Route::get('/policy', function () {
    return view('policy');
})->name('policy');
Route::get('/about', function () {
    return view('about');
    
})->name('about');

Route::get('/services', function () {
    $services = Service::all();
    return view('services', compact('services'));
})->name('services');
Route::get('/contact', function () {
    $services = Service::all();
    return view('contact', compact('services'));

})->name('contact');
Route::post('/register', [RegistrationController::class, 'store'])->name('register');
Route::get('/registration', function () {
    $services = Service::all();
    return view('registration', compact('services'));
})->name('registration');