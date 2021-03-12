<?php
require "connexion_bdd.php";
// $db = connexionBase();


function vider_panier()
{
    session_start();
    $vide = false;
    unset($_SESSION['panier']);
    if(!isset($_SESSION['panier']))
    {
        $vide = true;
    }
    return $vide;
}
?>


<?php
// $vider = vider_panier();
?>
<!-- <p>Panier <?php// echo($vider?"vidé":"encore plein"); ?>.</p> -->



<?php
$vider = vider_panier();
?>



<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Suppression panier</title>
</head>
<body>
    <p>Panier <?php echo($vider?"vidé":"encore plein"); ?>.</p>
</body>
</html>