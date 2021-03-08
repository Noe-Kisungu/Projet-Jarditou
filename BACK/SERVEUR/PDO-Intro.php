<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PDO-Introduction</title>
</head>
<body>
<img class="pdo-picture" src="https://bpesquet.gitbooks.io/guide-developpeur-php/content/partie1/images/acces-bd/archi-pdo.png" alt="schéma de fonctionnement du pdo">

<?php 
   class Personne //CLASS - une classe est un moule grâce auquel nous allons créer autant d'objets de même type et de même structure qu'on le désire.
   {
  // ATTRIBUTS - Les « attributs » (aussi appelés « données membres ») sont les caractères propres à un objet (comme l'ADN).
     public $nom;//En POO, un attribut n'est ni plus ni moins qu'une variable.
     public $prenom;
     public $dateDeNaissance;
     public $taille;
     public $sexe;
  // Constantes
     const NOMBRE_DE_BRAS = 2;
     const NOMBRE_DE_JAMBES = 2;//une constante est déclarée avec le mot-clé const
     const NOMBRE_DE_YEUX = 2;
     const NOMBRE_DE_PIEDS = 2;//une constante doit être déclarée et initialisée avec sa valeur en même temps.
     const NOMBRE_DE_MAINS = 2;
  // METHODES - Les « méthodes » sont les "actions" que l'on peut appliquer à un objet. 
     public function __construct() { }//declaration du constructeur. Les classes qui possèdent une méthode constructeur appellent cette méthode à chaque création d'une nouvelle instance de l'obj
      
     public function boire()//S'agissant d'actions, il est conseillé de nommé les méthode avec un verbe à l'infinitif.
    {
      echo 'La personne boit<br/>';
    }
 
    public function manger()
    {
      echo 'La personne mange<br/>';
    }//(=déclaré 5 attributs publics, 5 constantes, 1 méthode constructeur et 2 méthodes classiques)
   }
          
          //...
?>
</body>
</html>