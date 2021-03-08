<!DOCTYPE html>
<html lang="fr" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Exercice d'application 1</title>
<body>
    <div class="container">
        <header>
            <!-- START of logo -->
            <div class="row">
                <div class="col d-none d-lg-block">
                    <a href="index.html"><img src="public/img/jarditou_logo.jpg" alt="logo" height="50" width="150"></a>
                </div>
                <div class="col d-none d-lg-block">
                    <h1 class="text-right pr-5">Tout le jardin</h1>
                </div>
            </div>
            <!-- END logo/START navbar -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="index.html">Jarditou.com</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.html">Accueil<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="tableau.html">Tableau</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Contact</a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="text" placeholder="Votre promotion">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
                    </form>
                </div>
            </nav>
            <!-- END navbar  -->
            <div>
                <img class="img-fluid" src="public/img/promotion.jpg" alt="promotion">
            </div>
        </header>
        <!-- END header -->