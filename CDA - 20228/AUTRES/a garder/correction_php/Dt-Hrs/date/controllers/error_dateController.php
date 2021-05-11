<?php
try {
    $date = new DateTime('2019-17-32');
} catch (Exception $e) {
    $error = DateTime::getLastErrors();
}
