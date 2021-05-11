<?php

$date = new DateTime();

$timestamp = $date->setTimestamp(1000200000);
$result = $timestamp->format('d/m/Y');

