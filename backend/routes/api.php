<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\UsersController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::post('/login', [AuthController::class, 'login']);

Route::middleware(['auth:api'])->group(function () {
    Route::get('/user', [AuthController::class, 'authorized']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::resource('/users', UsersController::class);
});
