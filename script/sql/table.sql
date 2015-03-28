CREATE TABLE Member(
	Name VARCHAR(20) NOT NULL,
	Password CHAR(128) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	PRIMARY KEY(Email)
);

CREATE TABLE Item(
	Name VARCHAR(30) NOT NULL,
	Type VARCHAR(30) NOT NULL,
	Category VARCHAR(30) NOT NULL,
	Price NUMERIC(5,0) NOT NULL,
	Attack NUMERIC(2,0),
	Defense NUMERIC(2,0),
	Magic NUMERIC(2,0),
	Resistance NUMERIC(2,0),
	Move NUMERIC(1,0),
	Jump NUMERIC(1,0),
	Evasion NUMERIC(1,0),
	Path VARCHAR(255),
	PRIMARY KEY(Name)
);

/* Casques */
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Romain', 'Tête', 'Casque', 250, 4, 2, 'res/img/objets/obj_1.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque fer', 'Tête', 'Casque', 600, 5, 3, 'res/img/objets/obj_2.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Teunon', 'Tête', 'Casque', 1250, 7, 3, 'res/img/objets/obj_30.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Noble', 'Tête', 'Casque', 2000, 9, 4, 'res/img/objets/obj_31.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Diamant', 'Tête', 'Casque', 5000, 11, 5, 'res/img/objets/obj_32.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Genji', 'Tête', 'Casque', 10000, 15, 6, 'res/img/objets/obj_33.gif');
	
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Parade', 'Tête', 'Casque', 8000, 13, 4, 'res/img/objets/obj_34.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Hanya', 'Tête', 'Casque', 10000, 12, 8, 'res/img/objets/obj_35.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Vangaa', 'Tête', 'Casque', 12000, 16, 6, 'res/img/objets/obj_36.gif');

/* Rubans */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Diadème', 'Tête', 'Ruban', 1000, 2, 5, 'res/img/objets/obj_37.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Barette', 'Tête', 'Ruban', 2000, 2, 5, 'res/img/objets/obj_38.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Ruban', 'Tête', 'Ruban', 20000, 2, 5, 'res/img/objets/obj_39.gif');

/* Chapeaux */

INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Melon Plume', 'Tête', 'Chapeau', 175, 2, 4, 'res/img/objets/obj_14.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Casque Magik', 'Tête', 'Chapeau', 900, 3, 3, 'res/img/objets/obj_40.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Evasion,Path)
	VALUES ('Béret Vert', 'Tête', 'Chapeau', 400, 2, 2, 2, 'res/img/objets/obj_15.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Attack,Defense,Resistance,Path)
	VALUES ('Bandeau', 'Tête', 'Chapeau', 1500, 5, 6, 2, 'res/img/objets/obj_41.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Path)
	VALUES ('Coiffe Mage', 'Tête', 'Chapeau', 1000, 3, 1, 10, 'res/img/objets/obj_29.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Path)
	VALUES ('Barrette Or', 'Tête', 'Chapeau', 2000, 4, 2, 12, 'res/img/objets/obj_42.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Evasion,Path)
	VALUES ('Coiffe Voleur', 'Tête', 'Chapeau', 3000, 8, 6, 7, 'res/img/objets/obj_43.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Path)
	VALUES ('Chapeau Noir', 'Tête', 'Chapeau', 4000, 4, 4, 16, 'res/img/objets/obj_44.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Chapeau Blanc', 'Tête', 'Chapeau', 4000, 4, 14, 'res/img/objets/obj_45.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Magic,Resistance,Move,Jump,Evasion,Path)
	VALUES ('Coiffe Acacia', 'Tête', 'Chapeau', 7500, 2, 5, 2,, 2, 1, 1, 5, 'res/img/objets/obj_46.gif');
INSERT INTO 
	APP.ITEM (Name,Type,Category,Price,Defense,Resistance,Path)
	VALUES ('Tiare', 'Tête', 'Chapeau', 6000, 8, 20, 'res/img/objets/obj_47.gif');
