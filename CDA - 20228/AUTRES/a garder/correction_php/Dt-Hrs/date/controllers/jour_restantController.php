<?php
//instanciation de l'objet Datetime à la date courante
$today = new DateTime();
//instanciation de l'objet Datetime à la date de fin de formation
$end = new DateTime('2021-12-10');
// calcule de la différence entre les 2 dates
$interval = $today->diff($end);