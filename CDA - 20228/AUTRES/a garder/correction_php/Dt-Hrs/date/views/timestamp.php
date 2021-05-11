<?php
include '../controllers/timestampController.php';
?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Timestamp</title>
</head>
<body>
<p>
    Le timestamp 1000200000 correspond à la date : <?= $timestamp->format('d/m/Y') ?>.
</p>
<p>
    C'est le jour de l'attentat sur les tours jumelles.
</p>
</body>
</html>
