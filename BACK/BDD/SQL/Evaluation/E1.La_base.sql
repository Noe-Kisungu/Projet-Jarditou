CREATE DATABASE IF NOT EXISTS exo1; /* Creation de la base de données si elle n'existe pas */
USE exo1;/* On va sur cette base de données pour la manipuler */
CREATE TABLE `Client` (/* creatrion d'une table */
`cli_num` INT NOT NULL PRIMARY KEY,
`cli_nom` varchar(50),
`cli_adresse`varchar(50),
`cli_tel` varchar(30)
);


CREATE TABLE `Produit` (
`pro_num` INT PRIMARY KEY,
`pro_libelle` varchar(50),
`pro_description` varchar(50)  
);


CREATE TABLE `Commande` (
`com_num` INT NOT NULL PRIMARY KEY,
`cli_num` INT NOT NULL,
`com_date` DATETIME NOT NULL,
`com_obs` varchar(50),
FOREIGN KEY (cli_num) REFERENCES Client(cli_num)
);


CREATE TABLE `est_compose` (
`com_num` INT NOT NULL ,
`pro_num` INT NOT NULL ,
`est_qte` INT NOT NULL ,
FOREIGN KEY (com_num) REFERENCES Commande(com_num),
FOREIGN KEY (pro_num) REFERENCES Produit(pro_num)
);

CREATE INDEX cli_nom ON Client (cli_nom); /*L’index est utile pour accélérer l’exécution d’une requête SQL*/