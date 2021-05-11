<?php
// définition du fuseau horaire si pas définis dans le php.ini
date_default_timezone_set('Europe/Paris');
// instancioation de l'objet datetime à la date courant
$date = new DateTime();
// formatage de l'heure
$hour = $date->format('H');
$min = $date->format('i');