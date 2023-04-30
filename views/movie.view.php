<?php
require "partials/head.php" ?>
    <link rel="stylesheet" href="../nav.css">
    <link rel="stylesheet" href="../movieViewStyle.css">
<?php require "partials/nav.php" ?>

    <h1>Movie view page</h1>

    <p>Title: <?= $movie->title ?></p>
    <p>duration: <?= $movie->runtime ?></p>
    <p>description: <?= $movie->description ?></p>
    <a href="/movies/edit?id=<?= $movie->id?>">Edit user</a>

<?php require "partials/footer.php" ?>