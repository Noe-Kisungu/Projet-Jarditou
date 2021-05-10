<?php
function complex_password($string)
{
    $upper = false;
    $lower = false;
    $int = false;
    // découpage de la chaine de caractère et stockage de chaque caractère dans un tableau
    $split_str = str_split($string);
    // si la chaine de caractère est trop courte
    if (count($split_str) < 8) {
        $msg['short'] = 'Mot de passe trop court';
    } else {
        // boucle pour analyser chaque caractère
        foreach ($split_str as $char) {
            // si on a pas encore rencontré de majuscule
            if ($upper === false) {
                // si le caractère est une majuscule
                if (ctype_upper($char)) {
                    $upper = true;
                    $msg['upper'] = '';
                } else {
                    $msg['upper'] = 'Il n\'y a pas de majuscule dans votre mot de passe';
                }
            }
            // si on a pas encore rencontré de minuscule
            if ($lower === false) {
                // si le caractère est une minuscule
                if (ctype_lower($char)) {
                    $lower = true;
                    $msg['lower'] = '';
                } else {
                    $msg['lower'] = 'Il n\'y a pas de minuscule dans votre mot de passe';
                }
            }
            // si on a pas encore rencontré d'entier
            if ($int === false) {
                // si le caractère est un chiffre
                if (ctype_digit($char)) {
                    $int = true;
                    $msg['int'] = '';
                } else {
                    $msg['int'] = 'Il n\'y a pas de chiffre dans votre mot de passe';
                }
            }
        }
        // si chaque condition est vérifié
        if ($upper === true && $lower === true && $int === true) {
            $msg['ok'] = 'Mot de passe OK !!';
        }
    }
    return $msg;
}
$message = complex_password('');
var_dump($message);