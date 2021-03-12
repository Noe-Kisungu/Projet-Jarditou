<?php
include("entete.php"); // Inclure l'en-tête dans le fichier tableau.php
require "connexion_bdd.php"; // Inclusion de notre bibiothèque de fonctions

$requete = "SELECT * FROM produits"; // Requête pour sélectionner tous les produits
$result = $pdo->query($requete); // $db est l'objet retourné par l'appel à PDO, query() est une méthode de cet objet (c'est-à-dire, au sens programmation, une fonction de l'objet). La flèche -> permet d'accéder (appeler) une méthode ou une propriété (attribut) de l'objet.
// $db->query($requete) revient à appeler la fonction query() de l'objet $db en lui passant la requête SQL en argument. Le résultat $db->query() est stocké dans un objet $result.
$produit = $result->fetch(PDO::FETCH_OBJ); // pour lire le contenu de ce résultat (qui pourrait contenir plusieurs lignes), PHP propose la méthode fetch() (= ramener). Ici, la méthode fetch(PDO::FETCH_OBJ) renvoie l'enregistrement sous la forme d'un objet (dont les propriétés contiennent les différents champs), ou FALSE s'il n'y a plus de lignes. Indirectement, cela signifie que vous ne pouvez accéder aux données que par leur nom de colonne et non par leur numéro.

?>
<!--  bande d'accueil de la page panier (card bootstrap)  -->
<div class="card">
    <div class="card-header bg-warning">
        <h1>Mon panier</h1>
    </div>
    <div class="card-body">
        <p class="card-text">Ici se trouvent les articles mis dans votre panier afin de procéder à leur achat plus tard.
        </p>
    </div>
</div>

<div class="row">
    <!--Pour que le tableau soit bien aligné avec la bannière  -->

    <div class="table-responsive">
        <!-- Pour que le tableau soit en responsive -->


        <!-- Bordure de tous les côtés de la table et des cellules et ajout de zébrures sur une ligne sur deux du tableau -->
        <table class="table table-bordered table-striped">
            <thead align="center">
                <tr>
                    <th>Photos</th>
                    <th>ID</th>
                    <th>Référence</th>
                    <th>Libellé</th>
                    <th>Prix</th>
                    <th>Stock</th>
                    <th>Couleur</th>
                    <th>Ajout</th>
                    <th>Modif</th>
                    <th>Bloqué</th>
                </tr>
            </thead>
        </table>
    </div>
</div>
<?php


if ($result->rowCount() == 0) 
{
   // Pas d'enregistrement
   echo "Vous n'avez actuellement aucun article dans votre panier.<br> Rendez-vous rubrique <a href='tableau.php'>Tableau</a> pour en ajouter";
}
?>

<?php
include("pieddepage.php");// Inclusion du pied de page
?>


<!-- <?php if (tableau != 0 ) 
{ 
?>
Tableau

<?php// }
else 
{ echo pas de tabelau}
?> -->