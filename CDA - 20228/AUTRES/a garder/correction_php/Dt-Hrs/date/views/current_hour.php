<?php
include '../controllers/current_hourController.php';
?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Heure courante</title>
</head>
<body>
<p>Heure actuelle : <?= $hour ?>h<?= $min ?></p>
</body>
</html>
