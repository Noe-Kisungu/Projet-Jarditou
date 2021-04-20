--9)Depuis quelle date le client « Du monde entier » n’a plus commandé ?
DELIMITER |
CREATE PROCEDURE derniere_com(IN nom_ent VARCHAR(50))
BEGIN
    SELECT MAX(orderdate) FROM orders
    JOIN customers
    ON orders.customerid = customers.customerid
    WHERE companyname = nom_ent;
END |
DELIMITER;

--10)Quel est le délai moyen de livraison en jours ?
DELIMITER |
CREATE PROCEDURE delai_moyen(IN dateliv DATE, datecom DATE)
BEGIN
    SELECT floor(avg(DATEDIFF(dateliv, datecom)))
    from orders;
END |
DELIMITER ;
