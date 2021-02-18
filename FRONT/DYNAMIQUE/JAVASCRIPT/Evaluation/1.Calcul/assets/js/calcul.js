var age=null;

var jn=0, moys=0, vx=0;//Parce que sa commence tjrs de 0
i=0
console.log(age)
while(age<=100){
  age=prompt("entrez un age")
  age=parseInt(age)
  i++// nb de d'age entrés
if (age < 20 && age>=0){
 jn++
}

if (age >= 20 && age <= 40){
  moys++
 }

 if (age > 40){
  vx++
 }
 //<--si on met le document.write dans la boucle, il va l'afficher à chaque tours de boucle
}
document.write ("Il y a " +jn+ " jeunes <br> ") 
document.write ("Il y a " +moys+ " moyens <br> ")
document.write ("Il y a " +vx+ " vieux ")