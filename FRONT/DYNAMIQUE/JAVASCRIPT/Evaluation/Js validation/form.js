var zipc = new RegExp(/^[0-9]*$/);
var lettre = new RegExp(/^[A-Za-z]+$/);
var mixt = new RegExp (/^[A-Za-z0-9_-]*$/); 
// var lettre = new RegExp (/^[a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+)?$/);
function inspect(formulaire)//prend le formulaire par son `nom '()'
{// declaration des variable (sans oublier value)
  var nom = document.getElementById("nom").value;
  var postal = document.getElementById("postal").value;
  var address = document.getElementById("address").value;
  var ville = document.getElementById("ville").value;
  var prenom = document.getElementById("prenom").value;
  var Bool = true;

  if (nom == "")// si le champ est vide : affichage d'un message de notification
  {
    document.getElementById('nomerr').innerHTML = "le champ est vide!";
    document.getElementById('nomerr').style.color = "red"; //
    Bool = false;
    document.getElementById("nom").focus();
  }
  else if (!lettre.test(nom)) {
    document.getElementById('nomerr').style.color = "red";
    document.getElementById("nomerr").innerHTML = "Ne correspond pas au bon format";
    Bool = false;
    document.getElementById("nom").focus();//Afin de rediriger l'utilisateur sur le champ concerné
  }
  else {
    document.getElementById("nomerr").innerHTML = "";
  }


  if (prenom == "") {
    document.getElementById('prenomerr').style.color = "red";
    document.getElementById('prenomerr').innerHTML = "le champ est vide!";
    Bool = false;
    document.getElementById("prenom").focus();
  }
  else if (!lettre.test(prenom)) {
    document.getElementById('prenomerr').style.color = "red";
    document.getElementById("prenomerr").innerHTML = 'Ne correspond pas au bon format';
    Bool = false;
    document.getElementById("prenom").focus();
  }
  else {
    document.getElementById("prenomerr").innerHTML = '';
  }

  if (postal == "") {
    document.getElementById('postalerr').style.color = "red";
    document.getElementById('postalerr').innerHTML = "le champ est vide!";
    Bool = false;
    document.getElementById("postal").focus();
  }
  else if (!zipc.test(postal)) {
    document.getElementById('postalerr').style.color = "red";
    document.getElementById("postalerr").innerHTML = 'Ne correspond pas au bon format';
    Bool = false;
    document.getElementById("postal").focus();
  }
  else {
    document.getElementById("postalerr").innerHTML = '';
  }


  if (address == "") {
    document.getElementById('addresserr').style.color = "red";
    document.getElementById('addresserr').innerHTML = "le champ est vide!";
    Bool = false;
    document.getElementById("address").focus();
  }
  else if (!mixt.test(address)) {
    document.getElementById('addresserr').style.color = "red";
    document.getElementById("addresserr").innerHTML = 'Ne correspond pas au bon format';
    Bool = false;
    document.getElementById("address").focus();
  }
  else {
    document.getElementById("addresserr").innerHTML = '';
  }


  if (ville == "") {
    document.getElementById('villerr').style.color = "red";
    document.getElementById('villerr').innerHTML = "le champ est vide!";
    Bool = false;
    document.getElementById("ville").focus();
  }
  else if (!lettre.test(ville)) {
    document.getElementById('villerr').style.color = "red";
    document.getElementById("villerr").innerHTML = 'Ne correspond pas au bon format';
    Bool = false;
    document.getElementById("ville").focus();
  }
  else {
    document.getElementById("villerr").innerHTML = '';
  }


  return Bool
}




/* email, radio, checkbox, date, sujet et bloc de texte= pas de regex (laisser bootstrap gérer les contraintes avec required)
Inclure des regex et enlever required= nom, prenom, ville, adrrese, cp 
 */