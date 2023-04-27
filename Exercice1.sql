CREATE TABLE REPRESENTANT (
    NumRep INT PRIMARY KEY,
    NomRep VARCHAR(20),
    Adresse VARCHAR(20)
);

CREATE TABLE PRODUIT (
    NumProd INT PRIMARY KEY,
    NomProd VARCHAR(20),
    Couleur VARCHAR(20),
    Poids DECIMAL(7, 2),
    Categorie VARCHAR(20)
);

CREATE TABLE CLIENT (
    NumClient INT PRIMARY KEY,
    NomC1 VARCHAR(20)
);

CREATE TABLE VENTE (
    NumRep INT,
    NumProd INT,
    NumC1 INT,
    dateVente DATE,
    Quantite DECIMAL(7, 2),
    PRIMARY KEY (NumRep, NumProd, NumC1),
    FOREIGN KEY (NumRep) REFERENCES REPRESENTANT (NumRep),
    FOREIGN KEY (NumProd) REFERENCES PRODUIT (NumProd),
    FOREIGN KEY (NumC1) REFERENCES CLIENT (NumClient)
);


/*Renommer le nom de la colone adresse par VilleRep*/

ALTER TABLE REPRESENTANT RENAME COLUMN Adresse TO VilleRep;

/*Ajouter une colonne Ville à Clients Varchar2(50)*/

ALTER TABLE CLIENT ADD Ville VARCHAR2(50);


/*Changer le type de la colonne couleur de varchar2(20) a varchar2(10) et par défaut a 'Blanc'*/

ALTER TABLE PRODUIT
MODIFY Couleur varchar2(10) DEFAULT 'Blanc';

/*Supprimer la colone Catégorie*/

ALTER TABLE PRODUIT
DROP COLUMN Categorie;

/*Remplire la table Representant*/

INSERT INTO REPRESENTANT(NumRep,NomRep,VilleRep)
VALUES (1,'Stephane','Lyon'),
        (2,'Benjamin','Paris'),
        (3,'Leonard','Lyon'),
        (4,'Antoine','Brest'),
        (5,'Bruno','Bayonne'),
        (6,'Alain','Marseille'),
        (7,'Mary','Brest');


/*Remplire la table Produits*/

INSERT INTO PRODUIT(NumProd,NomProd,Couleur,Poids)
    VALUES (1,'Aspirateur','Rouge',3546),
            (2,'Trotinette','Bleu',1423),
            (3,'Chaise','Blanc',3827),
            (4,'Tapis','Rouge',1423),
            (5,'Chaise Bureu','Noir',750),
            (6,'Canape','Blue',1500),
            (7,'ChaiseCuisine','Noir',750),
            (8,'Bicyclette','Gris',1000),
            (9,'Bicyclette Babe','Rouge',500),
            (10,'Seche cheveux','Noir',200);
