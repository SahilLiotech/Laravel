<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegisterController;
// use App\Models\userinfo;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [RegisterController::class, 'index']);


Route::post('/', [RegisterController::class, 'data']);


Route::get('/view', [RegisterController::class, 'view']);

// Route::get('/view-delete/{id}', [RegisterController::class, 'delete']);


Route::delete('/delete/{id}', [RegisterController::class, 'delete'])->name('user.destroy');
