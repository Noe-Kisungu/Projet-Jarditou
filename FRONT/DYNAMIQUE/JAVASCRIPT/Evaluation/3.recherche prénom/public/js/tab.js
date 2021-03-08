var tableau = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
function tabMod() {
   var prenom = document.getElementById("in").value; // Sélectionner l'élément de input et récupérer sa valeur
   if(tableau.includes(prenom, [0])){// cherche à partir de l'index 0 - on se demande si il y a une corespondance entre l'entré du champs et le tableau
     var ind //declare une variable qui sera l'index
    ind = tableau.indexOf(prenom)//Ind donne la position du prenom dans le tableau
    tableau.splice(ind, 1);//Supp l'endroit ou se trouve l'indice corespondant
    tableau.push(" ");// on pousse le blank
    console.log(tableau);
    document.getElementById("noname").innerHTML = tableau;

  } else {
    document.getElementById('notfound').style.color = "red";
    document.getElementById("notfound").innerHTML = 'Ne correspond à aucun nom';
  }

}

