USE DATABASE hotel;/* selectioner une base de donné */
--Lot 1 SELECT - FROM - WHERE - AND 
-- 1 - Afficher la liste des hôtels. Le résultat doit faire apparaître le nom de l’hôtel et la ville
SELECT hot_nom, hot_ville FROM hotel
-- 2 - Afficher la ville de résidence de Mr White Le résultat doit faire apparaître le nom, le prénom, et l'adresse du client
SELECT cli_nom, cli_prenom, cli_adresse FROM client
WHERE cli_nom = 'White'
-- 3 - Afficher la liste des stations dont l’altitude < 1000 Le résultat doit faire apparaître le nom de la station et l'altitude
SELECT sta_nom, sta_altitude FROM station
WHERE sta_altitude < 1000 
-- 4 - Afficher la liste des chambres ayant une capacité > 1 Le résultat doit faire apparaître le numéro de la chambre ainsi que la capacité
SELECT cha_numero, cha_capacite FROM chambre
WHERE cha_capacite > 1 
-- 5 - Afficher les clients n’habitant pas à Londre Le résultat doit faire apparaître le nom du client et la ville
SELECT cli_nom, cli_ville FROM client
WHERE cli_ville != 'Londre'
-- 6 - Afficher la liste des hôtels située sur la ville de Bretou et possédant une catégorie>3 Le résultat doit faire apparaître le nom de l'hôtel, ville et la catégorie
SELECT hot_nom, hot_ville, hot_categorie FROM hotel
WHERE hot_ville = 'Bretou' AND hot_categorie > 3

--Lot 2 JOIN 
-- 7 - Afficher la liste des hôtels avec leur station Le résultat doit faire apparaître le nom de la station, le nom de l’hôtel, la catégorie, la ville
SELECT sta_nom, hot_nom, hot_categorie, hot_ville FROM hotel, station;
SELECT sta_nom, hot_nom, hot_ville, hot_categorie FROM hotel INNER JOIN station;
-- 8 - Afficher la liste des chambres et leur hôtel Le résultat doit faire apparaître le nom de l’hôtel, la catégorie, la ville, le numéro de la chambre
SELECT hot_nom, hot_categorie, hot_ville, cha_numero FROM chambre, hotel;
-- 9 - Afficher la liste des chambres de plus d'une place dans des hôtels situés sur la ville de Bretou Le résultat doit faire apparaître le nom de l’hôtel, la catégorie, la ville, le numéro de la chambre et sa capacité
SELECT hot_nom, hot_categorie, hot_ville, cha_numero, cha_capacite FROM hotel, chambre
WHERE cha_capacite>1;
-- 10 - Afficher la liste des réservations avec le nom des clients Le résultat doit faire apparaître le nom du client, le nom de l’hôtel, la date de réservation
SELECT cli_nom, hot_nom, date_res FROM client, hotel, reservation;
-- 11 - Afficher la liste des chambres avec le nom de l’hôtel et le nom de la station Le résultat doit faire apparaître le nom de la station, le nom de l’hôtel, le numéro de la chambre et sa capacité
SELECT sta_nom, hot_nom, cha_numero, cha_capacite
FROM chambre
JOIN  hotel on cha_hot_id = hot_id /* cha_hot_id est une FK de chambre et hot_id est la PK de hotel */
JOIN station on hot_sta_id = sta_id; /* hot_sta_id est une FK de hotel et sta_id est la PK de station */
-- 12 - Afficher les réservations avec le nom du client et le nom de l’hôtel AVEC datediff Le résultat doit faire apparaître le nom du client, le nom de l’hôtel, la date de début du séjour et la durée du séjour
SELECT cli_nom, hot_nom, res_date_debut, DATEDIFF(res_date_fin, res_date_debut)
FROM reservation
JOIN client on res_cli_id = cli_id /* res_cli_id est la FK reservation et cli_id est une PK de client */
JOIN chambre on res_cha_id = cha_id
JOIN hotel on cha_hot_id = hot_id;/* cha_hot_id est une FK de chambre et hot_id est la PK de hotel */

--Lot 3
-- 13 - Compter le nombre d’hôtel par station
SELECT COUNT(hot_sta_id), sta_nom
FROM hotel
JOIN station on hot_sta_id = sta_id
GROUP BY sta_id*
-- 14 - Compter le nombre de chambre par station
SELECT COUNT(cha_id), sta_nom
from chambre
JOIN hotel on cha_hot_id = hot_id
JOIN station on hot_sta_id = sta_id
GROUP BY sta_id
-- 15 - Compter le nombre de chambre par station ayant une capacité > 1
SELECT COUNT(cha_id), sta_nom
from chambre
JOIN hotel on cha_hot_id = hot_id
JOIN station on hot_sta_id = sta_id
GROUP BY sta_id
where cha_capacité>1
-- 16 -Afficher la liste des hôtels pour lesquels Mr Squire a effectué une réservation
SELECT hot_nom, cli_nom
from reservation
JOIN client on res_cli_id = cli_id
JOIN chambre on res_cha_id = cha_id
JOIN hotel on cha_hot_id = hot_id
where cli_nom = "Squire"
-- 17 - Afficher la durée moyenne des réservations par station
SELECT AVG(datediff (res_date_fin, res_date_debut)), sta_nom
FROM reservation
JOIN chambre on res_cha_id = cha_id
JOIN hotel on cha_hot_id = hot_id
JOIN station on hot_sta_id = sta_id
GROUP BY sta_id

