<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CommentController;
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
Route::get('/', function () {
    return view('welcome');
});

Route::get('/welcome', function () {
    return view('welcome');
});

Route::get('/profil', function () {
    return view('profil');
});

Route::get('/pesan', function () {
    return view('pesan');
});

Route::get('/jadwal', 'JadwalController@index');
Route::get('/tiket', 'TiketController@index');
Route::get('/penumpang','PostController@index');
// Route::get('/pesan','PostController@index');
Route::get('/komentar','CommentController@index');
Route::get('/tambah', function () {
    return view('tambah');
});
Route::post('/tambah/store',[PostController::class,'store']);

Route::get('/pesan', function () {
    return view('pesan');
});
Route::post('/pesan/store',[PostController::class,'store']);


Route::post('/komentar/store',[CommentController::class,'store']);

