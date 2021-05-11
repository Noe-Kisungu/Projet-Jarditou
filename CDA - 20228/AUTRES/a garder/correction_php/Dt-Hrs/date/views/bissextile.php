<?php
include '../controllers/demoController.php';
?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Année bissextile</title>
</head>
<body>
<p>l'année <?= $year ?> est <?= $bissextile === 1 ? 'bissextile' : 'non-bissextile' ?></p>
</body>
</html>
