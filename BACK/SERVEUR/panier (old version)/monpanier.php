<?php
include("entete.php"); // Inclure l'en-tête dans le fichier tableau.php
require "connexion_bdd.php"; // Inclusion de notre bibiothèque de fonctions
//————il auras juste à ajouter l'id du produit dans la SESSION du panier
$_SESSION['panier'] = array(0);// Creation d'une session de pannier avec deja deux produit dedans

//————Creation d'un boucle pour convertir le tableau de la session en string pour la requete qui suit
$string = "";
foreach($_SESSION['panier'] as $key => $val){
  if($string != ""){
    $string .= ", ";
  }
  $string .= $val;
}


$requete = "SELECT * FROM produits WHERE pro_id IN (".$string.")"; //———— Requête pour sélectionner tous les produits
$result = $pdo->query($requete); // $db est l'objet retourné par l'appel à PDO, query() est une méthode de cet objet (c'est-à-dire, au sens programmation, une fonction de l'objet). La flèche -> permet d'accéder (appeler) une méthode ou une propriété (attribut) de l'objet.
// $db->query($requete) revient à appeler la fonction query() de l'objet $db en lui passant la requête SQL en argument. Le résultat $db->query() est stocké dans un objet $result.
$produit = $result->fetchAll(); // pour lire le contenu de ce résultat (qui pourrait contenir plusieurs lignes), PHP propose la méthode fetch() (= ramener). Ici, la méthode fetch(PDO::FETCH_OBJ) renvoie l'enregistrement sous la forme d'un objet (dont les propriétés contiennent les différents champs), ou FALSE s'il n'y a plus de lignes. Indirectement, cela signifie que vous ne pouvez accéder aux données que par leur nom de colonne et non par leur numéro.
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


        




<?php
//————Test si il y a bien des produits qui correspondent aux pro_id du pannier
if (!empty($produit)) { 
?>
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
            <tboby>
            <?php
            //————boucle pour afficher les produits du panier
            foreach($produit as $rowProduit){?>
              <tr>
                    <th>Photos</th>
                    <th><?php echo $rowProduit['pro_id']; ?></th> <!--——  Il prend les identifiants -->
                    <th>Référence</th>
                    <th>Libellé</th>
                    <th>Prix</th>
                    <th>Stock</th>
                    <th>Couleur</th>
                    <th>Ajout</th>
                    <th>Modif</th>
                    <th>Bloqué</th>
                    
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>
</div>

<?php }
else 
{ echo "<p class='text-center'>Vous n'avez actuellement aucun article dans votre panier.<br>Rendez-vous rubrique <a id='lienTableau' href='tableau.php' class='text-primary'>Tableau</a> pour en ajouter.</p>";}
?> 


<?php
     if(isset($_SESSION["panier"])) {
        ?>
        <!-- Quand on clique sur le bouton supprimer on exécute le script du fichier -->
<a href="panier_supprimes.php?pro_id=<?php= $produit->pro_id?>" class="btn btn-danger btn-block m-0" onclick="return confirm('Etes-vous certain(e) de vouloir vider votre panier ?')">Vider le panier</a>
        
        <?php
    }
    ?>
<?php
include("pieddepage.php");// Inclusion du pied de page
?>