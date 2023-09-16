use mysqlproject;

CREATE TABLE suppliers
(
	s_id int NOT NULL,
	supplier varchar(100),
	primary key(s_id)
);
DESC suppliers;


INSERT INTO suppliers VALUES
(1,'Braino Services'),
(2,'Synergy Tech'),
(3,'Softtech IT World'),
(4,'Zyber Computers'),
(5,'Casper Infotech')
;

-- SELECT * FROM suppliers;


create table products
(
	p_id int NOT NULL,
    ProductName varchar(100),
    PartNumber varchar(100),
    ProductLabel varchar(100),
    StartingInventory int,
    InventoryReceived int,
    InventoryShipped int,
    InventoryOnHand int,
    MinimumRequired int,
    primary key(p_id)
);
DESC products;

INSERT INTO products VALUES
	(1,'Apple','Macbook Air A1466','Apple- Mackbook Air A1466',1000,98,60,900,30),
	(2,'HP','14s-er003tu','HP- 14s-er003tu',90,55,64,-394,30),
	(3,'Acer','Nitro5','Acer- Nitro5',50,13,69,42,40),
	(4,'Lenovo','ideapad gaming4','Lenovo- ideapad gaming5',60,11,12,60,20),
	(5,'Dell','vostro','Dell- vostro',15,9,9,8,10),
	(6,'Asus','A928','Asus- A928',7,13,6,54,10),
	(7,'MSI','GE78EX','MSI- GE78EX',598,99,34,56,100),
	(8,'Razer','Blade 15','Razer- Blade 15',30,8,11,10,19),
	(9,'Apple','MGN63HNA','Apple- MGN63HNA',900,500,199,264,900),
	(10,'HP','Pavilion 15','HP- Pavilion 15',9,6,5,8,8),
	(11,'Dell','Alienware x14','Dell- Alienware x14',100,50,30,0,100),
	(12,'Lenovo','Legion 5','Lenovo- Legion 5',150,90,90,75,100),
	(13,'Acer','Aspire 5500U','Acer- Aspire 5500U',10,60,1,60,10),
	(14,'Apple','MLY33HNA','Apple- MLY33HNA',998,552,256,595,1000),
	(15,'Asus','GX650RMZ','Asus- GX650RMZ',24,0,9,12,24),
	(16,'HP','Envy 14s','HP- Envy 14s',99,86,0,93,10),
	(17,'MSI','GF63','MSI- GF63',8,90,40,62,20),
	(18,'HP','Omen 17- ck1023TX','HP- Omen 17- ck1023TX',10,45,0,0,40),
	(19,'Razer','RZ09-0409KED3','Razer- RZ09-0409KED3',50,50,40,50,50),
    (20,'Titan','GT77HX 173','Titan- GT77HX 173',5,11,1,98,10)
    ;
    SELECT * FROM products;
    

create table orders
(
	o_id INT NOT NULL,
    Title VARCHAR(100),
    FirstName VARCHAR(100),
    MiddleName VARCHAR(100),
    LastName VARCHAR(100),
    ProductId INT NOT NULL,
    NumberShipped INT NOT NULL,
    OrderDate DATE,
    PRIMARY KEY(o_id),
    foreign key(ProductId) references products(p_id)
);

DESC orders;

INSERT INTO orders VALUES
(1, 'Ms', 'Amelie', 'Augustus', 'Roocroft', 9, 8, '2021-04-27'),
(2, 'Dr', 'Ariadne', 'Steven', 'Danilchik', 1, 95, '2021-08-09'),
(3, 'Ms', 'Shandy', 'Lila', 'Durbyn', 6, 28, '2021-01-13'),
(4, 'Rev', 'Cosimo', 'Rhody', 'Eakeley', 9, 81, '2021-03-21'),
(5, 'Mrs', 'Jacklyn', 'Daphne', 'Daykin', 8, 39, '2021-08-22'),
(6, 'Dr', 'Barron', 'Valera', 'Klammt', 18, 11, '2022-03-18'),
(7, 'Dr', 'Deb', 'Darcy', 'Walkling', 12, 12, '2020-02-29'),
(8, 'Mr', 'Sylas', 'Elli', 'Jermyn', 5, 79, '2021-03-23'),
(9, 'Rev', 'Berkie', 'Jewell', 'Duffie', 2, 52, '2021-05-31'),
(10, 'Ms', 'Monro', 'Kariotta', 'Giovani', 3, 74, '2020-12-17'),
(11, 'Ms', 'Quinn', 'Liana', 'Murphey', 5, 97, '2020-10-09'),
(12, 'Honorable', 'Murdoch', 'Julia', 'Dalgarnocht', 1, 10, '2020-05-03'),
(13, 'Ms', 'Lyndsay', 'Suki', 'Fonzo', 16, 94, '2021-05-09'),
(14, 'Ms', 'Gaylor', 'Matti', 'Picard', 13, 7, '2021-04-07'),
(15, 'Mr', 'Carlin', 'Annalee', 'Turgoose', 14, 36, '2022-02-20'),
(16, 'Mrs', 'Ham', 'Marguerite', 'Pietraszek', 11, 99, '2021-11-28'),
(17, 'Mr', 'Clementine', 'Irv', 'Kattenhorn', 10, 13, '2022-06-15'),
(18, 'Rev', 'Vinnie', 'Barron', 'Gillise', 16, 75, '2021-08-20'),
(19, 'Rev', 'Phip', 'Erl', 'O''Doghesty', 12, 10, '2022-02-24'),
(20, 'Rev', 'Gerry', 'Benedicto', 'Breeds', 13, 92, '2021-06-27'),
(21, 'Honorable', 'Rickert', 'Barnabe', 'Ferriman', 20, 92, '2022-10-31'),
(22, 'Honorable', 'Jessamyn', 'Katharyn', 'Guice', 4, 29, '2022-04-10'),
(23, 'Mrs', 'Ozzie', 'Charo', 'Shaw', 6, 29, '2022-06-10'),
(24, 'Rev', 'Bibbye', 'Elayne', 'Cockroft', 18, 54, '2022-06-13'),
(25, 'Honorable', 'Orran', 'Ellette', 'Annwyl', 19, 2, '2022-08-16'),
(26, 'Mr', 'Arleta', 'Rosy', 'Lyon', 11, 55, '2020-05-12'),
(27, 'Mr', 'Renell', 'Freddie', 'Overington', 17, 46, '2022-06-09'),
(28, 'Dr', 'Brodie', 'Suzanne', 'Bertelsen', 13, 61, '2022-04-09'),
(29, 'Honorable', 'Anabel', 'Barnebas', 'Doornbos', 14, 56, '2022-01-12'),
(30, 'Mrs', 'Sheila-kathryn', 'Cynthy', 'Blackadder', 7, 46, '2021-01-11'),
(31, 'Honorable', 'Rowe', 'Andra', 'Cucinotta', 5, 80, '2022-11-24'),
(32, 'Mrs', 'Vanna', 'Emmy', 'Tilmouth', 9, 81, '2021-10-23'),
(33, 'Mr', 'Joelynn', 'Magnum', 'Mityushin', 15, 77, '2021-05-28'),
(34, 'Mr', 'Linn', 'Neysa', 'Crim', 16, 90, '2022-05-22'),
(35, 'Honorable', 'Aleen', 'Isis', 'Hynd', 9, 11, '2021-06-22'),
(36, 'Mr', 'Gabriela', 'Laura', 'Tommasi', 11, 6, '2020-03-06'),
(37, 'Rev', 'Monah', 'Francklin', 'Costigan', 3, 88, '2021-08-21'),
(38, 'Rev', 'Shelba', 'Casie', 'Gulk', 15, 18, '2022-10-21'),
(39, 'Ms', 'Zoe', 'Maudie', 'Scimone', 1, 23, '2021-11-10'),
(40, 'Mr', 'Trudie', 'Blisse', 'Kyrkeman', 10, 27, '2022-07-02'),
(41, 'Mr', 'Baudoin', 'Libbie', 'Vannuchi', 6, 44, '2020-06-06'),
(42, 'Dr', 'Herculie', 'Gracia', 'Hubberstey', 9, 69, '2021-10-01'),
(43, 'Ms', 'Brier', 'Gerianne', 'Chupin', 8, 68, '2022-11-15'),
(44, 'Rev', 'Valery', 'Ennis', 'Pauler', 17, 2, '2021-09-25'),
(45, 'Dr', 'Cammy', 'Stesha', 'Rapi', 17, 25, '2020-08-08'),
(46, 'Mr', 'Davita', 'Abdel', 'Tassell', 6, 73, '2021-11-17'),
(47, 'Dr', 'Nickolaus', 'Cully', 'Rayson', 3, 63, '2022-02-21'),
(48, 'Dr', 'Nobe', 'Catharine', 'Cripwell', 8, 79, '2020-09-17'),
(49, 'Dr', 'Freda', 'Rusty', 'Morales', 15, 94, '2022-02-14'),
(50, 'Ms', 'Vale', 'Herby', 'Hawtin', 6, 81, '2022-06-08'),
(51, 'Rev', 'Vilma', 'Douglass', 'Dimbleby', 18, 56, '2022-06-06'),
(52, 'Honorable', 'Oby', 'Madelene', 'Yancey', 6, 19, '2022-04-29'),
(53, 'Mr', 'Lorilyn', 'Jolene', 'Hourstan', 1, 53, '2020-04-11'),
(54, 'Dr', 'Fae', 'Angelina', 'Ravens', 5, 23, '2021-02-13'),
(55, 'Rev', 'Eddi', 'Kasey', 'Antonignetti', 19, 68, '2022-01-26'),
(56, 'Honorable', 'Chiarra', 'Monique', 'Vogt', 8, 43, '2021-12-05'),
(57, 'Honorable', 'Leila', 'Westley', 'Collie', 9, 36, '2020-02-03'),
(58, 'Honorable', 'Stern', 'Bliss', 'Harnott', 13, 25, '2020-06-10'),
(59, 'Dr', 'Rem', 'Jade', 'Binnion', 15, 72, '2021-09-01'),
(60, 'Honorable', 'Daniela', 'Henryetta', 'Hallex', 10, 58, '2020-07-18'),
(61, 'Dr', 'Carmelita', 'Nestor', 'Fairfoull', 10, 65, '2020-11-27'),
(62, 'Ms', 'Auria', 'Juliann', 'Antonio', 8, 61, '2021-06-27'),
(70, 'Honorable', 'Kass', 'Donni', 'Paslow', 12, 51, '2021-12-28'),
(71, 'Mr', 'Banky', 'Gilda', 'Nattriss', 16, 34, '2021-07-06'),
(72, 'Ms', 'Shannen', 'Kenyon', 'Itzkovitch', 18, 96, '2020-12-18'),
(73, 'Dr', 'Mireille', 'Marrissa', 'Dibble', 18, 66, '2022-08-03'),
(74, 'Rev', 'Linea', 'Mikey', 'Duham', 9, 9, '2020-06-03'),
(75, 'Mr', 'Sashenka', 'Payton', 'Gawne', 16, 30, '2022-07-17'),
(76, 'Rev', 'Darsey', 'Edita', 'Ellsbury', 13, 80, '2020-02-08'),
(77, 'Dr', 'Heddie', 'Magdalena', 'Puden', 11, 89, '2020-07-28'),
(78, 'Dr', 'Sandie', 'Jack', 'Guess', 19, 56, '2020-04-01'),
(79, 'Mr', 'Pryce', 'Rutger', 'Dugget', 13, 55, '2021-02-02'),
(80, 'Dr', 'Christyna', 'Mag', 'Churchlow', 11, 9, '2020-03-22'),
(81, 'Rev', 'Talbot', 'Artie', 'Ready', 1, 38, '2020-09-28'),
(82, 'Ms', 'Rees', 'Roselia', 'Roskrug', 13, 23, '2021-11-06'),
(83, 'Honorable', 'Robyn', 'Ambrosio', 'Smithe', 11, 14, '2022-08-10'),
(84, 'Mr', 'Jemima', 'Melodee', 'Van der Mark', 8, 76, '2020-02-01'),
(85, 'Mr', 'Lorena', 'Linnie', 'Enrdigo', 20, 46, '2022-03-18'),
(86, 'Honorable', 'Foster', 'Kelli', 'Emby', 16, 76, '2021-04-06'),
(87, 'Honorable', 'Chelsey', 'Garik', 'Scaplehorn', 12, 49, '2022-09-02'),
(88, 'Ms', 'Aimil', 'Cris', 'Corneljes', 14, 97, '2021-07-04'),
(89, 'Mr', 'Noelyn', 'Keen', 'Von Der Empten', 8, 13, '2021-06-25'),
(90, 'Mrs', 'Cyrill', 'Garek', 'Shippam', 15, 82, '2020-01-09'),
(91, 'Dr', 'Kimberlee', 'Mallory', 'Semiras', 12, 34, '2021-01-24'),
(92, 'Mr', 'Griffy', 'Rudolf', 'Euels', 18, 36, '2020-07-09'),
(93, 'Rev', 'Cassaundra', 'Amerigo', 'Chasson', 13, 39, '2021-03-15'),
(94, 'Mrs', 'Marcello', 'Nikaniki', 'Dilley', 8, 34, '2022-11-13'),
(95, 'Honorable', 'Koressa', 'Barri', 'Nozzolinii', 18, 80, '2021-09-20'),
(96, 'Ms', 'Giselle', 'Dynah', 'Kittredge', 19, 1, '2020-01-01'),
(97, 'Ms', 'Asher', 'Norby', 'Bader', 17, 97, '2020-01-27'),
(98, 'Mr', 'Trstram', 'Winnie', 'Russel', 7, 71, '2022-08-19'),
(99, 'Mrs', 'Sanson', 'Ema', 'Abbey', 17, 5, '2022-06-04'),
(100, 'Rev', 'Shane', 'Gale', 'Laidlaw', 11, 76, '2021-08-12')
;
SELECT * FROM orders;



create table purchases
(
	purchase_id INT NOT NULL,
    SupplierId INT NOT NULL,
    ProductId INT NOT NULL,
    NumberReceived INT,
    PurchaseDate DATE,
    PRIMARY KEY(purchase_id),
    foreign key(ProductId) references products(p_id),
    foreign key(SupplierId) references suppliers(s_id)
);
DESC purchases;

INSERT INTO purchases VALUES
(1, 3, 5, 69, '2020-05-15'),
(2, 4, 3, 41, '2020-10-21'),
(3, 5, 2, 61, '2021-09-06'),
(4, 5, 14, 44, '2022-05-08'),
(5, 4, 5, 7, '2021-07-23'),
(6, 2, 1, 37, '2021-11-30'),
(7, 3, 1, 8, '2021-03-02'),
(8, 4, 14, 46, '2021-04-22'),
(9, 1, 18, 96, '2021-02-01'),
(10, 1, 14, 56, '2021-11-28'),
(11, 3, 11, 36, '2021-03-07'),
(12, 5, 8, 48, '2021-10-13'),
(13, 2, 13, 13, '2021-11-25'),
(14, 5, 18, 78, '2022-06-20'),
(15, 5, 5, 21, '2020-10-06'),
(16, 1, 13, 35, '2022-08-23'),
(17, 4, 11, 92, '2020-05-06'),
(18, 2, 11, 41, '2020-07-10'),
(19, 2, 16, 74, '2022-08-04'),
(20, 5, 20, 63, '2022-11-01'),
(21, 1, 14, 44, '2021-01-02'),
(22, 1, 18, 34, '2021-12-09'),
(23, 2, 15, 59, '2022-01-10'),
(24, 1, 10, 37, '2022-02-21'),
(25, 1, 20, 42, '2020-08-25'),
(26, 4, 11, 68, '2020-01-28'),
(27, 4, 5, 100, '2020-10-04'),
(28, 2, 6, 12, '2020-03-26'),
(29, 2, 16, 39, '2022-07-20'),
(30, 2, 20, 87, '2021-12-06'),
(31, 1, 8, 45, '2022-08-06'),
(32, 3, 8, 55, '2021-09-08'),
(33, 5, 15, 93, '2021-01-29'),
(34, 5, 3, 87, '2022-07-26'),
(35, 2, 6, 67, '2022-11-05'),
(36, 4, 1, 17, '2021-02-23'),
(37, 1, 14, 72, '2021-10-28'),
(38, 1, 17, 79, '2021-07-13'),
(39, 4, 9, 91, '2021-01-28'),
(40, 2, 1, 64, '2022-02-24'),
(41, 2, 9, 3, '2021-05-08'),
(42, 3, 15, 73, '2022-10-18'),
(43, 2, 19, 93, '2021-07-13'),
(44, 3, 18, 81, '2020-09-05'),
(45, 2, 18, 45, '2021-02-23'),
(46, 4, 12, 5, '2020-05-31'),
(47, 5, 13, 7, '2020-04-21'),
(48, 2, 1, 3, '2022-11-25'),
(49, 5, 8, 70, '2021-07-21'),
(50, 1, 3, 96, '2022-04-10'),
(51, 3, 4, 19, '2021-08-13'),
(52, 1, 12, 69, '2020-07-07'),
(53, 4, 10, 83, '2020-09-13'),
(54, 1, 13, 19, '2020-01-11'),
(55, 2, 12, 37, '2020-08-02'),
(56, 2, 7, 12, '2021-07-01'),
(57, 3, 2, 39, '2022-05-24'),
(58, 5, 15, 73, '2022-03-07'),
(59, 1, 12, 57, '2022-03-24'),
(60, 1, 16, 97, '2022-09-06'),
(61, 3, 10, 64, '2020-11-21'),
(62, 3, 8, 54, '2021-03-05'),
(63, 1, 10, 40, '2020-11-13'),
(64, 1, 16, 0, '2020-05-30'),
(65, 3, 3, 0, '2021-11-17'),
(66, 5, 11, 83, '2020-11-08'),
(67, 5, 4, 81, '2022-05-04'),
(68, 3, 11, 37, '2021-02-17'),
(69, 2, 15, 85, '2022-11-28'),
(70, 4, 15, 14, '2022-02-21'),
(71, 4, 3, 66, '2022-01-20'),
(72, 2, 19, 73, '2022-05-06'),
(73, 2, 18, 71, '2020-07-29'),
(74, 2, 9, 41, '2022-04-20'),
(75, 2, 10, 36, '2020-11-15'),
(76, 3, 13, 20, '2022-03-24'),
(77, 3, 3, 32, '2022-03-10'),
(78, 3, 10, 95, '2022-10-05'),
(79, 5, 9, 75, '2020-11-21'),
(80, 4, 20, 83, '2022-01-08'),
(81, 3, 20, 98, '2021-01-21'),
(82, 2, 4, 57, '2020-06-23'),
(83, 2, 3, 1, '2022-09-25'),
(84, 1, 19, 34, '2020-02-22'),
(85, 5, 17, 81, '2020-01-15'),
(86, 3, 17, 63, '2021-06-12'),
(87, 3, 6, 46, '2020-03-15'),
(88, 3, 5, 90, '2022-04-04'),
(89, 3, 20, 45, '2020-02-16'),
(90, 4, 6, 85, '2021-06-30'),
(91, 2, 3, 29, '2021-01-04'),
(92, 1, 3, 0, '2021-10-22'),
(93, 4, 11, 26, '2021-01-12'),
(94, 2, 18, 21, '2022-12-29'),
(95, 1, 1, 26,'2021-02-07'),
(96, 5, 6, 59, '2022-07-25'),
(97, 4, 3, 38, '2021-02-03'),
(98, 2, 19, 98, '2021-11-24'),
(99, 3, 1, 97, '2021-09-02'),
(100, 5, 9, 10, '2021-04-30')
;

SELECT * FROM purchases;


