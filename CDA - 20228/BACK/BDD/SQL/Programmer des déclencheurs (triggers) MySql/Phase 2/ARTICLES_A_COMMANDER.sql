--Créer une table ARTICLES_A_COMMANDER avec les colonnes:
CREATE OR REPLACE TABLE article_a_commander(
    id INT PRIMARY KEY AUTO_INCREMENT,
    codart CHAR(4) NOT NULL,
    date_u DATE NOT NULL DEFAULT CURDATE(),
    qte INT NOT NULL,
	FOREIGN KEY(codart) REFERENCES produit(codart)
    );
