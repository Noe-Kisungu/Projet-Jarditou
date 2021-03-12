<!--Ici button Ajouter à mon panier -->

<?php

$pdoStat = $pdo->prepare("SELECT FROM produits WHERE pro_id=:pro_id");
$pdoStat->bindValue(":pro_id", $_GET['pro_id']); //Associe une valeur à un paramètre


/**
 * Ajout d'un article dans le panier
 *
 * @param array $select variable tableau associatif contenant les valeurs de l'article
 */
function ajout_panier($select)
{
    array_push($_SESSION['panier']['Photos'],$select['pro_id']);
    array_push($_SESSION['panier']['ID'],$select['pro_id']);
    array_push($_SESSION['panier']['Libellé'],$select['pro_ref']);
    array_push($_SESSION['panier']['Prix'],$select['pro_libelle']);
    array_push($_SESSION['panier']['Stock'],$select['pro_prix']);
    array_push($_SESSION['panier']['Couleur'],$select['pro_stock']);
    array_push($_SESSION['panier']['Ajout'],$select['pro_couleur']);
    array_push($_SESSION['panier']['prix'],$select['pro_d_ajout']);
    array_push($_SESSION['panier']['Modif'],$select['pro_d_modif']);
    array_push($_SESSION['panier']['Bloqué'],$select['pro_bloque']);
}
?>