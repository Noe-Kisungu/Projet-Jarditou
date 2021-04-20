--Mise en place d'une règle de gestion
DELIMITER |
CREATE TRIGGER verif_pays AFTER INSERT ON order_details FOR EACH ROW
BEGIN
DECLARE pays_fou VARCHAR (15);
DECLARE pays_liv VARCHAR (15);
/*VARCHAR (15) selon le script_northwind, sinon si on veut englober tous les pays il est plus preferable d'utiliser VARCHAR (45).
On considère que le nom de pays le plus long est le "Royaume-Uni de Grande-Bretagne et d'Irlande du Nord" qui comporte 42 lettres.*/
DECLARE id_com INT;
DECLARE id_prod INT;
SET id_prod = NEW.productid;
SET id_com = NEW.orderid;
SELECT Country,ShipCountry INTO @pays_fou, @pays_liv FROM suppliers
INNER JOIN products ON products.SupplierID =suppliers.SupplierID
INNER JOIN order_details ON order_details.ProductID  = products.ProductID
INNER JOIN orders ON orders.OrderID = order_details.OrderID
WHERE order_details.ProductID = id_prod
AND orders.OrderID = id_com;
IF pays_fou <> pays_liv THEN
SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = "Votre demande ne peut aboutir, impossible d'effectuer des livraisons internationales";
END IF;
END |
DELIMITER ;



