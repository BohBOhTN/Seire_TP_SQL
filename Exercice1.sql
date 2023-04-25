CREATE TABLE REPRESENTANT (
    NumRep number PRIMARY KEY,
    NomRep VARCHAR(20),
    Adresse VARCHAR(20)
);

CREATE TABLE PRODUIT (
    NumProd number PRIMARY KEY,
    NomProd VARCHAR(20),
    Couleur VARCHAR(20),
    Poids DECIMAL(7, 2),
    Categorie VARCHAR(20)
);

CREATE TABLE CLIENT (
    NumClient NUMBER PRIMARY KEY,
    NomC1 VARCHAR(20)
);

CREATE TABLE VENTE (
    NumRep NUMBER,
    NumProd NUMBER,
    NumC1 NUMBER,
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

ALTER TABLE CLIENT ADD COLUMN Ville VARCHAR2(50);