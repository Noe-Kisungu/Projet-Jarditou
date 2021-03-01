USE DATABASE northwind;/* selectioner une base de donné afin de la manipuler  */

-- 1 - Liste des contacts français :
SELECT CompanyName AS "Société", ContactName AS "contact" , ContactTitle AS "Fonction", Phone AS "Téléphone" FROM customers
WHERE Country = "France"
-- 2 - Produits vendus par le fournisseur « Exotic Liquids » :
SELECT  productName AS "Produit", UnitPrice AS "Prix" FROM products, suppliers
WHERE   products.SupplierID = suppliers.SupplierID 
AND     CompanyName = "Exotic Liquids"

-- 3 - Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant :
SELECT      CompanyName AS "Fournisseurs", COUNT(ProductId) AS "Nb produit" FROM suppliers, products
WHERE       products.SupplierId = suppliers.SupplierId 
AND         suppliers.country = "France" 
GROUP BY    Fournisseur
ORDER BY    Nbre_Produits desc
-- 4 - Liste des clients Français ayant plus de 10 commandes :
SELECT      CompanyName AS "Client", COUNT(DISTINCT orders.OrderID) AS "commandes" FROM customers, orders, orderdetails
WHERE       customers.CustomerID = orders.CustomerID AND orders.orderID = orderdetails.OrderID 
AND         customers.country = "France"
GROUP BY    Client
HAVING      commandes>10

-- 5 - Liste des clients ayant un chiffre d’affaires > 30.000 :

-- 6 - Liste des pays dont les clients ont passé commande de produits fournis par « Exotic Liquids » :


-- 7 - Montant des ventes de 1997 :

-- 8 - Montant des ventes de 1997 mois par mois :


-- 9 - Depuis quelle date le client « Du monde entier » n’a plus commandé ?

-- 10 - Quel est le délai moyen de livraison en jours ?
