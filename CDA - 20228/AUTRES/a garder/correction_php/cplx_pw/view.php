<?php
include_once '../controllers/regexController.php';
?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Regex</title>
</head>
<body>
<p><?= isset($message['short']) ? $message['short'] : ''?></p>
<p><?= isset($message['upper']) ? $message['upper'] : ''?></p>
<p><?= isset($message['lower']) ? $message['lower'] : ''?></p>
<p><?= isset($message['int']) ? $message['int'] : ''?></p>
<p><?= isset($message['ok']) ? $message['ok'] : ''?></p>
</body>
</html>