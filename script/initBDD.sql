DROP TABLE Member;
DROP TABLE Item;

CREATE TABLE Member(
	Name VARCHAR(20) NOT NULL,
	Password CHAR(128) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	Guild BOOLEAN NOT NULL,
	PRIMARY KEY(Email)
);

CREATE TABLE Item(
	Name VARCHAR(30) NOT NULL,
	Type VARCHAR(30) NOT NULL,
	Category VARCHAR(30) NOT NULL,
	Price NUMERIC(7,0) NOT NULL,
	Attack NUMERIC(3,0),
	Defense NUMERIC(3,0),
	Magic NUMERIC(3,0),
	Resistance NUMERIC(3,0),
	Speed NUMERIC(3,0),
	Move NUMERIC(3,0),
	Jump NUMERIC(3,0),
	Evasion NUMERIC(3,0),
	Path VARCHAR(255),
	PRIMARY KEY(Name)
);

/* Armures */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Cuirasse', 'Corps', 'Armure', 200, 28, 2, 'res/img/objets/obj_64.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Cotte romaine', 'Corps', 'Armure', 500, 30, 6, 'res/img/objets/obj_65.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Cotte fer', 'Corps', 'Armure', 750, 34, 3, 'res/img/objets/obj_66.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Carapaçon', 'Corps', 'Armure', 1500, 38, 3, 'res/img/objets/obj_67.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Cotte or', 'Corps', 'Armure', 3000, 42, 6, 'res/img/objets/obj_68.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Cotte diamant', 'Corps', 'Armure', 2000, 40, 3, 'res/img/objets/obj_69.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Cotte teutonne', 'Corps', 'Armure', 3000, 42, 3, 'res/img/objets/obj_70.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Plastron carabi', 'Corps', 'Armure', 4000, 38, 8, 'res/img/objets/obj_71.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Plastron miroir', 'Corps', 'Armure', 6000, 36, 8, 'res/img/objets/obj_72.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Plastron dragon', 'Corps', 'Armure', 8000, 40, 8, 'res/img/objets/obj_73.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Cotte Genji', 'Corps', 'Armure', 10000, 46, 12, 'res/img/objets/obj_74.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Resistance,Path)
	VALUES ('Maximilien', 'Corps', 'Armure', 10000, 3, 46, 10, 'res/img/objets/obj_75.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Cotte adamantine', 'Corps', 'Armure', 12000, 58, 3, 'res/img/objets/obj_76.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Cotte matéria', 'Corps', 'Armure', 14000, 52, 16, 'res/img/objets/obj_77.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Magic,Resistance,Speed,Move,Jump,Evasion,Path)
	VALUES ('Peytral', 'Corps', 'Armure', 25000, 5, 28, 5, 2, 2, 1, 1, 5, 'res/img/objets/obj_78.gif');

/* Tuniques */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Pèlerine cuir', 'Corps', 'Tunique', 150, 18, 4, 'res/img/objets/obj_81.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Buste acier', 'Corps', 'Tunique', 450, 28, 4, 'res/img/objets/obj_82.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Giladaman', 'Corps', 'Tunique', 700, 30, 3, 'res/img/objets/obj_83.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Gilet camo', 'Corps', 'Tunique', 1250, 34, 6, 'res/img/objets/obj_84.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Brigandine', 'Corps', 'Tunique', 1850, 37, 6, 'res/img/objets/obj_85.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Kimono', 'Corps', 'Tunique', 3000, 34, 8, 'res/img/objets/obj_86.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Ceinture force', 'Corps', 'Tunique', 3500, 34, 10, 'res/img/objets/obj_87.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Tenu Gaia', 'Corps', 'Tunique', 2800, 24, 12, 'res/img/objets/obj_88.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Speed,Evasion,Path)
	VALUES ('Tenue ninja', 'Corps', 'Tunique', 2500, 30, 6, 1, 2, 'res/img/objets/obj_89.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Speed,Evasion,Path)
	VALUES ('Tenue obscure', 'Corps', 'Tunique', 3000, 32, 3, 2, 1, 'res/img/objets/obj_90.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Wygar', 'Corps', 'Tunique', 4000, 35, 10, 'res/img/objets/obj_91.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Gilet mirage', 'Corps', 'Tunique', 5000, 32, 16, 'res/img/objets/obj_92.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Buste ivoire', 'Corps', 'Tunique', 10000, 42, 8, 'res/img/objets/obj_93.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Chasuble', 'Corps', 'Tunique', 8500, 34, 24, 'res/img/objets/obj_94.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Caban Brint', 'Corps', 'Tunique', 6000, 28, 16, 'res/img/objets/obj_95.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Caban Galmia', 'Corps', 'Tunique', 6500, 26, 18, 'res/img/objets/obj_96.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Costume juge', 'Corps', 'Tunique', 18000, 38, 28, 'res/img/objets/obj_97.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Magic,Resistance,Path)
	VALUES ('Tenue templier', 'Corps', 'Tunique', 16500, 2, 36, 2, 16, 'res/img/objets/obj_98.gif');

/* Bustes */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Buste Minerva', 'Corps', 'Buste', 1500, 28, 14, 'res/img/objets/obj_79.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Combinaison latex', 'Corps', 'Buste', 7000, 28, 16, 'res/img/objets/obj_80.gif');

/* Toges */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge chanvre', 'Corps', 'Toge', 200, 15, 22, 'res/img/objets/obj_99.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge soie', 'Corps', 'Toge', 500, 15, 28, 'res/img/objets/obj_100.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge magus', 'Corps', 'Toge', 1500, 15, 30, 'res/img/objets/obj_101.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge caméléon', 'Corps', 'Toge', 2500, 19, 30, 'res/img/objets/obj_102.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge feu', 'Corps', 'Toge', 1000, 19, 30, 'res/img/objets/obj_103.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge foudre', 'Corps', 'Toge', 1000, 19, 30, 'res/img/objets/obj_104.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge rafale', 'Corps', 'Toge', 1000, 19, 30, 'res/img/objets/obj_105.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge blanche', 'Corps', 'Toge', 3000, 21, 38, 'res/img/objets/obj_106.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Path)
	VALUES ('Toge noire', 'Corps', 'Toge', 3000, 21, 2, 36, 'res/img/objets/obj_107.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge lumière', 'Corps', 'Toge', 4000, 25, 40, 'res/img/objets/obj_108.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge seigneur', 'Corps', 'Toge', 7000, 28, 42, 'res/img/objets/obj_109.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Costume argent', 'Corps', 'Toge', 10000, 30, 38, 'res/img/objets/obj_110.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge rouge', 'Corps', 'Toge', 4000, 22, 31, 'res/img/objets/obj_111.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge sage', 'Corps', 'Toge', 9500, 24, 52, 'res/img/objets/obj_112.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Path)
	VALUES ('Toge magik', 'Corps', 'Toge', 8000, 24, 6, 36, 'res/img/objets/obj_113.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Toge néant', 'Corps', 'Toge', 10000, 32, 36, 'res/img/objets/obj_114.gif');
/* Casques */
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque romain', 'Tete', 'Casque', 250, 4, 2, 'res/img/objets/obj_1.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Fer', 'Tete', 'Casque', 600, 5, 3, 'res/img/objets/obj_2.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque teunon', 'Tete', 'Casque', 1250, 7, 3, 'res/img/objets/obj_30.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque noble', 'Tete', 'Casque', 2000, 9, 4, 'res/img/objets/obj_31.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque diamant', 'Tete', 'Casque', 5000, 11, 5, 'res/img/objets/obj_32.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Genji', 'Tete', 'Casque', 10000, 15, 6, 'res/img/objets/obj_33.gif');
	
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque parade', 'Tete', 'Casque', 8000, 13, 4, 'res/img/objets/obj_34.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Hanya', 'Tete', 'Casque', 10000, 12, 8, 'res/img/objets/obj_35.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Vangaa', 'Tete', 'Casque', 12000, 16, 6, 'res/img/objets/obj_36.gif');

/* Rubans */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Diadème', 'Tete', 'Ruban', 1000, 2, 5, 'res/img/objets/obj_37.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Barette', 'Tete', 'Ruban', 2000, 2, 5, 'res/img/objets/obj_38.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Ruban', 'Tete', 'Ruban', 20000, 2, 5, 'res/img/objets/obj_39.gif');

/* Chapeaux */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Melon plume', 'Tete', 'Chapeau', 175, 2, 4, 'res/img/objets/obj_14.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque magik', 'Tete', 'Chapeau', 900, 3, 3, 'res/img/objets/obj_40.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Evasion,Path)
	VALUES ('Béret vert', 'Tete', 'Chapeau', 400, 2, 2, 2, 'res/img/objets/obj_15.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Resistance,Path)
	VALUES ('Bandeau', 'Tete', 'Chapeau', 1500, 5, 6, 2, 'res/img/objets/obj_41.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Path)
	VALUES ('Coiffe mage', 'Tete', 'Chapeau', 1000, 3, 1, 10, 'res/img/objets/obj_29.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Path)
	VALUES ('Barrette or', 'Tete', 'Chapeau', 2000, 4, 2, 12, 'res/img/objets/obj_42.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Evasion,Path)
	VALUES ('Coiffe voleur', 'Tete', 'Chapeau', 3000, 8, 6, 7, 'res/img/objets/obj_43.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Path)
	VALUES ('Chapeau noir', 'Tete', 'Chapeau', 4000, 4, 4, 16, 'res/img/objets/obj_44.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Chapeau blanc', 'Tete', 'Chapeau', 4000, 4, 14, 'res/img/objets/obj_45.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Speed,Move,Jump,Evasion,Path)
	VALUES ('Coiffe acacia', 'Tete', 'Chapeau', 7500, 2, 5, 2, 2, 1, 1, 5, 'res/img/objets/obj_46.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Tiare', 'Tete', 'Chapeau', 6000, 8, 20, 'res/img/objets/obj_47.gif');
/* Bottes */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Defense,Price,Path)
	VALUES ('Bottes Combat', 'Divers', 'Bottes', 7, 500, 'res/img/objets/obj_115.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Defense, Jump, Price,Path)
	VALUES ('Bottes Cloutées', 'Divers', 'Bottes', 4, 1, 750, 'res/img/objets/obj_116.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Defense,Move,Price,Path)
	VALUES ('Bottes 7 Lieues', 'Divers', 'Bottes', 2, 1, 1000, 'res/img/objets/obj_117.gif');	
INSERT INTO 
	APP.ITEM (Name,Type,Category,Defense,Resistance,Evasion,Price,Path)
	VALUES ('Bottes Rouges', 'Divers', 'Bottes', 3, 5, 2, 2000, 'res/img/objets/obj_118.gif');	
INSERT INTO 
	APP.ITEM (Name,Type,Category,Defense,Price,Path)
	VALUES ('Bottes Plume', 'Divers', 'Bottes', 3, 3000, 'res/img/objets/obj_119.gif');	
INSERT INTO 
	APP.ITEM (Name,Type,Category,Defense, Jump, Price,Path)
	VALUES ('Germinas', 'Divers', 'Bottes', 3, 2, 4000, 'res/img/objets/obj_120.gif');	
INSERT INTO
	APP.ITEM (Name,Type,Category,Defense,Speed,Price,Path)
	VALUES ('Souliers Galmia', 'Divers', 'Bottes', 3, 2, 4500, 'res/img/objets/obj_121.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Defense,Resistance,Price,Path)
	VALUES ('Souliers Fée', 'Divers', 'Bottes', 3, 2, 6000, 'res/img/objets/obj_122.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Defense,Price,Path)
	VALUES ('Caligula', 'Divers', 'Bottes', 3, 10, 500, 'res/img/objets/obj_123.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Defense,Move,Price,Path)
	VALUES ('Chaussons Ninja', 'Divers', 'Bottes', 3, 2, 500, 'res/img/objets/obj_124.gif');


/* Gantelets */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Path)
	VALUES ('Gantelets', 'Divers', 'Gantelets', 1000, 5, 5, 'res/img/objets/obj_125.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Path)
	VALUES ('Gants Voleur', 'Divers', 'Gantelets', 1500, 3, 3, 'res/img/objets/obj_126.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Path)
	VALUES ('Bracers', 'Divers', 'Gantelets', 500, 5, 12, 'res/img/objets/obj_127.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Magic,Resistance,Path)
	VALUES ('Gants Genji', 'Divers', 'Gantelets', 500, 5, 10, 2, 5, 'res/img/objets/obj_128.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Mitaines Feu', 'Divers', 'Gantelets', 500, 8, 10, 'res/img/objets/obj_129.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Resistance,Evasion,Path)
	VALUES ('Gants Ivoire', 'Divers', 'Gantelets', 500, 3, 6, 8, 5, 'res/img/objets/obj_130.gif');


/* Accessoires */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Bague Chance', 'Divers', 'Accessoire', 5000, 3, 5, 'res/img/objets/obj_131.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Magic,Resistance,Path)
	VALUES ('Bague Magique', 'Divers', 'Accessoire', 1200, 3, 10, 'res/img/objets/obj_132.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Bague Ange', 'Divers', 'Accessoire', 1700, 'res/img/objets/obj_133.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Broche Scarabée', 'Divers', 'Accessoire', 5000, 2, 8, 'res/img/objets/obj_134.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Boucle Rubis', 'Divers', 'Accessoire', 3000, 3, 6, 'res/img/objets/obj_135.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Speed,Path)
	VALUES ('Brassard Etoile', 'Divers', 'Accessoire', 500, 4, 6, 4, 2, 'res/img/objets/obj_136.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Gemme Mindu', 'Divers', 'Accessoire', 500, 3, 3, 'res/img/objets/obj_137.gif');

INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Potion', 'Object', 'Object', 25, 'res/img/objets/obj_16.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Potion +', 'Object', 'Object', 100, 'res/img/objets/obj_17.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Maxipotion', 'Object', 'Object', 350, 'res/img/objets/obj_18.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Ether', 'Object', 'Object', 500, 'res/img/objets/obj_28.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Elixir', 'Object', 'Object', 500, 'res/img/objets/obj_49.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Antidote', 'Object', 'Object', 25, 'res/img/objets/obj_19.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Collyre', 'Object', 'Object', 25, 'res/img/objets/obj_20.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Bocca', 'Object', 'Object', 0, 'res/img/objets/obj_21.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Maden kiss', 'Object', 'Object', 25, 'res/img/objets/obj_22.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Defijeur', 'Object', 'Object', 50, 'res/img/objets/obj_23.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Eau bénite', 'Object', 'Object', 1000, 'res/img/objets/obj_24.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Bandage', 'Object', 'Object', 0, 'res/img/objets/obj_25.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Soin global', 'Object', 'Object', 175, 'res/img/objets/obj_27.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Path)
	VALUES ('Queue de phénix', 'Object', 'Object', 0, 'res/img/objets/obj_26.gif');

/* Boucliers */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Resistance,Evasion,Path)
	VALUES ('Bouclier romain', 'Bouclier', 'Bouclier', 200, 2, 4, 'res/img/objets/obj_48.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Resistance,Evasion,Path)
	VALUES ('Bouclier rond', 'Bouclier', 'Bouclier', 500, 4, 5, 'res/img/objets/obj_53.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Evasion,Path)
	VALUES ('Bouclier teuton', 'Bouclier', 'Bouclier', 1000, 2, 6, 7, 'res/img/objets/obj_54.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Resistance,Evasion,Path)
	VALUES ('Bouclier gel', 'Bouclier', 'Bouclier', 1500, 6, 9, 'res/img/objets/obj_55.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Resistance,Evasion,Path)
	VALUES ('Bouclier flamme', 'Bouclier', 'Bouclier', 1500, 6, 9, 'res/img/objets/obj_56.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Evasion,Path)
	VALUES ('Bouclier Aegis', 'Bouclier', 'Bouclier', 3000, 5, 5, 10, 'res/img/objets/obj_57.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Evasion,Path)
	VALUES ('Bouclier Genji', 'Bouclier', 'Bouclier', 12000, 10, 7, 10, 'res/img/objets/obj_58.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Evasion,Path)
	VALUES ('Bouclier sacré', 'Bouclier', 'Bouclier', 6000, 5, 5, 10, 'res/img/objets/obj_59.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Resistance,Evasion,Path)
	VALUES ('Bouclier Shijin', 'Bouclier', 'Bouclier', 4000, 10, 7, 'res/img/objets/obj_60.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Evasion,Path)
	VALUES ('Chocobouclier', 'Bouclier', 'Bouclier', 4200, 10, 'res/img/objets/obj_61.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Resistance,Evasion,Path)
	VALUES ('Séraphica', 'Bouclier', 'Bouclier', 7000, 5, 15, 'res/img/objets/obj_62.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Evasion,Path)
	VALUES ('Bouclier songe', 'Bouclier', 'Bouclier', 8200, 5, 10, 10, 'res/img/objets/obj_63.gif');
/* Ames */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Evasion,Price,Path)
	VALUES ('Ame gobelin', 'Arme', 'Ame', 32, 2, 1, 700, 'res/img/objets/obj_352.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Defense,Magic,Price,Path)
	VALUES ('Ame flan', 'Arme', 'Ame', 34, 10, 2, 1000, 'res/img/objets/obj_353.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Price,Path)
	VALUES ('Ame bombo', 'Arme', 'Ame', 36, 2, 1200, 'res/img/objets/obj_354.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Defense,Magic,Price,Path)
	VALUES ('Ame dragon', 'Arme', 'Ame', 43, 5, 2, 2000, 'res/img/objets/obj_355.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Price,Path)
	VALUES ('Ame ramya', 'Arme', 'Ame', 41, 2, 1500, 'res/img/objets/obj_356.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Defense,Magic,Price,Path)
	VALUES ('Ame insecte', 'Arme', 'Ame', 39, 2, 2, 1300, 'res/img/objets/obj_357.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Evasion,Price,Path)
	VALUES ('Ame panthère', 'Arme', 'Ame', 39, 2, 2, 2000, 'res/img/objets/obj_358.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Ame xylomid', 'Arme', 'Ame', 47, 2, 2, 3000, 'res/img/objets/obj_359.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Price,Path)
	VALUES ('Ame oeil', 'Arme', 'Ame', 45, 2, 1400, 'res/img/objets/obj_360.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Ame mythril', 'Arme', 'Ame', 32, 1, 2000, 'res/img/objets/obj_361.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Price,Path)
	VALUES ('Ame effroi', 'Arme', 'Ame', 49, 2, 2200, 'res/img/objets/obj_362.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Price,Path)
	VALUES ('Ame rukavi', 'Arme', 'Ame', 67, 2, 8100, 'res/img/objets/obj_363.gif');
/* Arcs */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc long', 'Arme', 'Arc', 19, 150, 'res/img/objets/obj_5.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc charbon', 'Arme', 'Arc', 21, 350, 'res/img/objets/obj_6.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc épine', 'Arme', 'Arc', 25, 750, 'res/img/objets/obj_7.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc écaille', 'Arme', 'Arc', 29, 2000, 'res/img/objets/obj_8.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc argent', 'Arme', 'Arc', 23, 1250, 'res/img/objets/obj_9.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc Artémis', 'Arme', 'Arc', 27, 1300, 'res/img/objets/obj_10.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc Yoichi', 'Arme', 'Arc', 33, 1500, 'res/img/objets/obj_11.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Arc mille', 'Arme', 'Arc', 35, 5, 3000, 'res/img/objets/obj_12.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Arc Persée', 'Arme', 'Arc', 42, 2, 5000, 'res/img/objets/obj_13.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Jump,Price,Path)
	VALUES ('Arc mythril', 'Arme', 'Arc', 132, 1, 2000, 'res/img/objets/obj_50.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc lune', 'Arme', 'Arc', 45, 7000, 'res/img/objets/obj_51.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Malarc', 'Arme', 'Arc', 55, 9500, 'res/img/objets/obj_52.gif');
/* Arcs longs */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Arc zéphyr', 'Arme', 'Arc long', 25, 2, 1500, 'res/img/objets/obj_297.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc forestier', 'Arme', 'Arc long', 23, 1000, 'res/img/objets/obj_298.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc composite', 'Arme', 'Arc long', 29, 2500, 'res/img/objets/obj_299.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc double', 'Arme', 'Arc long', 31, 4000, 'res/img/objets/obj_300.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc chasseur', 'Arme', 'Arc long', 33, 5000, 'res/img/objets/obj_301.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Arc Fay', 'Arme', 'Arc long', 31, 2, 2000, 'res/img/objets/obj_302.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc Hadès', 'Arme', 'Arc long', 33, 5000, 'res/img/objets/obj_303.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Defense,Price,Path)
	VALUES ('Arc spécial', 'Arme', 'Arc long', 37, 5, 7000, 'res/img/objets/obj_304.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Arc suprême', 'Arme', 'Arc long', 41, 2, 10000, 'res/img/objets/obj_305.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Price,Path)
	VALUES ('Arc promesse', 'Arme', 'Arc long', 61, 2, 14000, 'res/img/objets/obj_306.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Septième ciel', 'Arme', 'Arc long', 15, 5, 14500, 'res/img/objets/obj_307.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Mythril shot', 'Arme', 'Arc long', 32, 1, 2000, 'res/img/objets/obj_308.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc marduk', 'Arme', 'Arc long', 39, 5000, 'res/img/objets/obj_309.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arc gasutra', 'Arme', 'Arc long', 51, 11000, 'res/img/objets/obj_310.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arbalète', 'Arme', 'Arc long', 42, 7500, 'res/img/objets/obj_301.gif');
/* Armes */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arme Aiot', 'Arme', 'Pistolet', 27, 1000, 'res/img/objets/obj_364.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Canon d''argent', 'Arme', 'Pistolet', 31, 1500, 'res/img/objets/obj_365.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arme émeute', 'Arme', 'Pistolet', 31, 2500, 'res/img/objets/obj_366.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Fusil chaos', 'Arme', 'Pistolet', 33, 4000, 'res/img/objets/obj_367.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arme perdue', 'Arme', 'Pistolet', 31, 1200, 'res/img/objets/obj_368.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Ransei', 'Arme', 'Pistolet', 33, 2000, 'res/img/objets/obj_369.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arme Giot', 'Arme', 'Pistolet', 37, 3000, 'res/img/objets/obj_370.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Longbarrel', 'Arme', 'Pistolet', 39, 6000, 'res/img/objets/obj_371.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Outsider', 'Arme', 'Pistolet', 41, 8000, 'res/img/objets/obj_372.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arme mythril', 'Arme', 'Pistolet', 32, 2000, 'res/img/objets/obj_373.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Bindsnipe', 'Arme', 'Pistolet', 47, 10000, 'res/img/objets/obj_374.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Arme d''appel', 'Arme', 'Pistolet', 59, 15000, 'res/img/objets/obj_375.gif');
/* Epee */
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Path)
	VALUES ('Epee courte', 'Arme', 'Epee', 150, 25, 'res/img/objets/obj_3.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Speed,Evasion,Path)
	VALUES ('Epee argent', 'Arme', 'Epee', 450, 30, 2, 2, 'res/img/objets/obj_151.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Path)
	VALUES ('Epee griffe', 'Arme', 'Epee', 800, 35, 5, 'res/img/objets/obj_152.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Path)
	VALUES ('Epee filou', 'Arme', 'Epee', 1500, 39, 'res/img/objets/obj_153.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Speed,Path)
	VALUES ('Epee rafale', 'Arme', 'Epee', 500, 36, 1, 'res/img/objets/obj_154.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Path)
	VALUES ('Epee vermeille', 'Arme', 'Epee', 1000, 18, 'res/img/objets/obj_155.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Magic,Resistance,Path)
	VALUES ('Raviveur', 'Arme', 'Epee', 2000, 40, 5, 5, 'res/img/objets/obj_156.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Magic,Evasion,Path)
	VALUES ('Vitanova', 'Arme', 'Epee', 4000, 38, 2, 2, 'res/img/objets/obj_157.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Jump,Path)
	VALUES ('Epee mythril', 'Arme', 'Epee', 2000, 33, 1, 'res/img/objets/obj_158.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Resistance,Path)
	VALUES ('Epee victoire', 'Arme', 'Epee', 500, 33, 10, 10, 'res/img/objets/obj_159.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Resistance,Evasion,Path)
	VALUES ('Epee bulbe', 'Arme', 'Epee', 500, 29, 5, 5, 10, 'res/img/objets/obj_160.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Path)
	VALUES ('Chijiraden', 'Arme', 'Epee', 500, 65, 'res/img/objets/obj_161.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack, Magic,Path)
	VALUES ('Epee de glace', 'Arme', 'Epee', 500, 41, 5, 'res/img/objets/obj_162.gif');

/* Griffes */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Poings d''acier', 'Arme', 'Griffes', 29, 1, 250, 'res/img/objets/obj_338.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Rising Sun', 'Arme', 'Griffes', 31, 1, 500, 'res/img/objets/obj_339.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Poings venin', 'Arme', 'Griffes', 35, 1, 1000, 'res/img/objets/obj_340.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Griffes Morphée', 'Arme', 'Griffes', 39, 1, 1600, 'res/img/objets/obj_341.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Poings Kaiser', 'Arme', 'Griffes', 42, 1, 2850, 'res/img/objets/obj_342.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Speed,Evasion,Price,Path)
	VALUES ('Griffes de chat', 'Arme', 'Griffes', 35, 2, 1, 1500, 'res/img/objets/obj_343.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Defense,Evasion,Price,Path)
	VALUES ('Survivor', 'Arme', 'Griffes', 37, 2, 2, 2000, 'res/img/objets/obj_344.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Crocs blancs', 'Arme', 'Griffes', 39, 1, 4000, 'res/img/objets/obj_345.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Evasion,Price,Path)
	VALUES ('God Hand', 'Arme', 'Griffes', 39, 3, 1, 5, 6000, 'res/img/objets/obj_346.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Crocs tigre', 'Arme', 'Griffes', 41, 2, 8000, 'res/img/objets/obj_347.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Griffes trépass', 'Arme', 'Griffes', 43, 1, 10000, 'res/img/objets/obj_348.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Jump,Evasion,Price,Path)
	VALUES ('Griffes mythril', 'Arme', 'Griffes', 32, 1, 1, 2000, 'res/img/objets/obj_349.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Greaseburst', 'Arme', 'Griffes', 59, 1, 13500, 'res/img/objets/obj_350.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Magic Hands', 'Arme', 'Griffes', 52, 1, 12000, 'res/img/objets/obj_351.gif');
/* Instruments */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Cloche démon', 'Arme', 'Instrument', 22, 200, 'res/img/objets/obj_324.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Resistance,Price,Path)
	VALUES ('Cloche verre', 'Arme', 'Instrument', 25, 1, 500, 'res/img/objets/obj_325.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Clairon', 'Arme', 'Instrument', 25, 1, 850, 'res/img/objets/obj_326.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Defense,Price,Path)
	VALUES ('Conque', 'Arme', 'Instrument', 31, 2, 1500, 'res/img/objets/obj_327.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Defense,Price,Path)
	VALUES ('Cloche terre', 'Arme', 'Instrument', 31, 3, 2500, 'res/img/objets/obj_328.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Resistance,Price,Path)
	VALUES ('Black Quena', 'Arme', 'Instrument',33, 2, 3500, 'res/img/objets/obj_329.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Satyr Flute', 'Arme', 'Instrument', 35, 1, 5000, 'res/img/objets/obj_330.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Price,Path)
	VALUES ('Harpe de fée', 'Arme', 'Instrument', 29, 2, 1000, 'res/img/objets/obj_331.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Resistance,Price,Path)
	VALUES ('Aona Flute', 'Arme', 'Instrument', 32, 2, 4000, 'res/img/objets/obj_332.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Carillon soin', 'Arme', 'Instrument', 39, 1, 8000, 'res/img/objets/obj_333.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Evasion,Price,Path)
	VALUES ('Harpe sang', 'Arme', 'Instrument', 22, 1, 10000, 'res/img/objets/obj_334.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Jump,Price,Path)
	VALUES ('Cloche mythril', 'Arme', 'Instrument', 32, 1, 2000, 'res/img/objets/obj_335.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Sombre violon', 'Arme', 'Instrument', 45, 9000, 'res/img/objets/obj_336.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Castagnettes', 'Arme', 'Instrument', 47, 11500, 'res/img/objets/obj_337.gif');
/* lame */
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Path)
	VALUES ('Lame asalto', 'Arme', 'Lame', 750, 28, 'res/img/objets/obj_163.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Evasion,Path)
	VALUES ('Lame fantôme', 'Arme', 'Lame', 1250, 28, 2, 'res/img/objets/obj_164.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Speed,Path)
	VALUES ('Lame soleil', 'Arme', 'Lame', 1500, 37, 2, 'res/img/objets/obj_165.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Path)
	VALUES ('Lame atmos', 'Arme', 'Lame', 2000, 36, 'res/img/objets/obj_166.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Path)
	VALUES ('Langue de feu', 'Arme', 'Lame', 2500, 38, 'res/img/objets/obj_167.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Path)
	VALUES ('Lame de vent', 'Arme', 'Lame', 3500, 40, 'res/img/objets/obj_168.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Path)
	VALUES ('Glaive neige', 'Arme', 'Lame', 4000, 42, 'res/img/objets/obj_169.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Resistance,Path)
	VALUES ('Lame kwigon', 'Arme', 'Lame', 5000, 40, 3, 3, 'res/img/objets/obj_170.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Magic,Path)
	VALUES ('Lame ogun', 'Arme', 'Lame', 7500, 42, 2, 'res/img/objets/obj_171.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Path)
	VALUES ('Lame perle', 'Arme', 'Lame', 2000, 46, 'res/img/objets/obj_172.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Magic,Evasion,Path)
	VALUES ('Lame palaiva', 'Arme', 'Lame', 11000, 33, 10, 2, 'res/img/objets/obj_173.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Magic,Speed,Path)
	VALUES ('Lame vénus', 'Arme', 'Lame', 3000, 45, 2, 2, 'res/img/objets/obj_174.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Magic,Resistance,Path)
	VALUES ('Lame matéria', 'Arme', 'Lame', 500, 17, 15, 10, 'res/img/objets/obj_175.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Jump,Path)
	VALUES ('Lame mythril', 'Arme', 'Lame', 2000, 32,1, 'res/img/objets/obj_176.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Path)
	VALUES ('Lame ébon', 'Arme', 'Lame', 500, 84, 5, 'res/img/objets/obj_177.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Path)
	VALUES ('Lame adaman', 'Arme', 'Lame', 500, 65, 15, 'res/img/objets/obj_178.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Speed,Path)
	VALUES ('Ayvuir rouge', 'Arme', 'Lame', 500, 62, 10, 2, 'res/img/objets/obj_179.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Resistance,Evasion,Path)
	VALUES ('Ayvuir bleu', 'Arme', 'Lame', 500, 51, 10, 2, 'res/img/objets/obj_180.gif');

/* Lances */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Javelot', 'Arme', 'Lance', 31, 1500, 'res/img/objets/obj_312.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Lane lave', 'Arme', 'Lance', 33, 2500, 'res/img/objets/obj_313.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Gae Bolg', 'Arme', 'Lance', 39, 7000, 'res/img/objets/obj_314.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Lance glace', 'Arme', 'Lance', 35, 4000, 'res/img/objets/obj_315.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Jump,Price,Path)
	VALUES ('Partisan', 'Arme', 'Lance', 42, 1, 5000, 'res/img/objets/obj_316.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Jump,Price,Path)
	VALUES ('Lace de Caïn', 'Arme', 'Lance', 47, 1, 3000, 'res/img/objets/obj_317.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Jump,Price,Path)
	VALUES ('Trident', 'Arme', 'Lance', 50, 2, 1, 6000, 'res/img/objets/obj_318.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Jump,Price,Path)
	VALUES ('Poil de dragon', 'Arme', 'Lance', 45, 1, 9000, 'res/img/objets/obj_319.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Jump,Price,Path)
	VALUES ('Lance mythril', 'Arme', 'Lance', 32, 2, 2000, 'res/img/objets/obj_320.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Lance Odin', 'Arme', 'Lance', 55, 12000, 'res/img/objets/obj_321.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Defense,Price,Path)
	VALUES ('Lance bestiale', 'Arme', 'Lance', 51, 10, 14000, 'res/img/objets/obj_322.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Defense,Magic,Resistance,Price,Path)
	VALUES ('Pique Vangaa', 'Arme', 'Lance', 53, 5, 2, 5, 18000, 'res/img/objets/obj_323.gif');
/* Massues */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Price,Path)
	VALUES ('Masse combat', 'Arme', 'Massue', 31, 1000, 'res/img/objets/obj_284.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Masse energy', 'Arme', 'Massue', 29, 2, 5, 1750, 'res/img/objets/obj_285.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Masse druide', 'Arme', 'Massue', 33, 3, 6, 3000, 'res/img/objets/obj_286.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Masse de sage', 'Arme', 'Massue', 31, 8, 8, 4500, 'res/img/objets/obj_287.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Morning Star', 'Arme', 'Massue', 33, 2, 5, 1300, 'res/img/objets/obj_288.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Mandragore', 'Arme', 'Massue', 37, 2, 5, 2000, 'res/img/objets/obj_289.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Bâton de vie', 'Arme', 'Massue', 35, 2, 10, 6000, 'res/img/objets/obj_290.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Masse lotus', 'Arme', 'Massue', 37, 2, 5, 8000, 'res/img/objets/obj_291.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Scorpion', 'Arme', 'Massue', 38, 2, 5, 10000, 'res/img/objets/obj_292.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Masse Zeus', 'Arme', 'Massue', 45, 5, 5, 12000, 'res/img/objets/obj_293.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Jump,Price,Path)
	VALUES ('Masse mythril', 'Arme', 'Massue', 32, 2, 5, 1, 8000, 'res/img/objets/obj_294.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Cactus sting', 'Arme', 'Massue', 62, 2, 5, 15000, 'res/img/objets/obj_295.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Attack,Magic,Resistance,Price,Path)
	VALUES ('Vesper', 'Arme', 'Massue', 39, 2, 5, 13400, 'res/img/objets/obj_296.gif');
/* Sabre */
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Speed,Path)
	VALUES ('Sabre bleu', 'Arme', 'Sabre', 500, 25, 2, 'res/img/objets/obj_181.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Evasion,Path)
	VALUES ('Shamshir', 'Arme', 'Sabre', 1100, 31,2, 'res/img/objets/obj_182.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Evasion,Path)
	VALUES ('Aqua sabre', 'Arme', 'Sabre', 1850, 36, 2, 'res/img/objets/obj_183.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Magic,Path)
	VALUES ('Cimeterre', 'Arme', 'Sabre', 1000, 42, 5, 'res/img/objets/obj_184.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Magic,Evasion,Path)
	VALUES ('Manganèse', 'Arme', 'Sabre', 500, 47, 10, 3, 'res/img/objets/obj_185.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Jump,Path)
	VALUES ('Sabre mythril', 'Arme', 'Sabre', 2000, 32, 1, 'res/img/objets/obj_186.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Resistance,Speed,Path)
	VALUES ('Tulwar', 'Arme', 'Sabre', 3000, 55, 10, 10, 2, 'res/img/objets/obj_187.gif');
INSERT INTO
	APP.ITEM (Name,Type,Category,Price,Attack,Resistance,Evasion,Path)
	VALUES ('Sabre âme', 'Arme', 'Sabre', 500, 39, 10, 5, 'res/img/objets/obj_188.gif');

