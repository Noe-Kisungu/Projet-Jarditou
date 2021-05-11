<?php
// instanciation de l'objet DateTime, selon une date donnée (au format anglosaxon)
$date = new DateTime('2019-07-14');
// recherche du numéro de la semaine de la date donnée
$week = $date->format('W');
