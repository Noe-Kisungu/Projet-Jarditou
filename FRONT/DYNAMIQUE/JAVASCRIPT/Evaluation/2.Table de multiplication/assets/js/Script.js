// var Tm1, Tm2, Tm3, Tm4, Tm5, Tm6, Tm7, Tm8, Tm9, Tm10;
var nb
function mulTable(nb) {
    document.getElementById("tm")
    nb = prompt("Quelle table voulez-vous connaitre ?")
    var i//le compteur
    var table
    nb = parseInt(nb)//parseInt pour les entiers
    for (i = 1; i <= 10; i++) {//il commence à partir de 1 et doit s'arrêter à 10
        table = i * nb
        document.write(i + " fois " + nb + " = " + table + "<br>")
    }
}
    





