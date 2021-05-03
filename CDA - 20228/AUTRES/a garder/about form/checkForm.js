/* Déclaration des Regexp qui permettront la validation - ou non- du formulaire
 Récupération avec la const form qui permet l'utilisation du onclick, plus bas*/
const form = document.getElementById('submit');
const formReset = document.getElementById('reset');
// Regexp pour l'organisation  : caractères interdits : guillemets, chevrons, parenthèses, slash, arobase
const forganisation = new RegExp(/^[^"<>@/()]+$/g);
/* Regexp pour l'email : pattern sur principe du "tout autorisé sauf apostrophe guillemets chevrons espaces arobase" puis arobase puis "tout autorisé sauf apostrophe guillemets chevrons arobase espaces" puis
point puis "tout autorisé sauf apostrophe guillemets chevrons espaces arobase"*/
const femail = new RegExp(/^[^'"<>@ ]+@+[^'"<>@ ]+\.[^'"<>@ ]+$/g);
//Regex pour l'objet : tout autorisé sauf chevrons guillemets et apostrophes, avec une taille max de 50 caractères (pas besoin de + ici)
const fobject = new RegExp(/^[^'"<>]{1,50}$/g);
// regex pour le message, même qu'au dessus sans la limitation de caractères
const fmessage = new RegExp(/^[^<>'"]+$/g);
/* fonction qui check le formulaire, appelée via le clique sur le bouton envoyer*/
form.onclick = function() {
    /* la variable qui sera utilisée comme variable de retour : set sur "true", deviendra false a la moindre erreur dans le formulaire et empêchera l'envoi d'icelui*/
    let bool = true;
    /*les variables récupérant les valeurs des champs du formulaire*/
    let organisation = document.getElementById('organisation').value;
    let email = document.getElementById('email').value;
    let object = document.getElementById('object').value;
    let message = document.getElementById('message').value;
    /* vérifie que le champ organisation n'est pas null / vide*/
    if (organisation == "" || organisation == null) {
        document.getElementById('errOrganisation').innerHTML = "<div class='alert alert-warning col-12'>Tous les champs sont obligatoires! Vous devez entrer votre organisation.</div>";
        document.getElementById('organisation').style.borderColor = "red";
        bool = false;
    }
    /* compare la valeur du champ organisation avec la regex préparée et déclarée plus haut (forganisation ici)*/
    else if (!organisation.match(forganisation)) {
        document.getElementById('errOrganisation').innerHTML = "<div class='alert alert-danger col-12'>Pas de guillemets, d'apostrophes, de parenthèses, de barre oblique ('/'), de points, de chiffres, d'arobases ou de chevrons('<' ou '>').</div>";
        document.getElementById('organisation').style.borderColor = "red";
        bool = false;
    }
    // vide le message d'erreur, passe le cadre au vert
    else {
        document.getElementById('errOrganisation').innerHTML = "";
        document.getElementById('organisation').style.borderColor = "limegreen";
    }
    /* vérifie que le champ email n'est pas null / vide*/
    if (email == "" || email == null) {
        document.getElementById('errEmail').innerHTML = "<div class='alert alert-warning col-12'>Tous les champs sont obligatoires! Vous devez entrer votre email.</div>";
        document.getElementById('email').style.borderColor = "red";
        bool = false;
    }
    /* compare la valeur du champ email avec la regex préparée et déclarée plus haut (ici femail)*/
    else if (!email.match(femail)) {
        document.getElementById('errEmail').innerHTML = "<div class='alert alert-danger col-12'>Pas de guillemets, d'apostrophes, d'espaces ou de chevrons('<' ou '>').</div>";
        document.getElementById('email').style.borderColor = "red";
        bool = false;
    }
    // vide le message d'erreur, passe le cadre au vert
    else {
        document.getElementById('errEmail').innerHTML = "";
        document.getElementById('email').style.borderColor = "limegreen";
    }
    /* vérifie que le champ de l'objet n'est pas null / vide*/
    if (object == "" || object == null) {
        document.getElementById('errObject').innerHTML = "<div class='alert alert-warning col-12'> Tous les champs sont obligatoires! Vous devez préciser l'objet de votre message</div>";
        document.getElementById('object').style.borderColor = "red";
        bool = false;
    }
    /* compare la valeur du champ de l'objet avec la regex préparée et déclarée plus haut(ici fobject)*/
    else if (!object.match(fobject)) {
        document.getElementById('errObject').innerHTML = "<div class='alert alert-danger col-12'>Pas de guillemets, d'apostrophes ou de chevrons('<' ou '>').</div>";
        document.getElementById('object').style.borderColor = "red";
        bool = false;
    }
    // vide le message d'erreur, passe le cadre au vert
    else {
        document.getElementById('errObject').innerHTML = "";
        document.getElementById('object').style.borderColor = "limegreen";
    }
    /* vérifie que le champ message n'est pas null / vide*/
    if (message == "" || message == null) {
        document.getElementById('errMessage').innerHTML = "<div class='alert alert-warning col-12'> Tous les champs sont obligatoires! Faites moi part de votre message ici.</div>";
        document.getElementById('message').style.borderColor = "red";
        bool = false;
    }
    /* compare la valeur du champ message avec la regex préparée et déclarée plus haut (ici fmessage)*/
    else if (!message.match(fmessage)) {
        document.getElementById('errMessage').innerHTML = "<div class='alert alert-danger'>Pas de guillemets ou de chevrons('<' ou '>').</div>";
        document.getElementById('message').style.borderColor = "red";
        bool = false;
    }
    // vide le message d'erreur, passe le cadre au vert
    else {
        document.getElementById('errMessage').innerHTML = "";
        document.getElementById('message').style.borderColor = "limegreen";
    }
    /* retour de la variable bool qui permet ou non l'envoi du formulaire*/
    return bool;
};
formReset.onclick = function() {
    document.getElementById('errMessage').innerHTML = "";
    document.getElementById('errObject').innerHTML = "";
    document.getElementById('errEmail').innerHTML = "";
    document.getElementById('errOrganisation').innerHTML = "";
};
