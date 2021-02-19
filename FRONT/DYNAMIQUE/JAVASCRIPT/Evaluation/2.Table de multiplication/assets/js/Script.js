/*Ecrivez une fonction qui affiche une table de multiplication.
Votre fonction doit prendre un paramètre qui permet d'indiquer quelle table afficher.*/

// var Tm1, Tm2, Tm3, Tm4, Tm5, Tm6, Tm7, Tm8, Tm9, Tm10;
var nb
function mulTable(nb) {
    document.getElementById("tm")//il va aller prendre le button dans le html
    nb = prompt("Quelle table de multiplication voulez-vous apprendre aujourd'hui ?")
    var i//le compteur
    var table
    nb = parseInt(nb)//parseInt pour les entiers
    for (i = 1; i <= 10; i++) {//il commence à partir de 1 et doit s'arrêter à 10
        table = i * nb//le calcule à appliquer
        document.write(i + " * " + nb + " = " + table + "<br>")
    }
}
    





