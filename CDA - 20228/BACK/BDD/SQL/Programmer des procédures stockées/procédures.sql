--Exercice 1 : création d'une procédure stockée sans paramètre
DELIMITER |
CREATE PROCEDURE lst_fournis() 
BEGIN 
SELECT DISTINCT entcom.numfou AS "code des fournisseurs", nomfou AS "nom"
from            entcom 
join            fournis 
on              entcom.numfou = fournis.numfou;
END |
DELIMITER;
-- Pour obtenir des informations sur cette procédure stockée 
SHOW CREATE PROCEDURE lst_fournis;
-- Pour exécuter une procédure stockée, on l’appelle avec l’instruction CALL :
CALL lst_fournis;


--Exercice 2 : création d'une procédure stockée avec un paramètre en entrée
DELIMITER |
CREATE PROCEDURE lst_commandes(IN obs VARCHAR (50))
BEGIN 
SELECT obscom AS "Signalisations particulières"
FROM   entcom
WHERE  obscom LIKE CONCAT ('%',obs,'%');
END |
DELIMITER;
-- Pour exécuter une procédure stockée, on l’appelle avec l’instruction CALL :
CALL lst_commandes('comm');


--Exercice 3 : création d'une procédure stockée avec plusieurs paramètres
DELIMITER |
CREATE PROCEDURE ca_fournisseur( IN annee int, IN numfournisseur INT) 
BEGIN
if numfournisseur = ANY (SELECT numfou FROM fournis) then
select      sum(qtecde*priuni*1.2) as total
from        ligcom, fournis, entcom
where       ligcom.numcom = entcom.numcom
and         entcom.numfou = fournis.numfou
and         year(datcom) = annee
AND 		fournis.numfou = numfournisseur;
END if ;
END |
DELIMITER;
