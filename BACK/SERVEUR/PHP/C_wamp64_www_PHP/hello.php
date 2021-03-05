<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello</title>
</head>
<body>
<?php 
    /*Test*/ 
      echo "<h1>Bonjour le monde<h1>"; 
      echo "<h3> Aujourd'hui le ". date('d / M / Y H:m:s')."</ h3><hr />";
      echo "<h2>Bienvenue sur le site PHP 7</h2>";
      echo "<h4>La date et l’heure affichées ici sont celles du serveur et non pas celle de votre ordinateur(comme le ferait JavaScript.)</h4>";

      echo "<h4>02 - LES VARIABLES ET LES TYPES</h4>";
    //Les "variables variables"
      $var1 = "bonjour";
      $$var1 = "le monde"; 
      echo $bonjour;
    //var_dump indique dans quel fichier on se trouve (ansi que nom, type, valeur, longueur/nombre d'éléments si tableau).
      $myVar = "bonjour";
      var_dump($myVar);
    //La fonction error_log()
       $myVar = "KO";

       if ($myVar == "OK") 
       {   
       echo"C'est bon<br>";
       } 
       else 
       {
       echo"Ouh la la pas bien !<br>"; // Message affiché dans la page web
       $message = "Ouh la la pas bien".__FILE__." ".__LINE__; // Message enregistré dans le fichier 'C:/wamp/logs/php_error.log' 
       error_log($message); 
       } 
    //Les fonctions printf et sprintf
       $euro = 6.55957;
  printf("%.2f FF<br />",$euro);

  $money1 = 68.75;
  $money2 = 54.35;
  $money = $money1 + $money2;

  echo $money; // affiche 123.1;

  echo "affichage sans printf : ".$money."<br>";

  $monformat = sprintf("%01.2f", $money);

  echo $monformat; // affiche 123.10

  echo "affichage avec printf : ".$monformat."<br>";

  $year = "2002";
  $month = "4";
  $day = "5";

  $date = sprintf("%04d-%02d-%02d", $year, $month, $day);

  echo $date."<br>"; // affichera "2002-04-05"
  echo "affichage avec sprintf : ".$date."<br>";
    //La portée d'une variable  - deux déclarations : global et static
     //  global
        $a = $b = 2; 

        function somme() { 
        global $a, $b; 
        $b = $a + $b; 
        } 

        somme(); 

        echo $b."<br>"; 
      // static
        function Test1() { 
            static $a=0; 
            echo "$a<br>"; 
            $a++; 
         } 
         // Appel de la fonction (2 fois)
         Test1(); 
         Test1(); 
         Test1();
         
         echo "<h4>03 - LES OPÉRATEURS</h4>";
         $a = "Winter"; 
         echo $a . " is coming !";
         echo "<h4>02 - LES INSTRUCTIONS CONDITIONNELLES</h4>";
       // Opérateur de condition ternaire
         $age = 15; 

        (($age >= 18) ? $reponse="majeur" : $reponse="mineur"); 

         echo "Vous êtes ".$reponse. "."."<br>";
       //condition ternaire plus concise  
         $age = 18;
         echo "Vous êtes ".(($age >= 18) ? "majeur" : "mineur"). ".";
         
         echo "<h4>03 - LES BOUCLES</h4>";
      //FOR -- L'instruction FOR reste plus compacte dans son code.
         for ($a = 1; $a < 10; $a++) { //$iInitialisation de variable; condition; incrémentation++
         echo $a."<br>"; //instructions
         } 
     //WHILE -- L'instruction WHILE est une boucle qui s'exécute tant que la condition est vraie.
         $a = 1; 

         while ($a < 10) { //while ( condition ) { 
         echo $a; //Instuctions ; 
         $a++; //}
         } 
     //DO .. WHILE--L'instruction do .. while est similaire à while à une exception près, la condition est vérifiée à la fin de la boucle.
        $a = 0; 

         do { 
         echo "<br>".$a."<br>";;  
         } while ($a > 0); 

          echo "<h4>05 - LES FONCTIONS</h4>";
          // ...
          echo "<h4>* - TÉLÉCHARGEMENT DE FICHIER EN PHP </h4>";
          //https://www.youtube.com/watch?v=kkkQoGEzP0w
          // ...
          echo "<h4>* - LES TABLEAUX</h4>";
      // Manipulation des tableaux associatifs
          $facture = array("Janvier"=>500, "Février"=>620, "Mars"=>300, "Avril"=>130, "Mai"=>560, "Juin"=>350); 
          $facture_sixmois=0; 
      
          foreach ($facture as $mois => $valeur) 
          { 
             echo "Facture du mois de $mois : $valeur Euros<br>"; 
             $facture_sixmois +=$valeur; //ce qui fait $valeur+$valeur(on aditione le tout)
          } //L'instruction foreach permet d'extraire un couple (clé, valeur) à chaque tour de boucle. 
          echo "Facture total de six mois : <b>$facture_sixmois Euros</b><br>"; 
       //***SORT - La fonction sort()
           $nom = array("franck","laurent","caroline","magali","veronique");   
           sort($nom);

           for ($nb1=0;$nb1<=count($nom)-1; $nb1++) 
           {
           echo "$nom[$nb1]<br>";
           }
       //***RSORT (=desc)- La fonction rsort(array);
           $nom = array("franck","laurent","caroline","magali","veronique");
           rsort($nom);
   
           for ($nb1=0;$nb1<=count($nom)-1; $nb1++) 
           {
           echo "$nom[$nb1]<br>";
           }
       //***COUNT - La fonction count()
            $tableau = array("Lundi","Mardi","Mercredi", "Jeudi", "Vendredi"); 
            $nb = count($tableau); //Retourne le nombre d'éléments d'un tableau.
            echo"Le tableau contient ".$nb." éléments."; //Affiche 5 (5 éléments dans le tableau).
       //***ARRAY_PUSH() - La fonction array_push();
            $tableau = array("Lundi","Mardi","Mercredi","Jeudi"); 
            array_push($tableau, "Vendredi"); //Cette instruction permet d'ajouter un élément à la fin du tableau.
            /******POUR LA SUITE? CE REFEREER AU CH08 SUR LES TABLEAUX********/
            
            echo "<h4>06 - LES FORMULAIRES</h4>";
            //Pour eviter que les données soit affiché dans l'URL = not GET but POST!

           // *****FONCTIONS UTILE********/

          //empty — Détermine si une variable est vide
            if (empty($_POST["nom"])) 
            {
                echo "Le nom doit être renseigné<br>";
            }

        //strlen — Calcule la taille d'une chaîne
           $str1 = 'abcdef';
            echo strlen($str1)."<br>"; // 6
            //OU
            $str2 = ' ab cd ';
            echo strlen($str2)."<br>"; // 7
        //preg_match()	Recherche si une chaîne de caractère est contenue dans une autre (ex. recherche si ABCDE contient BCD). Peut rechercher via des expressions régulières
        
            if (preg_match("/[BCD]/","ABCDEF"))
            { 
              echo "Trouvé<br>"; 
            } 
            else
            {
              echo "potrouvé";
            }
            //Renvoie 1 (TRUE) si touvé, 0 (FALSE) sinon
        // isset — Détermine si une variable est déclarée et est différente de null
        // Ceci est vrai, alors le texte est affiché
           if (isset($var)); { echo 'Cette variable existe, donc je peux l\'afficher.'; } //Ceci est vrai, alors le texte est affiché

             

          ?> 
</body>
</html>