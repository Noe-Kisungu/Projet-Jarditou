<?php
// instanciation de l'objet DateTime
$date = new DateTime();
// assignation d'un timestamp particulier
$timestamp = $date->setTimestamp(1000200000);
// formatage de la date
$result = $timestamp->format('d/m/y');
