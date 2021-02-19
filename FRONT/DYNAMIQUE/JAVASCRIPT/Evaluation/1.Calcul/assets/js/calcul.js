/*Il s'agit de dénombrer les personnes d'âge strictement inférieur à 20 ans, les personnes d'âge strictement supérieur à 40 ans et celles dont l'âge est compris entre 20 ans et 40 ans (20 ans et 40 ans y compris).
Le programme doit demander les âges successifs.
Le comptage est arrêté dès la saisie d'un centenaire. Le centenaire est compté.
Donnez le programme Javascript correspondant qui affiche les résultats.*/
var age=null;

var jn=0, moys=0, vx=0;//Parce que ça commence toujours de 0
i=0
console.log(age)
while(age<100){//
  age=prompt("Entrez différents âges (exemple: 39) et nous vous indiquerons combien il y a de jeunes(-20 ans), de moyens (20-40) et de vieux (+40 ans). \n Le comptage s'arrête dès la saisie d'un centenaire(compté également). ")
  age=parseInt(age)
  i++// nb de d'age entrés
if (age < 20 && age>0){
 jn++
} else if  (age >= 20 && age <= 40){
  moys++
} else if(age > 40){
  vx++
}
 //<--si on met le document.write dans la boucle, il va l'afficher à chaque tour de boucle
}
document.write ("Il y a " +jn+ " jeunes <br> ") 
document.write ("Il y a " +moys+ " moyens <br> ")
document.write ("Il y a " +vx+ " vieux ")