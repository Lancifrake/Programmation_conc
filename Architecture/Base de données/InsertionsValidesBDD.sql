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
(1, 'Pâte feuilletée', '300g'),
(1, 'Œufs', '2'),
(1, 'Sel et poivre', NULL),
(1, 'Crème fraîche', '3 ou 4 c à s'),
(1, 'Chapelure', '2 c à soupe'),
(1, 'Oignons ou échalotes', '2 petits'),
(1, 'Chair de crabe', '120g'),
(1, 'Jus de citron', '1'),
(1, 'Persil haché', '3 c à soupe'),
(1, 'Piment de Cayenne', '1 pointe de couteau');

-- Ingrédients pour Oeufs cocotte
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(2, 'Œuf par personne', '1'),
(2, 'Sachet de gruyère râpé', '1 sachet'),
(2, 'Sel', NULL),
(2, 'Crème fraîche', NULL),
(2, 'Poivre', NULL);

-- Ingrédients pour Bouillinade d’anguilles ou de poissons
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(3, 'Lotte', '1'),
(3, 'Congre', '1'),
(3, 'Rouget grondin', '1'),
(3, 'Seiche', '1'),
(3, 'Petit crabe', '1'),
(3, 'Ail', '1'),
(3, 'Farine', '1'),
(3, 'Saindoux', '1'),
(3, 'Sel', '1'),
(3, 'Poivre', '1'),
(3, 'Piment', '1'),
(3, 'Pommes de terre', '1');

-- Ingrédients pour Boles de picoulats
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(4, 'Chair à saucisse', '3kg'),
(4, 'Bœuf haché', '1kg'),
(4, 'Oignons', '2'),
(4, 'Ail', '1 tête ½'),
(4, 'Œufs', '2'),
(4, 'Sel', '1'),
(4, 'Poivre', '1'),
(4, 'Oignons pour sauce', '2'),
(4, 'Ail pour sauce', '1 tête ½'),
(4, 'Concentré de tomate', '1 tube'),
(4, 'Farine', '1 bon verre'),
(4, 'Vinaigre de vin rouge', '1 bon verre'),
(4, 'Bouillon de bœuf', '2 cubes'),
(4, 'Huile de tournesol', '1');

-- Ingrédients pour Blanquette de veau
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(5, 'Viande de veau', '1 kg'),
(5, 'Cube de bouillon de poule', '1'),
(5, 'Bouquet garni', '1'),
(5, 'Bouillon de légumes', '1 petit peu'),
(5, 'Carottes', '2-3'),
(5, 'Champignons', '1'),
(5, 'Pot de crème', '1'),
(5, 'Jus de citron', '1'),
(5, 'Œuf', '1'),
(5, 'Vin blanc', '25 cl');

-- Ingrédients pour le gaspatcho
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(6, 'Tomates', '1'),
(6, 'Oignons', '1'),
(6, 'Concombre', '1'),
(6, 'Pain rassis', '1'),
(6, 'Huile d\'olive', '1'),
(6, 'Vinaigre', '1'),
(6, 'Poivron', '1'),
(6, 'Sel', '1'),
(6, 'Poivre', '1');

-- Ingrédients pour Gaufres
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(7, 'Farine', '250g'),
(7, 'Œuf', '3'),
(7, 'Beurre', '100g'),
(7, 'Lait', '¼ l'),
(7, 'Sucre en poudre', '75g'),
(7, 'Sel', '1 pincée');

-- Insertion des ingrédients pour le Pâté de sanglier
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(8, 'Sanglier', '2 kg'),
(8, 'Ventrecie', '1 kg'),
(8, 'Chair à saucisse', '1 kg'),
(8, 'Gorge de porc ou de lard', '1 kg'),
(8, 'Sel', '50 gr par kg'),
(8, 'Poivre', '6 gr par kg');

-- Insertion des ingrédients pour les crêpes  
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(10, 'Farine', '500 g'),
(10, 'Sucre', '250 g'),
(10, 'Lait', '1 litre'),
(10, 'Œufs', '5');

-- Ingrédients pour Tarte au thon
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(11, 'Farine', '50 g'),
(11, 'Lait', '1/2 litre'),
(11, 'Champignons de Paris', '1/2 boîte'),
(11, 'Thon', '1 boîte'),
(11, 'Gruyère râpé', '1'),
(11, 'Pâte feuilletée', '1'),
(11, 'Beurre', '30 g'),
(11, 'Sel', '1'),
(11, 'Poivre', '1');

-- Ingrédients pour Quiche Lorraine
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(12, 'Pâte feuilletée', '1 rouleau'),
(12, 'Œufs entiers', '3'),
(12, 'Crème fraîche', '30 cl'),
(12, 'Lait', '25 cl'),
(12, 'Lardons fumés', '300 g'),
(12, 'Emmental râpé', '150 g'),
(12, 'Sel', '1'),
(12, 'Poivre', '1'),
(12, 'Muscade', '1');

-- Insertion des ingrédients pour le Pâté de porc
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(13, 'Poitrines', '2'),
(13, 'Foie', '1'),
(13, 'Œufs', '12'),
(13, 'Lait', '½ litre'),
(13, 'Sel', '1'),
(13, 'Poivre', '1');

-- Insertion des ingrédients pour la recette (Foie gras à la vapeur)
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(14, 'Porto (ou cognac ou muscat)', '1 c à soupe'),
(14, 'Film alimentaire', '1'),
(14, 'Papier d\'aluminium', '1'),
(14, 'Ficelle de boucher', '1'),
(14, 'Appareil de cuisson à la vapeur', '1'),
(14, 'Foie gras cru', '5-600 g'),
(14, 'Sel', '1 bonne c à café'),
(14, 'Poivre blanc', '1/2 c à café ou 1 c à café selon goût'),
(14, 'Sucre', '1 pincée');

-- Insertion des ingrédients pour la recette (Blancs de poulet à la crème et au miel)
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(15, 'Blancs de poulet', '3'),
(15, 'Oignon', '1 gros'),
(15, 'Vinaigre balsamique', '2 c à soupe'),
(15, 'Miel', '1 c à soupe'),
(15, 'Crème fraîche', '3 c à soupe'),
(15, 'Huile d\'olive', '2 c à soupe');

-- Insertion des ingrédients pour la recette (Escargots à la Catalane)
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(16, 'Poireau', '1'),
(16, 'Oignon piqué d\'un clou de girofle', '1'),
(16, 'Gousse d\'ail', '1'),
(16, 'Thym', '1'),
(16, 'Céleri', '1'),
(16, 'Feuille de laurier', '1'),
(16, 'Sel', '1'),
(16, 'Poivre', '1'),
(16, 'Jambon (en lardons)', '250 g'),
(16, 'Gros oignon', '1'),
(16, 'Piments verts doux', '2'),
(16, 'Tomates', '2'),
(16, 'Gousses d\'ail', '6'),
(16, 'Persil', '1'),
(16, 'Thym (pour sauce)', '1'),
(16, 'Amandes', '100 g'),
(16, 'Vin blanc sec', '1 verre'),
(16, 'Huile d\'olive', '1'),
(16, 'Sel (pour sauce)', '1'),
(16, 'Poivre (pour sauce)', '1'),
(16, 'Pointe de piment fort', '1');

-- Insertion des ingrédients pour la recette (Soupe chinoise)
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(17, 'Champignons chinois', '1 boîte'),
(17, 'Petites crevettes décortiquées', '1 boîte'),
(17, 'Ailes de poulet', '1'),
(17, 'Cuisses de poulet', '1'),
(17, 'Pilon de poulet', '1'),
(17, 'Carottes', '4'),
(17, 'Poireaux', '2'),
(17, 'Branches de céleri', '2'),
(17, 'Bouillon cube', '1'),
(17, 'Coriandre', '1'),
(17, 'Oignons verts', '1');

-- Insertion des ingrédients pour la recette ID 18 (Foie gras au muscat)
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(18, 'Foie gras', '1'),
(18, 'Muscat', '1'),
(18, 'Sel', '1'),
(18, '5 baies', '1');

-- Insertion des ingrédients pour la recette (Chorba)
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(19, 'Huile d\'olive', '1'),
(19, 'Beurre', '1'),
(19, 'Gros oignons', '3'),
(19, 'Langues d\'oiseaux', '1 bol'),
(19, 'Concentré de tomates', '1 boîte'),
(19, 'Persil', '1'),
(19, 'Épices raz el amout', '1'),
(19, 'Sel', '1'),
(19, 'Poivre', '1'),
(19, 'Mouton ou merguez', '1'),
(19, 'Bouquet de coriandre', '1'),
(19, 'Colorant', '1');

-- Insertion des ingrédients pour les Cagouilles à la Charentaise
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(20, 'Escargots petits-gris (100 pièces jeûnés 15 jours)', '100 pièces'),
(20, 'Chair à saucisse', '200 g'),
(20, 'Talon de jambon', '150 g'),
(20, 'Couenne de porc', '100 g'),
(20, 'Échalotes', '4'),
(20, 'Tomates', '4'),
(20, 'Gousses d\'ail', '4'),
(20, 'Concentré de tomate', '1 c à soupe'),
(20, 'Graisse d\'oie', '1 c à soupe'),
(20, 'Persil plat', '1 botte'),
(20, 'Bouquet garni', '1 bouquet'),
(20, 'Fenouil sauvage', '1 branche'),
(20, 'Vinaigre blanc', '1 verre'),
(20, 'Gros sel', '1 poignée'),
(20, 'Poivre du moulin','4');

-- Insertion des ingrédients pour la recette (Tiramisu)
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(21, 'Œufs', '3 gros'),
(21, 'Sucre roux', '100 g'),
(21, 'Sucre vanillé', '1 sachet'),
(21, 'Mascarpone', '250 g'),
(21, 'Biscuits à la cuillère', '24'),
(21, 'Café noir non sucré', '1/2 litre'),
(21, 'Poudre de cacao amer', '30 g');


-- Insertion des ingrédients pour la recette (Madeleine au miel)
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(22, 'Beurre fondu', '125 g'),
(22, 'Œufs', '3'),
(22, 'Sucre en poudre', '130 g'),
(22, 'Miel', '1 c à soupe rase'),
(22, 'Farine', '150 g'),
(22, 'Levure', '1/2 sachet'),
(22, 'Citron non traité', '1'),
(22, 'Sel', '1 pincée');


-- Insertion des ingrédients pour la recette (Tagliatelles de concombre au saumon fumé)
INSERT INTO IngredientsRecettes (RecetteID, NomIngredient, Quantite) VALUES
(23, 'Concombres', '2'),
(23, 'Saumon fumé', '200 g'),
(23, 'Crème fraîche', '4 c à s'),
(23, 'Ciboulette', '1'),
(23, 'Moutarde', '1 c à café'),
(23, 'Jus de citron', '1/2 citron'),
(23, 'Sel', '1'),
(23, 'Poivre', '1');



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

-- Étapes pour Blanquettes de veau
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(5, 1, 'Faire chauffer une grande casserole avec de l\'huile ou du beurre et y faire revenir la viande de veau coupée en morceaux.'),
(5, 2, 'Ajouter les oignons et les carottes coupées en rondelles, puis faire dorer légèrement le tout.'),
(5, 3, 'Ajouter le vin blanc et un bouquet garni (thym, laurier, etc.), couvrir d\'eau et laisser mijoter pendant environ 1h30 à feu doux.'),
(5, 4, 'Retirer la viande et les légumes de la casserole, puis passer le bouillon pour le filtrer.'),
(5, 5, 'Dans une casserole, faire fondre du beurre, ajouter de la farine pour préparer un roux, puis verser petit à petit le bouillon filtré en fouettant pour éviter les grumeaux.'),
(5, 6, 'Laisser épaissir la sauce à feu doux et ajouter la crème fraîche et le jaune d\'œuf pour lier le tout.'),
(5, 7, 'Remettre la viande et les légumes dans la sauce, mélanger doucement et laisser cuire encore 10 à 15 minutes à feu doux.'),
(5, 8, 'Servir la blanquette de veau bien chaude, accompagnée de riz ou de pommes de terre vapeur.');

-- Étapes pour le gaspatcho
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(6, 1, 'Laver et éplucher les tomates, le concombre, le poivron et l\'oignon. Couper tous les légumes en morceaux.'),
(6, 2, 'Éplucher l\'ail et retirer le germe. Si le pain de mie est trop dur, le tremper dans un peu d\'eau pour le ramollir.'),
(6, 3, 'Mettre tous les légumes, l\'ail, le pain de mie dans un mixeur, ajouter le vinaigre, l\'huile d\'olive, le sel et le poivre. Mixer jusqu\'à obtention d\'une consistance lisse.'),
(6, 4, 'Ajouter progressivement de l\'eau froide en fonction de la consistance désirée (si vous préférez un gazpacho plus liquide, ajoutez plus d\'eau).'),
(6, 5, 'Goûter et ajuster l\'assaisonnement si nécessaire, puis passer le gazpacho dans une passoire fine ou un chinois pour éliminer les morceaux.'),
(6, 6, 'Réfrigérer pendant au moins 2 heures avant de servir pour que la soupe soit bien froide.'),
(6, 7, 'Servir dans des bols ou des verres avec un filet d\'huile d\'olive et des croûtons si souhaité.');

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

-- Étapes pour Tarte au thon
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(10, 1, 'Étaler la pâte dans un moule et la piquer avec une fourchette.'),
(10, 2, 'Faire fondre le beurre, y ajouter la farine et le lait petit à petit, bien mélanger jusqu’à épaississement.'),
(10, 3, 'Saler et poivrer, puis ajouter le thon égoutté et les champignons.'),
(10, 4, 'Mettre la préparation sur la pâte et parsemer de gruyère.'),
(10, 5, 'Mettre au four 20 minutes.');

-- Insertion des étapes pour la recette Quiche Lorraine
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(11, 1, 'Mettre le four à préchauffer à 250°C pendant 10 minutes.'),
(11, 2, 'Dans le moule à tarte, étalez la pâte feuilletée préalablement sortie du réfrigérateur 30 minutes avant (elle devient ainsi plus facilement déroulable).'),
(11, 3, 'Piquez un peu partout la pâte avec une fourchette afin d’éviter que celle-ci ne gonfle.'),
(11, 4, 'Mettez la pâte dans le moule dans le four chaud pendant 10 minutes, le temps que la pâte dore très légèrement.'),
(11, 5, 'Sortez la pâte et laissez-la reposer pendant que vous préparez l’appareil.'),
(11, 6, 'Durant la pré-cuisson de la pâte, prenez les lardons et faites-les cuire à la poêle à feu vif. Égouttez-les avec une passoire afin de faire partir leur graisse et de les griller légèrement pour leur donner davantage de saveur.'),
(11, 7, 'Prenez un saladier, cassez-y les 3 œufs puis versez la crème fraîche. Mélangez les œufs et la crème fraîche avec un fouet.'),
(11, 8, 'Rajoutez progressivement le lait tout en continuant à mélanger avec le fouet.'),
(11, 9, 'Ajoutez le sel et le poivre, puis la muscade.'),
(11, 10, 'Étalez les lardons sur la pâte précuite de manière harmonieuse et régulière.'),
(11, 11, 'Versez dessus l’appareil à Quiche Lorraine.'),
(11, 12, 'Saupoudrez de manière régulière la Quiche Lorraine avec l’emmental râpé.'),
(11, 13, 'Enfournez la Quiche Lorraine durant 30 minutes à 250°C.'),
(11, 14, 'Au bout de 25 minutes, piquez avec un couteau la quiche. Si celui-ci ressort sec sans traces de crème fraîche, votre quiche est prête.'),
(11, 15, 'Pour donner plus de craquant, n’hésitez pas à passer 5 minutes votre four en mode grill (s’il en est pourvu). Attention toutefois à ne pas brûler le dessus de votre quiche.');

-- Insertion des étapes pour la recette le Pâté de foie de volaille
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(12, 1, 'Hacher la poitrine et le foie, mettre le hachis dans une grande bassine, puis ajouter les œufs, le lait, le sel et le poivre. Bien mélanger le tout.'),
(12, 2, 'Prendre une fourchette de pâté et faire cuire dans une poêle, goûter et rectifier l’assaisonnement.'),
(12, 3, 'Remplir les pots en prenant soin d’essuyer les bords avant de fermer.'),
(12, 4, 'Faire bouillir l’eau dans la lessiveuse puis baisser le feu et cuire pendant 3 heures.'),
(12, 5, 'Sortir les pots le lendemain lorsqu’ils sont froids.');

-- Insertion des étapes pour la recette (Foie gras à la vapeur)
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(14, 1, 'Séparer les lobes du foie gras, retirer les nerfs avec la pointe d’un couteau.'),
(14, 2, 'Assaisonner le foie gras avec le sel, le poivre blanc, le sucre, et ajouter le porto (ou cognac ou muscat).'),
(14, 3, 'Enrouler le foie gras dans du film alimentaire, puis dans du papier d\'aluminium en serrant bien les bords.'),
(14, 4, 'Ficeler le foie gras à l’aide de la ficelle de boucher pour maintenir une forme compacte.'),
(14, 5, 'Faire cuire à la vapeur pendant 4 à 5 minutes pour un foie gras rosé ou à cœur.'),
(14, 6, 'Laisser refroidir, puis réfrigérer pendant 5 jours avant de couper en tranches.');

-- Insertion des étapes pour la recette (Blancs de poulet à la crème et au miel)
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(15, 1, 'Coupez les blancs de poulet en petits cubes, épluchez l\'oignon et émincez-le.'),
(15, 2, 'Faites chauffer l\'huile dans une poêle et faites-y revenir l\'oignon et les morceaux de blancs de poulet.'),
(15, 3, 'Quand ils sont dorés, ajoutez le vinaigre et le miel, puis laissez mijoter pendant 3 minutes.'),
(15, 4, 'Ajoutez la crème et remuez bien pour l\'incorporer.'),
(15, 5, 'Servez aussitôt accompagné de riz.');


-- Insertion des étapes pour la recette ID 16 (Escargots à la Catalane)
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(16, 1, 'Lavez à grandes eaux les escargots ayant jeûné.'),
(16, 2, 'Retirez les opercules.'),
(16, 3, 'Passez-les plusieurs fois dans du gros sel puis dans du vinaigre pour les faire « baver ». Rincez-les une dernière fois puis égouttez-les.'),
(16, 4, 'Faites le court-bouillon dans une marmite contenant 2 litres d’eau et l’ensemble des ingrédients. Laissez bouillir pendant 10 minutes. Jetez-y les escargots propres. Laissez-les cuire 15 minutes dès que l’ébullition a repris. Égouttez-les.'),
(16, 5, 'Pendant ce temps, dans une cocotte contenant de l’huile d’olive, faites revenir l’oignon coupé en morceaux, les piments épépinés et coupés très fins, le jambon, et en dernier 4 gousses d’ail hachées.'),
(16, 6, 'Coupez-y les tomates pelées. Faites mijoter 5 minutes à couvert.'),
(16, 7, 'Ajoutez le vin blanc et les escargots égouttés ; salez, poivrez et pimentez. Mélangez.'),
(16, 8, 'Laissez cuire à feu très doux pendant 45 minutes.'),
(16, 9, '5 minutes avant la fin de la cuisson, ajoutez 2 gousses d’ail, le persil et les amandes (les 3 ingrédients doivent être pilés ensemble).'),
(16, 10, 'C’est prêt !!!');


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

-- Insertion des étapes pour les Cagouilles à la Charentaise
INSERT INTO EtapesRecettes (RecetteID, OrdreEtape, DescriptionEtape) VALUES
(20, 1, 'Lavez les escargots 3 fois avec un peu de vinaigre et de gros sel pour les faire dégorger.'),
(20, 2, 'Cuisez-les 1 heure dans de l’eau bouillante salée avec le bouquet garni et la branche de fenouil sauvage, puis égouttez-les. Réservez 1 litre du bouillon de cuisson.'),
(20, 3, 'Ébouillantez les tomates et enlevez leur peau et les pépins, puis concassez-les.'),
(20, 4, 'Ciselez les échalotes, hachez les gousses d’ail.'),
(20, 5, 'Dans une cocotte, faites revenir les tomates, les échalotes et les gousses d’ail avec la graisse d’oie, ajoutez la chair à saucisse, la couenne de porc et le talon de jambon haché.'),
(20, 6, 'Finissez avec le concentré de tomate.'),
(20, 7, 'Faites cuire le tout 10 minutes, incorporez les escargots en coquille et 1 litre du bouillon de cuisson. Remuez délicatement et remettez sur le feu 1 heure à couvert.'),
(20, 8, 'Juste avant de servir, parsemez du persil haché et assaisonnez.');

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
