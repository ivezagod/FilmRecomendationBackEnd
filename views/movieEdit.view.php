<?php require "partials/head.php" ?>
    <link rel="stylesheet" href="../nav.css">
    <link rel="stylesheet" href="../editMovie.css">
<?php require "partials/nav.php" ?>

    <h1>Edit one movie</h1>
    <form action="/movies/edit" method="post">
        <input type="number" name="id" value="<?= $movie->id ?>" hidden>
        <label for="title">Title</label>
        <input type="text" name="title" value="<?= $movie->title ?>">
        <label for="description">description</label>
        <input type="text" name="description" value="<?= $movie->description ?>">
        <label for="duration">duration</label>
        <input type="text" name="duration" value="<?= $movie->runtime ?>">
        <button type="submit">Update</button>
    </form>

<?php require "partials/footer.php" ?>