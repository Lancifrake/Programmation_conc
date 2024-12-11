-- Création de la base de données
-- SQLite crée automatiquement une base de données dans un fichier, pas besoin de la déclaration CREATE DATABASE.

-- Table pour les catégories de recettes
CREATE TABLE IF NOT EXISTS CategoriesRecettes (
    CategorieID INTEGER PRIMARY KEY AUTOINCREMENT,
    NomCategorie TEXT NOT NULL -- Exemple : Entrée, Plat, Dessert
);

-- Table pour les recettes
CREATE TABLE IF NOT EXISTS Recettes (
    RecetteID INTEGER PRIMARY KEY AUTOINCREMENT,
    NomRecette TEXT NOT NULL,
    CategorieID INTEGER NOT NULL, -- Lien vers la catégorie
    NombrePersonnes INTEGER,
    TempsPreparation TEXT, -- Temps de préparation en heures:minutes:secondes
    TempsCuisson TEXT,
    TempsRepos TEXT,
    FOREIGN KEY (CategorieID) REFERENCES CategoriesRecettes(CategorieID)
);

-- Table pour les ingrédients des recettes
CREATE TABLE IF NOT EXISTS IngredientsRecettes (
    IngredientID INTEGER PRIMARY KEY AUTOINCREMENT,
    RecetteID INTEGER NOT NULL, -- Lien vers la recette
    NomIngredient TEXT NOT NULL,
    Quantite TEXT, -- Exemple : "200g", "2 cuillères"
    FOREIGN KEY (RecetteID) REFERENCES Recettes(RecetteID)
);

-- Table pour les étapes des recettes
CREATE TABLE IF NOT EXISTS EtapesRecettes (
    EtapeID INTEGER PRIMARY KEY AUTOINCREMENT,
    RecetteID INTEGER NOT NULL, -- Lien vers la recette
    OrdreEtape INTEGER NOT NULL, -- Numéro de l'étape
    DescriptionEtape TEXT NOT NULL, -- Description détaillée de l'étape
    FOREIGN KEY (RecetteID) REFERENCES Recettes(RecetteID)
);

-- Table pour les employés
CREATE TABLE IF NOT EXISTS Employes (
    EmployeID INTEGER PRIMARY KEY AUTOINCREMENT,
    NomEmploye TEXT NOT NULL,
    Role TEXT CHECK(Role IN ('MaitreHotel', 'ChefRang', 'Serveur', 'CommisSalle', 'ChefCuisine', 'ChefPartie', 'CommisCuisine', 'Plongeur')) NOT NULL,
    Salaire REAL,
    HoraireEmploye TEXT CHECK(HoraireEmploye IN ('Matin', 'Soir')),
    SecteurID INTEGER,
    FOREIGN KEY (SecteurID) REFERENCES Secteurs(SecteurID)
);

-- Table pour les secteurs (carrés) dans la salle
CREATE TABLE IF NOT EXISTS Secteurs (
    SecteurID INTEGER PRIMARY KEY AUTOINCREMENT,
    NomSecteur TEXT,
    NombreDeTables INTEGER
);

-- Table pour les tables
CREATE TABLE IF NOT EXISTS Tables (
    TableID INTEGER PRIMARY KEY AUTOINCREMENT,
    Capacite INTEGER NOT NULL,
    SecteurID INTEGER NOT NULL,
    Statut TEXT CHECK(Statut IN ('Libre', 'Occupée', 'Réservée')) DEFAULT 'Libre',
    FOREIGN KEY (SecteurID) REFERENCES Secteurs(SecteurID)
);

-- Table pour les clients
CREATE TABLE IF NOT EXISTS Clients (
    ClientID INTEGER PRIMARY KEY AUTOINCREMENT,
    NomClient TEXT,
    ReservationID INTEGER NOT NULL,
    FOREIGN KEY (ReservationID) REFERENCES Reservations(ReservationID)
);

-- Table pour les réservations
CREATE TABLE IF NOT EXISTS Reservations (
    ReservationID INTEGER PRIMARY KEY AUTOINCREMENT,
    NomClient TEXT NOT NULL,
    DateReservation TEXT NOT NULL, -- SQLite n'a pas de type DATE natif
    HeureReservation TEXT NOT NULL, -- SQLite n'a pas de type TIME natif
    NombrePersonnes INTEGER NOT NULL,
    TableID INTEGER NOT NULL,
    FOREIGN KEY (TableID) REFERENCES Tables(TableID)
);

-- Table pour les stocks
CREATE TABLE IF NOT EXISTS Inventaire (
    ProduitID INTEGER PRIMARY KEY AUTOINCREMENT,
    NomProduit TEXT NOT NULL,
    Categorie TEXT CHECK(Categorie IN ('Surgelé', 'Frais', 'LongueConservation')) NOT NULL,
    Quantite INTEGER NOT NULL,
    DateExpiration TEXT -- SQLite n'a pas de type DATE natif
);

-- Table pour les commandes
CREATE TABLE IF NOT EXISTS Commandes (
    CommandeID INTEGER PRIMARY KEY AUTOINCREMENT,
    TableID INTEGER NOT NULL,
    HeureCommande TEXT NOT NULL, -- Utilisation du format DATETIME ou TEXT
    Statut TEXT CHECK(Statut IN ('EnAttente', 'EnPréparation', 'Servie')) DEFAULT 'EnAttente',
    FOREIGN KEY (TableID) REFERENCES Tables(TableID)
);

-- Table pour les plats dans les commandes
CREATE TABLE IF NOT EXISTS DetailsCommandes (
    DetailsID INTEGER PRIMARY KEY AUTOINCREMENT,
    CommandeID INTEGER NOT NULL,
    RecetteID INTEGER NOT NULL,
    NombrePlats INTEGER,
    FOREIGN KEY (CommandeID) REFERENCES Commandes(CommandeID),
    FOREIGN KEY (RecetteID) REFERENCES Recettes(RecetteID)
);

-- Table pour les équipements
CREATE TABLE IF NOT EXISTS Equipements (
    EquipementID INTEGER PRIMARY KEY AUTOINCREMENT,
    NomEquipement TEXT NOT NULL,
    Quantite INTEGER,
    Localisation TEXT CHECK(Localisation IN ('Cuisine', 'Salle')) NOT NULL
);

-- Suivi des tâches (logs des flux d'activités)
CREATE TABLE IF NOT EXISTS LogsTaches (
    TacheID INTEGER PRIMARY KEY AUTOINCREMENT,
    EmployeID INTEGER NOT NULL,
    Description TEXT, -- Détail de la tâche effectuée
    Timestamp TEXT DEFAULT (DATETIME('now')), -- Horodatage automatique
    FOREIGN KEY (EmployeID) REFERENCES Employes(EmployeID)
);

-- Table pour les ingrédients (relier recettes et stocks)
CREATE TABLE IF NOT EXISTS IngredientsInventaire (
    IngredientID INTEGER PRIMARY KEY AUTOINCREMENT,
    RecetteID INTEGER NOT NULL,
    ProduitID INTEGER NOT NULL, -- Lien vers la table Inventaire
    Quantite INTEGER NOT NULL, -- Quantité nécessaire par préparation
    FOREIGN KEY (RecetteID) REFERENCES Recettes(RecetteID),
    FOREIGN KEY (ProduitID) REFERENCES Inventaire(ProduitID)
);
