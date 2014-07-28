<?php

Route::get('/test', 'PagesController@home');

Route::get('/', function()
{
    return View::make('hello');
});

Route::get('/name', function()
{
    $name = 'Walter';
    return View::make('test')->with('name', $name);
});


Route::get('/users', 'UsersController@index');





