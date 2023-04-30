<?php

// PagesController routes
$router->get('/','PagesController@home');

/** User routes */
$router->get('users/show','UsersController@showOneUser');
$router->get('users','UsersController@showUsers');
$router->get('users/edit','UsersController@showEditUserPage');
$router->get('delete','UsersController@delete');
$router->post('user/edit','UsersController@update');

$router->get('/students','UsersController@getStudents');

/** Auth routes */
$router->get('register','AuthController@showRegisterForm');
$router->get('/login','AuthController@showLoginPage');
$router->get('/logout','AuthController@logout');

$router->post('register','AuthController@register');
$router->post('login','AuthController@login');

/** Classes routes */
$router->get('/classes','ClassesController@showClasses');

// Movies routs
$router->get('movies','MoviesController@showMovies');
$router->get('movies/show','MoviesController@showOneMovie');
$router->get('movies/edit','MoviesController@showEditMoviePage');
$router->post('movies/edit','MoviesController@update');
$router->get('movies/delete','MoviesController@deleteMovie');
$router->post('movies/insert', 'MoviesController@insert');





//api routes
$router->get('api/movies',"MoviesController@getMoviesApi");
$router->get('api/genres','MoviesController@getGenresApi');
$router->get('api/moviesByGenre','MoviesController@getMovieId');