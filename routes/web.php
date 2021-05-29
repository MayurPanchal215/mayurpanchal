<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', function () {
    return redirect()->route('login');
})->name('login');

Auth::routes();

Route::get('/logout', [App\Http\Controllers\Auth\LoginController::class, 'logout'])->name('logout');

Route::group(['middleware' => ['language','shopowner']], function () {
	Route::get('/home', [App\Http\Controllers\ProductController::class, 'index'])->name('home');
	Route::get('product/getList', [App\Http\Controllers\ProductController::class, 'getList'])->name('product.list');
	Route::get('product/getsubcat', [App\Http\Controllers\ProductController::class, 'getSubCategory'])->name('product.subcategory.list');
	Route::resource('product', App\Http\Controllers\ProductController::class)->except('show');
});

Route::group(['middleware' => ['language','user.product']], function () {
	Route::get('/productlist', [App\Http\Controllers\ProductShopController::class, 'index'])->name('productlist');
	Route::get('productdata/getList', [App\Http\Controllers\ProductShopController::class, 'getList'])->name('productdata.list');
	Route::get('productdata/getproductdetail', [App\Http\Controllers\ProductShopController::class, 'getProductDetails'])->name('productdata.detailspage');
});