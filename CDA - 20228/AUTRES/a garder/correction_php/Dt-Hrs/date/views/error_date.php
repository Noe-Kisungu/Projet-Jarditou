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
    <title>Date erronée</title>
</head>
<body>
<p>la date 32/17/2019 est <?= ($error['error_count'] !== 0 || $error['warning_count'] !== 0) ? 'erronée' : 'correct' ?></p>
</body>
</html>
