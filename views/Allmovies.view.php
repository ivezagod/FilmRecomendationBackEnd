<?php
 require "partials/head.php" ?>
<link rel="stylesheet" href="moviesStyle.css">
<?php require "partials/nav.php" ?>

<h1>All users</h1>

<ul class="movies">
    <?php foreach ($movies as $movie): ?>
      <li>
          <?= $movie->id." - ".$movie->title . " - " . "</br>". $movie->description. "</br>"?>
          <a href="/movies/show?id=<?= $movie->id ?>">Show</a>
          <a href="/movies/delete?id=<?= $movie->id ?>">Delete</a>
      </li>
    <?php endforeach ?>
</ul>
<?php require "partials/footer.php" ?>
