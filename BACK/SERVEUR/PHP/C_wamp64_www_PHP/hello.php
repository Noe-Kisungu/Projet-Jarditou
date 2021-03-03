<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Initiation</title>
</head>
<body>
<?php 
    /*Test*/ 
      echo "Bonjour le monde"; 
      echo "<h3> Aujourd'hui le ". date('d / M / Y H:m:s')."</ h3><hr />";
      echo "<h2>Bienvenue sur le site PHP 7</h2>";
      echo "<h4>La date et l’heure affichées ici sont celles du serveur et non pas celle de votre ordinateur(comme le ferait JavaScript.)</h4>";

      echo "<h4>02 - Les variables et les types</h4>";
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
         
         echo "<h4>03 - Les opérateurs</h4>";
         $a = "Winter"; 
         echo $a . " is coming !";
         echo "<h4>02 - Les instructions conditionnelles</h4>";
       // Opérateur de condition ternaire
         $age = 25; 

        (($age >= 18) ? $reponse="majeur" : $reponse="mineur"); 

         echo "Vous êtes ".$reponse. ".";
       //condition ternaire plus concise  
         $age = 25;
         echo "Vous êtes ".(($age >= 18) ? "majeur" : "mineur"). ".";
         
         echo "<h4>03 - Les boucles</h4>";
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

          echo "<h4>05 - Les fonctions</h4>";


  
  ?> 
</body>
</html>