-- Créez trois utilisateurs util1, util2, util3 pour la base hotel
CREATE USER 'util1'@'123.45.67.01' IDENTIFIED BY '1Ksable';
CREATE USER 'util2'@'123.45.67.02' IDENTIFIED BY '2Ksable';
CREATE USER 'util3'@'123.45.67.03' IDENTIFIED BY '3Ksable';
-- util1 doit pouvoir effectuer toutes les actions
GRANT ALL PRIVILEGES ON hotel.* TO 'util1'@'%' IDENTIFIED BY '1Ksable';
-- util2 ne peut que sélectionner les informations dans la base
GRANT SELECT ON hotel.* TO 'util2'@'%'  IDENTIFIED BY '2Ksable';
-- util3 n'a aucun droit sur la base de données, sauf d'afficher la table station
GRANT SELECT ON hotel.station TO 'util3'@'%'  IDENTIFIED BY '3Ksable';

