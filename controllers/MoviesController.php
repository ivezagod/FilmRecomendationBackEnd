<?php

namespace App\Controllers;

use App\Core\App;

class MoviesController
{
    public function getMoviesApi()
    {

        $movies = App::get('database')->selectAll('movies');


        echo json_encode($movies);
    }

    public function getGenresApi()
    {

        $genres = App::get('database')->selectAll('genres');

        echo json_encode($genres);
    }

    public function getMovieId()
    {

        $genre_id= $_GET['genre_id'];
        $params = [
            'genre_id'=> $genre_id
        ];

         $movies =App::get('database')->selectAllByField("movies",$params);

         echo json_encode($movies);


    }



    public function showMovies()
    {
        check_auth();

        $movies = App::get('database')->selectAll('movies');

        return view('Allmovies',compact('movies'));
    }

    public function showOneMovie()
    {
        check_auth();

        $id = $_GET['id'];
        // contact db and get a user
        $movie = App::get('database')->selectOne('movies',$id);

        return view('movie',compact('movie'));
    }


    public function showEditMoviePage()
    {
        check_auth();

        $id = $_GET['id'];
        $movie = App::get('database')->selectOne('movies',$id);

        return view('movieEdit',compact('movie'));
    }

    public function update()
    {
        check_auth();

        $id = $_POST['id'];

        $data = [
            'id'=>$id,
            'title'=>$_POST['title'],
            'description'=>$_POST['description']
        ];

        $movies = App::get('database')->selectOneByField('movies', ['id'=>$id]);


        App::get('database')->update('movies',$data);

        return redirect('/movies');
    }


    public function deleteMovie()
    {
        check_auth();

        $id = $_GET['id'];
        $movie = App::get('database')->selectOneByField('movies',['id'=>$id]);


        App::get('database')->delete('movies',$id);

        redirect("/movies");
    }
    public function insert()
    {
        check_auth();


        App::get('database')->insert('movies',[
                        'title'=>$_POST['title'],
            'description'=>$_POST['description'],
            'genre_id'=>$_POST['genre_id'],
            'Url'=>$_POST["Url"],
            'runtime'=>$_POST["runtime"]
        ]);

        return redirect('/movies');
    }





}