USE papyrus;/* selectioner une base de donné */
-- 1. Quelles sont les commandes du fournisseur 09120?
SELECT numcom, numfou FROM entcom
WHERE numfou = 9120
-- 2. Afficher le code des fournisseurs pour lesquels des commandes ont été passées.
SELECT DISTINCT numfou as 'Numéro de fournisseur' FROM entcom /* AS(alias) permet de renomer le nom de collone */
-- 3. Afficher le nombre de commandes fournisseurs passées, et le nombre de fournisseur concernés.
SELECT COUNT(numcom) AS 'Numéro de Commande ', COUNT(DISTINCT numfou) as 'Numero de fournisseurs' FROM entcom /* DISTINCT permet d'éviter les redondances */
GROUP BY numfou /* sans GROUP BY tout aurait été additionné (Numéro de Commande 10 | Numéro de fournisseurs 6) mais ça reste une la bonne réponse à la mission 3  */
-- 4 Editer les produits ayant un stock inférieur ou égal au stock d'alerte et dont la quantité annuelle est inférieure à 1000 (informations à fournir : n° produit, libelléproduit, stock, stockactuel d'alerte, quantitéannuelle)
SELECT codart, libart, stkale, stkphy, qteann FROM produit WHERE stkphy <= stkale AND qteann < 1000
-- 5. Quels sont les fournisseurs situés dans les départements 75 78 92 77 ? L’affichage (département, nom fournisseur) sera effectué par département décroissant, puis par ordre alphabétique
SELECT nomfou, substring(posfou,1,2) as 'Départements' FROM fournis /* substring() permet de segmenter/d’extraire une partie de   */
WHERE substring(posfou,1,2) in ('75', '78', '92', '77')/*  ORDER BY permet de trier les lignes dans ordre données */
ORDER BY posfou desc, nomfou /*  ORDER BY permet de trier les lignes dans ordre données */
-- 6. Quelles sont les commandes passées au mois de mars et avril?
SELECT datcom FROM entcom
WHERE (MONTH)datcom = 3 OR (MONTH)datcom = 4
--7. Quelles sont les commandes du jour qui ont des observations particulières ?(Affichage numéro de commande, date de commande)
SELECT numcom, obscom, datcom FROM entcom WHERE 
WHERE obscom = NOT NULL***

