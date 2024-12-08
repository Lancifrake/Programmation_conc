-- Insertion des catégories de recettes
INSERT INTO CategoriesRecettes (NomCategorie)
VALUES 
('Entrée'),
('Plat'),
('Dessert');

-- Insertion des recettes
INSERT INTO Recettes (NomRecette, CategorieID, NombrePersonnes, TempsPreparation, TempsCuisson, TempsRepos) VALUES
('Feuilleté au crabe', 1, 4, '00:10:00', '00:20:00', NULL),
('Œufs cocotte', 1, 4, '00:10:00', '00:05:00', NULL),
('Bouillinade d’anguilles ou de poissons', 2, 4, '00:10:00', '00:20:00', NULL),
('Boles de picoulats', 2, 25, '01:00:00', NULL, NULL),
('Blanquette de veau', 2, 5, '00:10:00', '02:00:00', NULL),
('Gaspatcho', 1, NULL, NULL, NULL, NULL),
('Gaufres', 3, NULL, '00:20:00', '02:00:00', NULL),
('Pâté de sanglier (Christian)', 1, NULL, '00:20:00', '02:00:00', NULL),
('Pâté de sanglier (Lolotte)', 1, NULL, '00:20:00', '03:00:00', NULL),
('Crêpes', 3, NULL, '00:10:00', '01:00:00', NULL),
('Tarte au thon', 1, 6, '00:10:00', '00:20:00', NULL),
('Quiche-Lorraine', 1, 6, '00:15:00', '00:35:00', NULL),
('Pâté de porc', 2, NULL, '00:30:00', '03:00:00', NULL),
('Foie gras à la vapeur', 1, NULL, '01:00:00', '00:04:00', '24:00:00'),
('Blancs de poulet à la crème et au miel', 2, 2, '00:05:00', '00:10:00', NULL),
('Escargots à la Catalane', 2, 4, '01:30:00', '01:00:00', NULL),
('Soupe chinoise', 1, 4, '00:15:00', '00:30:00', NULL),
('Foie gras au muscat', 2, NULL, '01:00:00', '06:00:00', NULL),
('Chorba', 2, 4, '00:15:00', '01:10:00', NULL),
('Cagouilles à la Charentaise', 1, 4, '00:30:00', '02:30:00', NULL),
('Tiramisu', 3, 4, '00:10:00', NULL, '01:00:00'),
('Madeleine au miel', 3, NULL, '00:15:00', '00:05:00', NULL),
('Tagliatelles de concombre au saumon fumé', 1, 4, '00:20:00', NULL, NULL);

-- Insertion des ingrédients pour les recettes

-- Ingrédients pour Feuilleté au crabe
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(1, '300g de pâte feuilletée', '300g'),
(1, '2 œufs', '2'),
(1, 'Sel et poivre', NULL),
(1, '3 ou 4 c à s de crème fraiche', '3-4 c à s'),
(1, '2 cuillères à soupe de chapelure', '2 c à s'),
(1, '2 petits oignons ou échalotes', '2'),
(1, '120g de chair de crabe', '120g'),
(1, 'Le jus d\'un citron', '1 citron'),
(1, '3 cuillères à soupe de persil haché', '3 c à s'),
(1, '1 pointe de couteau de piment de Cayenne', '1 pointe');

-- Ingrédients pour Œufs cocotte
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(2, '1 œuf par personne', '1 par personne'),
(2, '1 sachet de gruyère râpé', '1 sachet'),
(2, 'Sel', NULL),
(2, 'Crème fraîche', NULL),
(2, 'Poivre', NULL);

-- Ingrédients pour Blanquette de veau
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(5, '1 kg de viande de veau', '1 kg'),
(5, '1 cube de bouillon de poule', '1 cube'),
(5, '2 ou 3 carottes', '2-3'),
(5, '1 pot de crème', '1 pot'),
(5, '1 jaune d’œuf', '1'),
(5, 'Champignons', NULL),
(5, 'Jus de citron', '1'),
(5, '25 cl de vin blanc', '25 cl');

-- Ingrédients pour Bouillinade d’anguilles ou de poissons
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(3, 'Lotte, congre, rouget grondin, seiche, petit crabe', NULL),
(3, 'Ail', NULL),
(3, 'Farine', NULL),
(3, 'Saindoux', NULL),
(3, 'Sel et poivre', NULL),
(3, 'Piment', NULL),
(3, 'Pommes de terre', NULL);

-- Ingrédients pour Boles de picoulats
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(4, '3kg de chair à saucisse', '3kg'),
(4, '1kg de bœuf haché', '1kg'),
(4, '2 oignons (mixé petit)', '2'),
(4, '1 tête ½ d’ail (mixé petit)', '1.5'),
(4, '2 œufs', '2'),
(4, 'Sel et poivre', NULL),
(4, '2 cubes de bouillon de bœuf', '2'),
(4, '1 tube de concentré de tomate', '1 tube'),
(4, '1 bon verre de farine', '1 verre'),
(4, '1 bon verre de vinaigre de vin rouge', '1 verre');

-- Ingrédients pour Tarte au thon
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(10, '1 pâte feuilletée', '1 rouleau'),
(10, '30 gr de beurre', '30gr'),
(10, '50 gr de farine', '50gr'),
(10, '1/2 litre de lait', '0.5L'),
(10, '1/2 boîte de champignons de Paris', '0.5 boîte'),
(10, '1 boîte de thon', '1 boîte'),
(10, 'Gruyère râpé', NULL);

-- Ingrédients pour Gaufres
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(7, '500 gr de farine', '500 gr'),
(7, '250 gr de sucre', '250 gr'),
(7, '1 litre de lait', '1 litre'),
(7, '5 œufs', '5');

-- Ingrédients pour Pâté de sanglier
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(8, '2 kg de sanglier', '2 kg'),
(8, '1 kg de ventrèche', '1 kg'),
(8, '1 kg de chair à saucisse', '1 kg'),
(8, 'Sel et poivre', NULL),
(8, '50 gr de sel par kg', '50 gr par kg'),
(8, '6 gr de poivre par kg', '6 gr par kg');

-- Ingrédients pour Escargots à la Catalane
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(16, '100 escargots petits-gris', '100 pièces'),
(16, '200 g de chair à saucisse', '200 g'),
(16, '150 g de talon de jambon', '150 g'),
(16, '100 g de couenne de porc', '100 g'),
(16, '4 échalotes', '4'),
(16, '4 tomates', '4'),
(16, '1 cuillère à soupe de concentré de tomate', '1 cuillère à soupe'),
(16, '1 cuillère à soupe de graisse d’oie', '1 cuillère à soupe'),
(16, '1 verre de vin blanc sec', '1 verre');

-- Ingrédients pour Soupe chinoise
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(17, '1 boîte de champignons chinois', '1 boîte'),
(17, '1 boîte de petites crevettes décortiquées', '1 boîte'),
(17, 'Ailes, cuisses ou pilon de poulet', NULL),
(17, '4 carottes', '4'),
(17, '2 poireaux', '2'),
(17, '2 branches de céleri', '2'),
(17, '1 bouillon cube', '1 cube'),
(17, 'Coriandre', NULL),
(17, 'Oignons verts', NULL);

-- Ingrédients pour Foie gras au muscat
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(18, '1 foie gras cru de 5 à 600g', '5-600g'),
(18, '1 cuillère à café de sel', '1 c à café'),
(18, '1/2 ou 1 cuillère à café de poivre blanc', '1/2 - 1 c à café'),
(18, '1 pincée de sucre', '1 pincée'),
(18, '1 cuillère à soupe de Porto (ou Cognac ou Muscat)', '1 c à soupe');

-- Ingrédients pour Chorba
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(19, '1 bol de langues d’oiseaux', '1 bol'),
(19, '1 boîte de concentré de tomates', '1 boîte'),
(19, 'Persil', NULL),
(19, 'Épices raz el amout', NULL),
(19, 'Sel et poivre', NULL),
(19, 'Mouton ou merguez', NULL),
(19, '1 bouquet de coriandre', '1 bouquet'),
(19, 'Colorant', NULL);

-- Ingrédients pour Tiramisu
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(21, '3 gros œufs', '3'),
(21, '100 g de sucre roux', '100 g'),
(21, '1 sachet de sucre vanillé', '1 sachet'),
(21, '250 g de mascarpone', '250 g'),
(21, '24 biscuits à la cuillère', '24'),
(21, '1/2 litre de café noir non sucré', '1/2 litre'),
(21, '30 g de poudre de cacao amer', '30 g');

-- Ingrédients pour Madeleine au miel
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(22, '125 g de beurre fondu', '125 g'),
(22, '3 œufs', '3'),
(22, '130 g de sucre en poudre', '130 g'),
(22, '1 cuillère à soupe de miel', '1 c à soupe'),
(22, '150 g de farine', '150 g'),
(22, '1/2 sachet de levure', '1/2 sachet'),
(22, '1 citron non traité', '1'),
(22, 'Une pincée de sel', '1 pincée');

-- Ingrédients pour Tagliatelles de concombre au saumon fumé
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(23, '2 concombres', '2'),
(23, '200 g de saumon fumé', '200 g'),
(23, '4 cuillères à soupe de crème fraîche', '4 c à s'),
(23, 'Ciboulette', NULL),
(23, '1 cuillère à café de moutarde', '1 c à café'),
(23, 'Jus d\'un demi citron', '1/2 citron'),
(23, 'Sel et poivre', NULL);



-- Insertion des étapes pour les recettes

-- Étapes pour Feuilleté au crabe
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(1, 1, 'Préchauffer le four à 230° (th 7-8)'),
(1, 2, 'Mélanger la chair de crabe, le jus de citron, la chapelure, les herbes et le piment'),
(1, 3, 'Lier le tout avec un œuf'),
(1, 4, 'Découper 4 disques dans la pâte feuilletée et répartir la farce sur la moitié de chaque disque, en laissant 1 cm de rebord'),
(1, 5, 'Rabattre l\'autre moitié et souder'),
(1, 6, 'Badigeonner les feuilletés avec un œuf battu et salé, puis strier avec une fourchette'),
(1, 7, 'Mettre au four à 180° (th 6) pendant 20mn minimum');

-- Étapes pour Œufs cocotte
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(2, 1, 'Séparer les blancs des jaunes et laisser ces derniers dans une demi-coquille'),
(2, 2, 'Monter les blancs en neige et incorporer un sachet de râpé'),
(2, 3, 'Mettre cette préparation dans un ramequin et faites un trou pour y loger un jaune d\'œuf'),
(2, 4, 'Rajouter un peu de crème fraîche sur le jaune, poivrer et saler'),
(2, 5, 'Enfourner 5 minutes à four chaud (surveiller la cuisson)');

-- Étapes pour Bouillinade d’anguilles ou de poissons
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(3, 1, 'Enduire la cocotte de saindoux.'),
(3, 2, 'Dans le fond y déposer 6 ou 7 petits crabes, couvrir d’une couche de pommes de terre tranchées.'),
(3, 3, 'Ajouter une poignée d’ail tranché, sel, poivre et quelques morceaux de saindoux.'),
(3, 4, 'Répéter une couche de pommes de terre, ail, sel, poivre et 1 piment.'),
(3, 5, 'Mettre une petite couche de farine et disposer le poisson au-dessus.'),
(3, 6, 'Ajouter de l’eau jusqu’au niveau de la dernière couche de pommes de terre.'),
(3, 7, 'Attendre le premier bouillon et rajouter un filet d’huile. Laisser cuire à gros bouillons 20mn.');

-- Étapes pour Boles de picoulats
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(4, 1, 'Façonner les boules et les fariner, les faire revenir à l’huile de tournesol des deux côtés et réserver.'),
(4, 2, 'Dans un grand faitout, faire revenir les oignons et l’ail mixés avec l’huile.'),
(4, 3, 'Ajouter le concentré de tomate, la farine et le vinaigre de vin rouge. Laisser cuire 1 minute.'),
(4, 4, 'Verser 1 litre et demi d’eau chaude, y ajouter les cubes de bouillon.'),
(4, 5, 'Ajouter les boulettes une à une, porter à ébullition et laisser cuire 25 minutes.'),
(4, 6, 'Ajouter les pommes de terre coupées en quatre et cuire à feu doux.');

-- Étapes pour Tarte au thon
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(10, 1, 'Étaler la pâte dans un moule et la piquer avec une fourchette.'),
(10, 2, 'Faire fondre le beurre, y ajouter la farine et le lait petit à petit, bien mélanger jusqu’à épaississement.'),
(10, 3, 'Saler et poivrer, puis ajouter le thon égoutté et les champignons.'),
(10, 4, 'Mettre la préparation sur la pâte et parsemer de gruyère.'),
(10, 5, 'Mettre au four 20 minutes.');

-- Étapes pour Gaufres
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(7, 1, 'Mélanger la farine, le sucre, et les œufs.'),
(7, 2, 'Ajouter progressivement le lait pour obtenir une pâte homogène.'),
(7, 3, 'Laisser reposer la pâte pendant 2 heures.'),
(7, 4, 'Faire cuire dans un gaufrier jusqu’à ce que les gaufres soient dorées.');

-- Étapes pour Pâté de sanglier (Christian)
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(8, 1, 'Hacher toutes les viandes ensemble.'),
(8, 2, 'Mélanger avec les épices : sel et poivre.'),
(8, 3, 'Remplir les bocaux en tassant légèrement.'),
(8, 4, 'Faire cuire les bocaux au bain-marie pendant 2 heures.');

-- Étapes pour Escargots à la Catalane
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(16, 1, 'Laver les escargots plusieurs fois avec du sel et du vinaigre.'),
(16, 2, 'Faire cuire les escargots dans un court-bouillon pendant 15 minutes.'),
(16, 3, 'Dans une cocotte, faire revenir les tomates, les échalotes et l’ail avec la graisse d’oie.'),
(16, 4, 'Ajouter la chair à saucisse, le talon de jambon et la couenne de porc hachés.'),
(16, 5, 'Ajouter le concentré de tomate et le vin blanc, puis incorporer les escargots.'),
(16, 6, 'Laisser mijoter à feu doux pendant 45 minutes.');

-- Étapes pour Soupe chinoise
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(17, 1, 'Mettre le poulet dans l’eau avec les légumes coupés et le cube de bouillon pour préparer le court-bouillon.'),
(17, 2, 'Tremper les champignons chinois et les couper en lamelles.'),
(17, 3, 'Passer le bouillon, puis ajouter les champignons, la chair du poulet et les crevettes.'),
(17, 4, 'Mettre les pâtes et laisser mijoter.'),
(17, 5, 'Servir avec des oignons verts et de la coriandre hachée.');

-- Étapes pour Foie gras au muscat
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(18, 1, 'Séparer les lobes du foie gras, retirer les nerfs avec la pointe d’un couteau.'),
(18, 2, 'Disposer les lobes dans un plat, assaisonner de sel, poivre, sucre et porter au réfrigérateur pendant 24 heures.'),
(18, 3, 'Enrouler le foie gras dans du film plastique et ficeler les bords.'),
(18, 4, 'Cuire à la vapeur pendant 4 à 5 minutes pour un foie rosé ou à cœur.'),
(18, 5, 'Laisser refroidir, puis réfrigérer pendant 5 jours avant de couper en tranches.');

-- Étapes pour Chorba
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(19, 1, 'Laver les escargots et les cuire 1 heure dans de l’eau bouillante salée avec le bouquet garni et la branche de fenouil sauvage.'),
(19, 2, 'Ébouillanter les tomates, enlever la peau et les pépins, puis concasser les tomates.'),
(19, 3, 'Faire revenir les tomates, les échalotes et l’ail avec de la graisse d’oie.'),
(19, 4, 'Ajouter la chair à saucisse, la couenne de porc et le talon de jambon haché, puis faire cuire 10 minutes.'),
(19, 5, 'Incorporer les escargots et 1 litre de bouillon, laisser mijoter pendant 1 heure.');


-- Étapes pour Tiramisu
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(21, 1, 'Séparer les blancs des jaunes. Mélanger les jaunes avec le sucre et le mascarpone.'),
(21, 2, 'Monter les blancs en neige et les incorporer délicatement au mélange.'),
(21, 3, 'Tremper les biscuits dans le café et les disposer dans un plat.'),
(21, 4, 'Alterner une couche de biscuits et une couche de crème.'),
(21, 5, 'Saupoudrer de cacao amer et laisser reposer au réfrigérateur au moins 4 heures.');

-- Étapes pour Madeleine au miel
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(22, 1, 'Fouetter les œufs, le sucre et le miel jusqu’à ce que le mélange blanchisse.'),
(22, 2, 'Ajouter la farine, la levure, le beurre fondu, le zeste de citron et une pincée de sel.'),
(22, 3, 'Bien mélanger jusqu’à obtenir une pâte lisse.'),
(22, 4, 'Beurrer les moules à madeleine et les remplir à moitié avec la pâte.'),
(22, 5, 'Enfourner à 180°C (thermostat 6) pendant 10 à 15 minutes.');

-- Étapes pour Tagliatelles de concombre au saumon fumé
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(23, 1, 'Éplucher les concombres et les couper en fines lanières.'),
(23, 2, 'Couper le saumon fumé en petites lanières.'),
(23, 3, 'Dans un bol, mélanger la crème fraîche, la moutarde, le sel, le poivre et le jus de citron.'),
(23, 4, 'Ajouter les lanières de concombre et de saumon fumé à la sauce et mélanger.'),
(23, 5, 'Réserver au frais pendant une heure avant de servir.');




-- Insertion des employés (tous les rôles sont couverts)
INSERT INTO Employes (NomEmploye, Role, Salaire, HoraireEmploye, SecteurID)
VALUES
('Joseph Emmanuel', 'ChefCuisine', 2500.00, 'Matin', NULL),
('Schilt Erwan', 'Serveur', 1800.00, 'Soir', NULL),
('Ngandette Davila', 'MaitreHotel', 3000.00, 'Matin', 1),
('Kendrick Lamar', 'ChefRang', 2200.00, 'Soir', 1),
('Dr Dre', 'CommisCuisine', 1500.00, 'Matin', NULL),
('Johana Aricie', 'CommisSalle', 1400.00, 'Soir', 1),
('David Lance', 'Plongeur', 1300.00, 'Matin', NULL),
('Joao Félix', 'ChefPartie', 2400.00, 'Matin', NULL);

-- Insertion des secteurs
INSERT INTO Secteurs (NomSecteur, NombreDeTables)
VALUES
('Secteur A', 10),
('Secteur B', 15);

-- Insertion des tables
INSERT INTO Tables (Capacite, SecteurID, Statut)
VALUES
(4, 1, 'Libre'),
(6, 1, 'Occupée'),
(2, 2, 'Réservée');

-- Insertion des clients
INSERT INTO Clients (NomClient, ReservationID)
VALUES
('Alice Dupont', 1),
('Bernard Lemoine', 2);

-- Insertion des réservations
INSERT INTO Reservations (NomClient, DateReservation, HeureReservation, NombrePersonnes, TableID)
VALUES
('Alice Dupont', '2024-12-04', '19:00:00', 4, 1),
('Bernard Lemoine', '2024-12-04', '20:00:00', 6, 2);

-- Insertion dans l'inventaire
INSERT INTO Inventaire (NomProduit, Categorie, Quantite, DateExpiration)
VALUES
('Farine', 'LongueConservation', 50, '2025-01-01'),
('Oeufs', 'Frais', 200, '2024-12-10'),
('Beurre', 'Frais', 30, '2024-12-08'),
('Gruyère râpé', 'Frais', 50, '2024-12-15'),
('Coriandre', 'Frais', 20, '2024-12-07'),
('Moutarde', 'Frais', 10, '2025-01-01'),
('Concentré de tomates', 'LongueConservation', 30, '2025-03-01'),
('Tomates', 'Frais', 100, '2024-12-12'),
('Poivrons', 'Frais', 80, '2024-12-20'),
('Ail', 'Frais', 40, '2024-12-15'),
('Pommes de terre', 'LongueConservation', 150, '2025-06-01'),
('Carottes', 'Frais', 120, '2024-12-19'),
('Céleri', 'Frais', 30, '2024-12-22'),
('Lait', 'Frais', 200, '2024-12-30'),
('Crème fraîche', 'Frais', 50, '2024-12-25'),
('Lardons', 'Frais', 40, '2024-12-30'),
('Jambon cru', 'Frais', 15, '2024-12-18'),
('Huile d’olive', 'LongueConservation', 60, '2026-01-01'),
('Vinaigre balsamique', 'LongueConservation', 40, '2026-02-01'),
('Miel', 'LongueConservation', 50, '2026-05-01'),
('Herbes de Provence', 'LongueConservation', 20, '2025-09-01'),
('Sel', 'LongueConservation', 100, '2025-12-31'),
('Poivre', 'LongueConservation', 60, '2025-12-31'),
('Beurre doux', 'Frais', 25, '2024-12-28'),
('Fromage râpé', 'Frais', 60, '2024-12-20'),
('Parmesan', 'Frais', 40, '2024-12-30'),
('Saumon frais', 'Frais', 50, '2024-12-18'),
('Saumon fumé', 'Frais', 30, '2024-12-15'),
('Pâtes', 'LongueConservation', 200, '2025-07-01'),
('Riz basmati', 'LongueConservation', 200, '2025-08-01'),
('Fèves', 'Frais', 30, '2024-12-05'),
('Pois chiches', 'LongueConservation', 150, '2025-09-01'),
('Lentilles', 'LongueConservation', 100, '2025-10-01'),
('Chocolat noir', 'LongueConservation', 40, '2026-03-01'),
('Vanille', 'LongueConservation', 20, '2025-12-01'),
('Cacao en poudre', 'LongueConservation', 50, '2025-12-01'),
('Cannelle', 'LongueConservation', 30, '2025-10-01'),
('Paprika', 'LongueConservation', 30, '2025-11-01'),
('Poivron en poudre', 'LongueConservation', 30, '2025-12-01'),
('Romarin', 'LongueConservation', 15, '2025-10-01'),
('Thym', 'LongueConservation', 20, '2025-11-01'),
('Bouillon de volaille', 'LongueConservation', 60, '2025-03-01'),
('Bouillon de légumes', 'LongueConservation', 50, '2025-04-01'),
('Café', 'LongueConservation', 100, '2025-12-15'),
('Thé', 'LongueConservation', 100, '2025-12-15'),
('Sucre en poudre', 'LongueConservation', 100, '2025-12-01'),
('Sucre glace', 'LongueConservation', 60, '2025-12-01'),
('Levure chimique', 'LongueConservation', 30, '2025-11-01'),
('Levure de boulanger', 'LongueConservation', 25, '2025-12-01'),
('Farine de maïs', 'LongueConservation', 40, '2025-11-01'),
('Semoule', 'LongueConservation', 50, '2025-11-01'),
('Poudre d’amande', 'LongueConservation', 30, '2025-12-01');

-- Insertion des commandes
INSERT INTO Commandes (TableID, HeureCommande, Statut)
VALUES
(1, '2024-12-04 19:30:00', 'EnAttente'),
(2, '2024-12-04 20:15:00', 'EnPréparation');

-- Insertion des détails des commandes
INSERT INTO DetailsCommandes (CommandeID,RecetteID, NombrePlats)
VALUES
(1, 2, 2),
(2, 1, 1);

-- Insertion des équipements
INSERT INTO Equipements (NomEquipement, Quantite, Localisation)
VALUES
('Four', 2, 'Cuisine'),
('Poêle', 5, 'Cuisine'),
('Table de service', 3, 'Salle');

-- Insertion des tâches dans les logs
INSERT INTO LogsTaches (EmployeID, Description)
VALUES
(1, 'Préparation des feuilletés au crabe'),
(2, 'Service des entrées pour la table 1');
