<?php

use Illuminate\Http\Request;

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

Route::post('auth/login', 'Api\AuthController@login');

Route::group(['middleware'=>['apiJwt']],function(){
    Route::post('auth/logout', 'Api\AuthController@logout');
    Route::post('auth/me', 'Api\AuthController@me');
    Route::get('users','Api\UserController@index');
    Route::get('products','Api\ProductController@index')->name('index_products');
    Route::post('products','Api\ProductController@store')->name('store_products');
    Route::get('categories','Api\CategoryController@index')->name('index_categories');
    Route::get('/products/{id}','Api\ProductController@show')->name('single_products');
    Route::put('/products/{id}','Api\ProductController@update')->name('update_products');
    Route::delete('/products/{id}','Api\ProductController@delete')->name('delete_products');

});

