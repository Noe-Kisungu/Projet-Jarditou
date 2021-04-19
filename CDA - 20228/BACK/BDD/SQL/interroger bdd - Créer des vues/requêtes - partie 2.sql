--Rechercher le numéro du département, le nom du département, le nom des employés classés par numéro de département (renommer les tables utilisées). 
SELECT nodep as 'numéro de  département', dept.nom 'nom de département', employe.nom as "nom de l'employé" FROM employe JOIN dept ON nodep=nodept;  
--Rechercher le nom et le salaire des employés qui gagnent plus que leur patron, et le nom et le salaire de leur patron.
SELECT e1.nom as "nom de l'employé", e1.salaire as "salaire de l'employé", e2.nom as "nom du boss", e2.salaire as "salaire du boss" FROM employe as e1, employe as e2 WHERE e1.nosup = e2.noemp AND e1.salaire>e2.salaire
--Rechercher le nom, le salaire et le numéro de département des employés qui gagnent plus qu'un seul employé du département 31, classés par numéro de département et salaire.
SELECT nom, salaire, nodep FROM employe WHERE salaire>ANY (SELECT salaire FROM employe WHERE nodep=31) ORDER BY nodep, salaire
--Rechercher le nom et le titre des employés du service 31 qui ont un titre que l'on trouve dans le département 32
SELECT nom, titre FROM employe WHERE titre=ANY (SELECT titre FROM employe WHERE nodep=32)
--Rechercher le nom, le titre et le salaire des employés qui ont le même titre et le même salaire que Fairant.
SELECT nom, titre, salaire FROM employe WHERE titre =(SELECT titre FROM employe WHERE nom="Fairent") AND salaire = (SELECT salaire FROM employe WHERE nom="Fairent")
--Rechercher le numéro de département, le nom du département, le nom des employés, en affichant aussi les départements dans lesquels il n'y a personne, classés par numéro de département.
SELECT dept.nodept, dept.nom AS "nom du département", employe.nom AS "nom employé" from employe right join dept on nodep=nodept ORDER BY nodept
OU
SELECT dept.nodept, dept.nom , employe.nom from employe right join dept on nodep=nodept ORDER BY nodept
--rechercher la moyenne des salaires de chaque département 
SELECT nodep, AVG (salaire) FROM employe GROUP BY nodep;
--Afficher les lettres qui sont l'initiale d'au moins trois employés
SELECT LEFT(nom,1) AS initial FROM employe GROUP BY initial HAVING COUNT(initial)>=3
OU
SELECT LEFT(nom,1) AS initial FROM employe HAVING COUNT(initial)>=3
--Rechercher les titres et la moyenne des salaires par titre dont la moyenne est supérieure à la moyenne des salaires des Représentants.
SELECT titre, AVG(salaire) as moy FROM employe GROUP BY titre HAVING moy > (SELECT Avg(salaire) FROM employe WHERE titre = 'représentant')
