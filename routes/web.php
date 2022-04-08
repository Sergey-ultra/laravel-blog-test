<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\MainController;
use App\Http\Controllers\Admin\PostController as AdminPostController;
use App\Http\Controllers\Admin\CategoryController as AdminCategoryController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [MainController::class, 'index'])->name('main.index');
Route::get('/category/{category}', [CategoryController::class, 'show'])->name('category.show');
Route::get('/{post}', [MainController::class, 'show'])->name('main.show');

Route::group(['prefix' => 'admin'], function() {
    Route::resource('/post', AdminPostController::class);
    Route::resource('/categories', AdminCategoryController::class);
});
