// Javascript
 // -------LES CONDITION-------
var a;
 
a = parseInt(prompt("6+6"));


if (a==6) { // Comparaison
    alert("Bien essayé !");
}

else if (a!=12) {
    alert("Dommage !");
}

else {
    alert("correct !");
}

// -------INCREMENTATION ET DECREMEMENTATION-------

var number = 100;
number = number + 4400;
number++;// Affiche : « 1+ (Incremente l'element qui le precéde)»
number--;// Affiche : « -1 »
++number;// Affiche : « 1+ »
alert(number);

// -------EXEMPLE DE LA BOUCLE WHILE-------

var nicks = '',
nick,
proceed = true;
while (proceed) {
nick = prompt('Entrez un prénom :');
if (nick) {
nicks += nick + ' '; // Ajoute le nouveau prénom ainsi qu'une
// espace juste après
} else {
proceed = false; // Aucun prénom n'a été entré, donc on fait en
// sorte d'invalider la condition
}
}
alert(nicks); // Affiche les prénoms à la suite

// -------EXEMPLE COMPLEXE ( ET RARE) DE LA BOUCLE WHILE-------

var prenoms = '',
prenom;
while (true) {
prenom = prompt('Entrez un prénom :');
if (prenom) {
prenoms += prenom + ' '; // Ajoute le nouveau prénom ainsi qu'une
// espace juste après
} else {
break; // On quitte la boucle
}
}
alert(prenoms); // Affiche les prénoms à la suite

// -------EXEMPLE D'UNE BOUCLE WHILE D'INCREMENTATION-------
for (var iter = 0; iter < 5; iter++) {
    alert('Itération n°' + iter);
    }

// -------EXEMPLE D'UNE BOUCLE WHILE UTILISé SANS INCREMENTATION------- 

for (var prenoms = '', prenom; true;) {
    prenom = prompt('Entrez un prénom :');
    if (prenom) {
    prenoms += prenom + ' ';// Une histoire de chaine de caractère devenue booléens

    } else {
    break;
    }
    }
    alert(prenoms);
