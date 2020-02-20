<?php

Route::get('/', 'HomeController@index')->name('home');

// USUARIOS //

Route::get('/usuarios', 'UserController@index')
    ->name('users.index');

Route::get('/usuarios/{user}', 'UserController@show')
    ->where('user', '[0-9]+')
    ->name('users.show');

Route::get('/usuarios/nuevo', 'UserController@create')->name('users.create');

Route::post('/usuarios', 'UserController@store');

Route::get('/usuarios/{user}/editar', 'UserController@edit')->name('users.edit');

Route::put('/usuarios/{user}', 'UserController@update');

Route::get('/saludo/{name}/{nickname?}', 'WelcomeUserController');

Route::delete('/usuarios/{user}', 'UserController@destroy')->name('users.destroy');

Route::get('/home', 'HomeController@index')->name('home');

// JUEGOS DE ROL //

Route::get('/juegos', 'GameController@index')
    ->name('games.index');

Route::get('/juegos/{game}', 'GameController@show')
    ->where('game', '[0-9]+')
    ->name('games.show');

Route::get('/juegos/nuevo', 'GameController@create')->name('games.create');

Route::post('/juegos', 'GameController@store');

Route::get('/juegos/{game}/editar', 'GameController@edit')->name('games.edit');

Route::put('/juegos/{game}', 'GameController@update');

Route::delete('/juegos/{game}', 'GameController@destroy')->name('games.destroy');

// EDITORIALES //

Route::get('/editorials', 'EditorialController@index')
    ->name('editorials.index');

Route::get('/editorials/{editorial}', 'EditorialController@show')
    ->where('editorial', '[0-9]+')
    ->name('editorials.show');

Route::get('/editorials/nuevo', 'EditorialController@create')->name('editorials.create');

Route::post('/editorials', 'EditorialController@store');

Route::get('/editorials/{editorial}/editar', 'EditorialController@edit')->name('editorials.edit');

Route::put('/editorials/{editorial}', 'EditorialController@update');

Route::delete('/editorials/{editorial}', 'EditorialController@destroy')->name('editorials.destroy');

Auth::routes();
