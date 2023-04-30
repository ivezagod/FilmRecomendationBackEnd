<?php require "partials/head.php" ?>
<link rel="stylesheet" href="../nav.css">
<link rel="stylesheet" href="../editMovie.css">
<?php require "partials/nav.php" ?>

<h1>Edit one user</h1>
<form action="/user/edit" method="post">
    <input type="number" name="id" value="<?= $user->id ?>" hidden>
    <label for="name">name</label>
    <input type="text" name="name" value="<?= $user->name ?>">
    <label for="email">email</label>
    <input type="text" name="email" value="<?= $user->email ?>">
    <button type="submit">Update</button>
</form>

<?php require "partials/footer.php" ?>
