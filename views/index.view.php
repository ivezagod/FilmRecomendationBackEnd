<?php require "partials/head.php" ?>
    <link rel="stylesheet" href="indexStyle.css">
<?php require "partials/nav.php" ?>

    <h1>Add a movie</h1>
    <form action="/movies/insert" method="POST" >
        <label for="id" hidden="">id</label>
        <input type="number" id="id" name="id" hidden="">
        <label for="title">Title:</label><br>
        <input type="text" id="title" name="title">

        <label for="description">Description:</label>
        <input  type="text" id="description" name="description"></input>

        <label for="genre_id">genre_id</label>
        <input type="number" name="genre_id" id="genre_id">

        <label for="Url">Url</label>
        <input type="text" id="Url" name="Url"></input>

        <label for="runtime">runtime</label>
        <input type="text" id="runtime" name="runtime">
        <button type="submit" > submit </button>
    </form>



<?php require "partials/footer.php" ?>