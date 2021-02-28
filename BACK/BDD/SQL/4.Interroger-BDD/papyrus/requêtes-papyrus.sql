USE papyrus;/* SELECTioner une base de donné */
-- 1. Quelles sont les commandes du fournisseur 09120?
SELECT numcom, numfou FROM entcom
WHERE  numfou = 9120
-- 2. Afficher le code des fournisseurs pour lesquels des commandes ont été passées.
SELECT DISTINCT numfou AS 'Numéro de fournisseur' FROM entcom /* AS(alias) permet de renomer le nom de collone */
-- 3. Afficher le nombre de commandes fournisseurs passées, et le nombre de fournisseur concernés.
SELECT COUNT(numcom) AS 'Numéro de Commande ', COUNT(DISTINCT numfou) AS 'Numero de fournisseurs' FROM entcom /* DISTINCT permet d'éviter les redondances */
GROUP BY numfou /* sans GROUP BY tout aurait été additionné (Numéro de Commande 10 | Numéro de fournisseurs 6) mais ça reste une la bonne réponse à la mission 3  */
-- 4 Editer les produits ayant un stock inférieur ou égal au stock d'alerte et dont la quantité annuelle est inférieure à 1000 (informations à fournir : n° produit, libelléproduit, stock, stockactuel d'alerte, quantitéannuelle)
SELECT codart, libart, stkale, stkphy, qteann 
FROM   produit 
WHERE  stkphy <= stkale ANDqteann < 1000
-- 5. Quels sont les fournisseurs situés dans les départements 75 78 92 77 ? L’affichage (département, nom fournisseur) sera effectué par département décroissant, puis par ordre alphabétique
SELECT nomfou, substring(posfou,1,2) AS 'Départements' FROM fournis /* substring() permet de segmenter/d’extraire une partie de   */
WHERE  substring(posfou,1,2) in ('75', '78', '92', '77')/*  ORDER BY permet de trier les lignes dans ordre données */
ORDER BY posfou desc, nomfou /*  ORDER BY permet de trier les lignes dans ordre données */
-- 6. Quelles sont les commandes passées au mois de mars et avril?
SELECT datcom FROM entcom
WHERE (MONTH)datcom = 3 OR (MONTH)datcom = 4
SELECT numcom AS 'commandes Mars-Avril'
FROM   entcom 
WHERE  month(datcom) BETWEEN 03 AND04
--7. Quelles sont les commandes du jour qui ont des observations particulières ?(Affichage numéro de commande, date de commande)
SELECT numcom, obscom, datcom FROM entcom 
WHERE  obscom is NOT NULL
AND    obscom <> " "
AND    obscom <> "" 
/* OU*/
SELECT numcom AS "N° commande", datcom AS "date de commande"
FROM   entcom 
WHERE  obscom is NOT NULL
AND    obscom <> " "
AND    obscom <> ""
-- 8. Lister le total de chaque commande par total décroissant (Affichage numéro de commande et total)
SELECT   nomfou AS "Fournisseurs", ligcom.numcom, SUM(qtecde * priuni) AS "TOTAL"
FROM     ligcom
JOIN     entcom ON ligcom.numcom = entcom.numcom
JOIN     fournis ON entcom.numfou = fournis.numfou
GROUP BY ligcom.numcom
ORDER BY SUM(QTECDE * PRIUNI) desc
-- 9.  Lister les commandes dont le total est supérieur à 10000€; on exclura dans le calcul du total les articles commandés en quantité supérieure ou égale à 1000.(Affichage numéro de commande et total)
SELECT   nomfou AS "Fournisseurs", ligcom.numcom AS "N° commande", SUM(QTECDE * PRIUNI) AS "TOTAL"
FROM     ligcom
JOIN     entcom ON ligcom.numcom = entcom.numcom
JOIN     fournis ON entcom.numfou = fournis.numfou
WHERE    qtecde<1000  
GROUP BY ligcom.numcom
HAVING   TOTAL>10000
ORDER BY TOTAL DESC
-- 10. Lister les commandes par nom fournisseur (Afficher le nom du fournisseur, le numéro de commande et la date)
SELECT      nomfou AS "Fournisseurs", entcom.numcom AS "N° commande", datcom AS "date de commande"
FROM        entcom
JOIN        fournis ON entcom.numfou = fournis.numfou
GROUP BY    numcom
ORDER BY 	nomfou
-- 11. Sortir les produits des commandes ayant le mot "urgent' en observation?(Afficher le numéro de commande, le nom du fournisseur, le libellé du produit et le sous total= quantité commandée * Prix unitaire)
SELECT      nomfou AS "Fournisseurs", 
            libart AS "libellé-article", ligcom.codart AS "code-art", 
            ligcom.numcom AS "N° commande", sum(qtecde*priuni) AS "sous-total"
FROM        ligcom
JOIN        entcom ON ligcom.numcom = entcom.numcom
JOIN        fournis ON entcom.numfou = fournis.numfou
JOIN        produit ON ligcom.codart = produit.codart
WHERE       obscom like "%urgent%"
GROUP BY 	ligcom.numcom, nomfou, libart
-- 12. Coder de 2manières différentes la requête suivante:Lister lenom desfournisseurs susceptibles de livrer au moins un article
SELECT DISTINCT     nomfou AS "Fournisseurs"
FROM        fournis
JOIN        entcom ON fournis.numfou = entcom.numfou
JOIN        ligcom ON entcom.numcom = ligcom.numcom
WHERE       qteliv < qtecde
/* OU*/
SELECT DISTINCT nomfou
FROM            fournis,entcom,ligcom
WHERE           fournis.numfou=entcom.numfou 
AND             entcom.numcom=ligcom.numcom 
AND             qtecde > qteliv  
-- 13. Coder de 2 manières différentes la requête suivanteLister les commandes (Numéro et date) dont le fournisseur est celui de la commande 70210
SELECT      numcom AS "N° commande", datcom AS "date de commande"
FROM        entcom
JOIN        fournis ON entcom.numfou = fournis.numfou
WHERE       entcom.numfou = (
                                SELECT      entcom.numfou
                                FROM        entcom
                                WHERE       entcom.numcom = 70210
                            )
/* OU*/
SELECT      numcom, datcom 
FROM        entcom 
WHERE       numfou = (
    SELECT          numfou 
    FROM            entcom 
    WHERE           numcom = 70210
)
-- 14. Dans les articles susceptibles d’être vendus, lister les articles moins chers (basés sur Prix1) que le moins cher des rubans (article dont le premier caractère commence par R). On affichera le libellé de l’article et prix1
SELECT      vente.codart, libart, prix1
FROM        vente, produit
WHERE       produit.codart=vente.codart
AND         vente.prix1 < (SELECT MIN(prix1) FROM vente WHERE vente.codart LIKE "R%")
GROUP BY    codart
-- 15. Editer la liste des fournisseurs susceptibles de livrer les produits dont le stock est inférieur ou égal à 150 % du stock d'alerte. La liste est triée par produit puis fournisseur
SELECT      fournis.nomfou AS "Fournisseurs", 
            vente.numfou AS "N° Fournisseurs", 
            produit.libart AS "libellé-article", 
            vente.codart AS "code-art"
FROM        fournis, produit, vente
WHERE 	    fournis.numfou = vente.numfou
AND         produit.codart = vente.codart
AND         produit.stkphy<=1.5*produit.stkale
GROUP BY    vente.codart, nomfou
ORDER BY    vente.codart, nomfou
-- 16. Éditer la liste des fournisseurs susceptibles de livrer les produit dont le stock est inférieur ou égal à 150 % du stock d'alerte et un délai de livraison d'au plus 30 jours. La liste est triée par fournisseur puis produit
SELECT      fournis.nomfou AS "Fournisseurs", 
            vente.numfou AS "N° Fournisseurs", 
            produit.libart AS "libellé-article", 
            vente.codart AS "code-art"
FROM        fournis, produit, vente
WHERE 	    fournis.numfou = vente.numfou
AND         produit.codart = vente.codart
AND         produit.stkphy<=1.5*produit.stkale
AND         delliv<=30
GROUP BY    vente.codart, nomfou
ORDER BY    vente.codart, nomfou
-- 17. Avec le même type de sélection que ci-dessus, sortir un total des stocks par fournisseur trié par total décroissant
SELECT      sum(produit.stkphy) AS stock, fournis.nomfou AS "Fournisseurs", fournis.numfou AS "N° Fournisseurs"
FROM        vente, fournis, produit
WHERE       produit.codart=vente.codart
AND		    vente.numfou = fournis.numfou
GROUP BY    nomfou
ORDER BY    stock desc
-- 18. En fin d'année, sortir la liste des produits dontla quantité réellement commandée dépasse 90% de la quantité annuelleprévue.
SELECT      ligcom.codart AS "produits dont la quantité commandée dépasse 90% de la quantité annuelle prévue", 
            produit.libart AS "libellé-article"
FROM        ligcom, produit
WHERE       qtecde>0.9*qteann
AND         ligcom.codart=produit.codart
GROUP BY    ligcom.codart
-- 19.Calculer le chiffre d'affaire par fournisseur pour l'année 93 sachant que les prix indiqués sont hors taxes et que le taux de TVA est 20% 
SELECT      sum(qtecde*priuni*1.2) AS TOTAL, nomfou AS "Fournisseurs"
FROM        ligcom, fournis, entcom
WHERE       ligcom.numcom = entcom.numcom
AND         entcom.numfou = fournis.numfou
AND         year(datcom) = 2018
GROUP BY    nomfou
ORDER BY 	TOTAL desc


-- LES BESOINS DE MISE A JOUR
-- A- Application d'une augmentation de tarif de 4% pour le prix 1, 2% pour le prix2 pour le fournisseur 9180
update  vente
SET     prix1 = prix1*1.04 , prix2= prix2*1.02
WHERE   numfou=9180
-- B- Dans la table vente, mettre à jour le prix2 des articles dont le prix2 est null, en affectant a valeur de prix.
update  vente
SET     prix2=prix1
WHERE   prix2=0
-- C- Mettre à jour le champ obscom en positionnant '*****' pour toutes les commandes dont le fournisseur a un indice de satisfaction <5
update  entcom, fournis
SET     obscom="*****"
WHERE   entcom.numfou = fournis.numfou
AND     fournis.satisf<5
-- D- Suppression du produit I110
DELETE FROM  produit
WHERE        codart = "I110";