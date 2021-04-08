--1)Afficher toutes les informations concernant les employés
Select * from employe
--2)Afficher toutes les nom des départements. 
USE exemple ;
SELECT nom from dept; 
--3)Afficher le nom, la date d'embauche, le numéro du supérieur, le numéro de département et le salaire de tous les employés. 
USE exemple;
SELECT employe.nom, dateemb, nosup, nodept, salaire from employe, dept;
--Changer ces titres en utilisant AS. 
SELECT nom AS Employe FROM emp ;
SELECT nom AS "Nom de l'employé" FROM emp ;
--4)Afficher le titre de tous les employés. 
SELECT titre FROM employe;  
--5)Afficher les différentes valeurs des titres des employés.
SELECT DISTINCT titre FROM employe; 
--6)Afficher le nom, le numéro d'employé et le numéro du département des employés dont le titre est « Secrétaire »
SELECT nom, noemp, nodep from employe WHERE titre = 'Secrétaire';
--7) Afficher le nom et le numéro de département dont le numéro de département est supérieur à 40
SELECT nom, nodep from employe WHERE nodep >= 40;
--8)Afficher le nom et le prénom des employés dont le nom est alphabétiquement antérieur au prénom. 