DROP DATABASE IF EXISTS hotelx;/* Suppresion de la base de données si elle existe */

CREATE DATABASE hotelx; /* Creation de la base de données */
USE hotelx; /* On va sur cette base de données pour la manipuler */

CREATE TABLE station(
num_station INT(11) NOT NULL PRIMARY KEY, /* <-- Ceci est une colonne, elle contiendra des valeurs (VALUES) qu'elle va a`ligner`*/
nom_station varchar(50) NOT NULL /* On peut metre NOT NULL quand sa ne peut pas etre null */
);

CREATE TABLE hotel(
capacite_hotel INT(5) NOT NULL,
categorie_hotel varchar(30),
nom_hotel varchar(50) NOT NULL,
adresse_hotel varchar(50) NOT NULL,
num_hotel INT  NOT NULL PRIMARY KEY,
num_station INT NOT NULL
);

CREATE TABLE chambre( 

capacite_chambre INT NOT NULL, 
degre_confort INT NOT NULL,
exposition varchar(50),
type_chambre INT NOT NULL,
num_chambre Int NOT NULL PRIMARY KEY,
num_hotel Int NOT NULL
);

CREATE TABLE client(
adresse_client varchar(50),
nom_client varchar(50) NOT NULL,
prenom_client varchar(30) NOT NULL,
num_client INT NOT NULL PRIMARY KEY
);

CREATE TABLE reservation(
num_chambre Int NOT NULL,
num_client INT  NOT NULL,
date_fin DATETIME,
date_reservation DATETIME,
montant_arrhes DECIMAL(6,2),
prix_total DECIMAL(6,2),
FOREIGN KEY(num_chambre) REFERENCES chambre(num_chambre),
FOREIGN KEY(num_client) REFERENCES client(num_client)
);