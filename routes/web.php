<?php

use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PublicController;
use App\Http\Controllers\RentLogController;
use App\Http\Controllers\BookRentController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\WriterController;

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

Route::get('/',[PublicController::class,'index']);

Route::middleware('only_guest')->group(function(){
    Route::get('login', [AuthController::class,'login'])->name('login');
    Route::post('login', [AuthController::class,'authenticating']);
    Route::get('register', [AuthController::class,'register']);
    Route::post('register', [AuthController::class,'registerProcess']);
});


Route::middleware('auth')->group(function(){
    Route::get('logout', [AuthController::class,'logout']);
    Route::get('profile',[UserController::class,'profile'])->middleware('only_client');
    Route::get('book-detail/{slug}', [BookController::class,'show']);
    
Route::middleware('only_admin')->group(function(){
    Route::get('dashboard',[DashboardController::class,'index']);

    Route::get('books', [BookController::class,'index']);
    Route::get('book-add', [BookController::class,'add']);
    Route::post('book-add', [BookController::class,'store']);
    Route::get('book-edit/{slug}', [BookController::class,'edit']);
    Route::post('book-edit/{slug}', [BookController::class,'update']);
    Route::get('book-delete/{slug}', [BookController::class,'delete']);
    Route::get('book-destroy/{slug}', [BookController::class,'destroy']);
    Route::get('book-deleted',[BookController::class,'deletedBook']);
    Route::get('book-restore/{slug}',[BookController::class,'restore']);
    

    Route::get('categories', [CategoryController::class,'index']);
    Route::get('category-add',[CategoryController::class,'add']);
    Route::post('category-add',[CategoryController::class,'store']);
    Route::get('category-edit/{slug}',[CategoryController::class,'edit']);
    Route::put('category-edit/{slug}',[CategoryController::class,'update']);
    Route::get('category-delete/{slug}',[CategoryController::class,'delete']);
    Route::get('category-destroy/{slug}',[CategoryController::class,'destroy']);
    Route::get('category-deleted',[CategoryController::class,'deletedCategory']);
    Route::get('category-restore/{slug}',[CategoryController::class,'restore']);
    Route::post('category-import',[CategoryController::class,'import'])->name('category.import');
    
    Route::get('category-export',[CategoryController::class,'export'])->name('category.export');
    
    Route::get('writers', [WriterController::class,'index']);
    Route::get('writer-add',[WriterController::class,'add']);
    Route::post('writer-add',[WriterController::class,'store']);
    Route::get('writer-edit/{slug}',[WriterController::class,'edit']);
    Route::put('writer-edit/{slug}',[WriterController::class,'update']);
    Route::get('writer-delete/{slug}',[WriterController::class,'delete']);
    Route::get('writer-destroy/{slug}',[WriterController::class,'destroy']);
    Route::get('writer-deleted',[WriterController::class,'deletedWriter']);
    Route::get('writer-restore/{slug}',[WriterController::class,'restore']);

    Route::post('writer-import',[WriterController::class,'import']);
    Route::get('writer-export',[WriterController::class,'export']);

    Route::get('users', [UserController::class,'index']);
    Route::get('registered-users', [UserController::class,'registeredUser']);
    Route::get('user-detail/{slug}', [UserController::class,'show']);
    Route::get('user-approve/{slug}', [UserController::class,'approve']);
    Route::get('user-ban/{slug}', [UserController::class,'delete']);
    Route::get('user-destroy/{slug}', [UserController::class,'destroy']);
    Route::get('user-banned', [UserController::class,'bannedUser']);
    Route::get('user-restore/{slug}', [UserController::class,'restore']);

    Route::post('user-import', [UserController::class,'import']);
    Route::get('user-export', [UserController::class,'export']);


    Route::get('book-rent',[BookRentController::class,'index']);
    Route::post('book-rent',[BookRentController::class,'store']);

    Route::get('rent-logs', [RentLogController::class,'index']);
    
    Route::get('book-return', [BookRentController::class,'returnBook']);
    Route::post('book-return', [BookRentController::class,'saveReturnBook']);
      
});
});