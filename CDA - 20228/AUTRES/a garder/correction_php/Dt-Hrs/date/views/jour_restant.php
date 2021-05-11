<?php
include '../controllers/jour_restantController.php';
?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Nombre de jour restant avant  la fin de formation</title>
</head>
<body>
<p>La formation se termine le 12/10/2021</p>
<p>Il reste donc <?= $interval->days ?> jours avant la fin de cette formation</p>
</body>
</html>
