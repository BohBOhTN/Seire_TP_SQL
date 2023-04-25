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
