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
