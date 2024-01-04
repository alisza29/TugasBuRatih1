<?php

use App\Http\Controllers\Api\AssetController;
use App\Http\Controllers\Api\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


// route post untuk register, dimana akan memanggil fungsi register pada AuthController
route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class,'login']);

// route gruop semua routr yg butuh autentikai
Route::group (['middleware'=>['auth:sanctum']],function () {
   //route post untuk logout
    route::post('/logout', [AuthController::class,'logout']);
    
    // route resource untuk asset
    Route::apiResource('assets',AssetController::class);
    Route::post('/assets/{id}', [AssetController::class, 'update']);
});
