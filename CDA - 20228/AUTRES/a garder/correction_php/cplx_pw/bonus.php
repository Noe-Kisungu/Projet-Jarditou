<?php
// une fonction qui vérifie le niveau de complexité d'un mot de passe sans regex et sans preg_match
function complex_password($password){
    if(is_string($password) && strlen($password)>=8){
        $resultat = count_chars($password, 1);
        $chiffre = false;
        $majuscule = false;
        $minuscule = false;
        foreach ($resultat as $j => $val) {
            if(48<=$j && $j<=57){
                $chiffre = true;
                continue;
            }
            if(65<=$j && $j<=90){
                $majuscule = true;
                continue;
            }
            if(97<=$j && $j<=122){
                $minuscule = true;
                continue;
            }
        }
        if($chiffre && $minuscule && $majuscule){
            return true;
        }
    }
    else{
        return false;
    }
}

//IntlChar::islower