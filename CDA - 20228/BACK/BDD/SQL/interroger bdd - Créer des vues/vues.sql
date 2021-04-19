--Exercice 1 : vues sur la base hotel
--1)Afficher la liste des hôtels avec leur station
CREATE VIEW v_station_hotel
AS
SELECT hot_nom, sta_nom FROM hotel JOIN station ON hot_sta_id=sta_id 
ET
SELECT * FROM v_station_hotel
--2)Afficher la liste des chambres et leur hôtel
CREATE VIEW v_chambres_hotel
AS
SELECT cha_numero, hot_nom FROM chambre JOIN hotel ON cha_hot_id=hot_id 
ET
SELECT * FROM v_chambres_hotel
--3)Afficher la liste des réservations avec le nom des clients
CREATE VIEW v_reservation_client
AS
SELECT res_date, cli_nom, cli_prenom FROM reservation JOIN client ON res_cli_id=cli_id 
ET
SELECT * FROM v_reservation_client
--4)Afficher la liste des chambres avec le nom de l’hôtel et le nom de la station
CREATE VIEW v_chambres_hotel_station
AS
SELECT cha_numero, hot_nom, sta_nom FROM chambre JOIN hotel ON cha_hot_id=hot_id JOIN station ON hot_sta_id=sta_id 
ET
SELECT * FROM v_chambres_hotel_station
--5)Afficher les réservations avec le nom du client et le nom de l’hôtel
CREATE VIEW v_reservation_client_hotel
AS
SELECT res_id, res_date, cli_nom, cli_prenom, hot_nom FROM reservation JOIN client ON res_cli_id=cli_id JOIN chambre ON res_cha_id=cha_id JOIN hotel ON cha_hot_id=hot_id  
ET
SELECT * FROM v_reservation_client_hotel

--Exercice 2 : vues sur la base papyrus
--1)v_GlobalCde correspondant à la requête : A partir de la table Ligcom, afficher par code produit, la somme des quantités commandées et le prix total correspondant : on nommera la colonne correspondant à la somme des quantités commandées, QteTot et le prix total, PrixTot.
CREATE VIEW v_GlobalCde 
AS                                                                                           
SELECT codart AS "code de l'article", SUM(qtecde) AS "QteTot", priuni*qtecde AS "PrixTot" FROM ligcom GROUP BY codart
--2)v_VentesI100 correspondant à la requête : Afficher les ventes dont le code produit est le I100 (affichage de toutes les colonnes de la table Vente).

CREATE view v_ventesi100 
AS
SELECT * FROM ventes WHERE codart='i100'
--3)A partir de la vue précédente, créez v_VentesI100Grobrigan remontant toutes les ventes concernant le produit I100 et le fournisseur 00120.
CREATE view v_VentesI100Grobrigan
AS
SELECT * FROM v_ventesi100 WHERE numfou=120
