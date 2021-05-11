<?php
// instanciation de l'objet Datetime à la date courante
$today = new DateTime();
// récupération de l'année, pour l'affichage
$year = $today->format('Y');
// on détermine si l'année en cour est bissextile ou non
$bissextile = $today->format('L');
