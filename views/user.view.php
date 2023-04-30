<?php require "partials/head.php" ?>

    <link rel="stylesheet" href="../nav.css">
    <link rel="stylesheet" href="../movieViewStyle.css">
<?php require "partials/nav.php" ?>

<h1>User view page</h1>

<p>This user is <?= $user->name ?></p>
<p>Email: <?= $user->email ?></p>
<a href="/users/edit?id=<?= $user->id?>">Edit user</a>

<?php require "partials/footer.php" ?>