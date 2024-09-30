CREATE SCHEMA `homework_1`;

use homework_1;

-- Создание таблицы 'Customers'.

CREATE TABLE `homework_1`.`customers` (
    `CustomerID` INT PRIMARY KEY NOT NULL,
    `CustomerName` VARCHAR(100) NOT NULL,
    `ContactName` VARCHAR(100) NOT NULL,
    `Address` VARCHAR(100) NOT NULL,
    `City` VARCHAR(100) NOT NULL,
    `PostalCode` VARCHAR(100) NULL,
    `Country` VARCHAR(100) NOT NULL
);

-- Добавление данных в таблицу 'Customers'.

INSERT INTO `homework_1`.`customers` (`CustomerID`,`CustomerName`,`ContactName`,`Address`,`City`,
`PostalCode`,`Country`)
VALUES
(1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany'),
(2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','05021','Mexico'),
(3,'Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','05023','Mexico'),
(4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK'),
(5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden'),
(6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany'),
(7,'Blondel père et fils','Frédérique Citeaux','24, place Kléber','Strasbourg','67000','France'),
(8,'Bólido Comidas preparadas','Martín Sommer','C/ Araquil, 67','Madrid','28023','Spain'),
(9,'Bon app''','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France'),
(10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada'),
(11,'B''s Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK'),
(12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina'),
(13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','México D.F.','05022','Mexico'),
(14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland'),
(15,'Comércio Mineiro','Pedro Afonso','Av. dos Lusíadas, 23','São Paulo','05432-043','Brazil'),
(16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK'),
(17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany'),
(18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France'),
(19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK'),
(20,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria'),
(21,'Familia Arquibaldo','Aria Cruz','Rua Orós, 92','São Paulo','05442-030','Brazil'),
(22,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain'),
(23,'Folies gourmandes','Martine Rancé','184, chaussée de Tournai','Lille','59000','France'),
(24,'Folk och fä HB','Maria Larsson','Åkergatan 24','Bräcke','S-844 67','Sweden'),
(25,'Frankenversand','Peter Franken','Berliner Platz 43','München','80805','Germany'),
(26,'France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France'),
(27,'Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy'),
(28,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Jardim das rosas n. 32','Lisboa','1675','Portugal'),
(29,'Galería del gastrónomo','Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona','08022','Spain'),
(30,'Godos Cocina Típica','José Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain'),
(31,'Gourmet Lanchonetes','André Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil'),
(32,'Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA'),
(33,'GROSELLA-Restaurante','Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','1081','Venezuela'),
(34,'Hanari Carnes','Mario Pontes','Rua do Paço, 67','Rio de Janeiro','05454-876','Brazil'),
(35,'HILARIÓN-Abastos','Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal',
'5022','Venezuela'),
(36,'Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA'),
(37,'Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork',NULL,'Ireland'),
(38,'Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK'),
(39,'Königlich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany'),
(40,'La corne d''abondance','Daniel Tonini','67, avenue de l''Europe','Versailles','78000','France'),
(41,'La maison d''Asie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France'),
(42,'Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada'),
(43,'Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA'),
(44,'Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M.','60528','Germany'),
(45,'Let''s Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA'),
(46,'LILA-Supermercado','Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto',
'3508','Venezuela'),
(47,'LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela'),
(48,'Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA'),
(49,'Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy'),
(50,'Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium'),
(51,'Mère Paillarde','Jean Fresnière','43 rue St. Laurent','Montréal','H1J 1C3','Canada'),
(52,'Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','04179','Germany'),
(53,'North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK'),
(54,'Océano Atlántico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',
'1010','Argentina'),
(55,'Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA'),
(56,'Ottilies Käseladen','Henriette Pfalzheim','Mehrheimerstr. 369','Köln','50739','Germany'),
(57,'Paris spécialités','Marie Bertrand','265, boulevard Charonne','Paris','75012','France'),
(58,'Pericles Comidas clásicas','Guillermo Fernández','Calle Dr. Jorge Cash 321','México D.F.','05033','Mexico'),
(59,'Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria'),
(60,'Princesa Isabel Vinhoss','Isabel de Castro','Estrada da saúde n. 58','Lisboa','1756','Portugal'),
(61,'Que Delícia','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil'),
(62,'Queen Cozinha','Lúcia Carvalho','Alameda dos Canàrios, 891','São Paulo','05487-020','Brazil'),
(63,'QUICK-Stop','Horst Kloss','Taucherstraße 10','Cunewalde','01307','Germany'),
(64,'Rancho grande','Sergio Gutiérrez','Av. del Libertador 900','Buenos Aires','1010','Argentina'),
(65,'Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA'),
(66,'Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy'),
(67,'Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil'),
(68,'Richter Supermarkt','Michael Holz','Grenzacherweg 237','Genève','1203','Switzerland'),
(69,'Romero y tomillo','Alejandra Camino','Gran Vía, 1','Madrid','28001','Spain'),
(70,'Santé Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway'),
(71,'Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA'),
(72,'Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK'),
(73,'Simons bistro','Jytte Petersen','Vinbæltet 34','København','1734','Denmark'),
(74,'Spécialités du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France'),
(75,'Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA'),
(76,'Suprêmes délices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium'),
(77,'The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA'),
(78,'The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA'),
(79,'Toms Spezialitäten','Karin Josephs','Luisenstr. 48','Münster','44087','Germany'),
(80,'Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','México D.F.','05033','Mexico'),
(81,'Tradição Hipermercados','Anabela Domingues','Av. Inês de Castro, 414','São Paulo','05634-030','Brazil'),
(82,'Trail''s Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA'),
(83,'Vaffeljernet','Palle Ibsen','Smagsløget 45','Århus','8200','Denmark'),
(84,'Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France'),
(85,'Vins et alcools Chevalier','Paul Henriot','59 rue de l''Abbaye','Reims','51100','France'),
(86,'Die Wandernde Kuh','Rita Müller','Adenauerallee 900','Stuttgart','70563','Germany'),
(87,'Wartian Herkku','Pirkko Koskitalo','Torikatu 38','Oulu','90110','Finland'),
(88,'Wellington Importadora','Paula Parente','Rua do Mercado, 12','Resende','08737-363','Brazil'),
(89,'White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA'),
(90,'Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland'),
(91,'Wolski','Zbyszek','ul. Filtrowa 68','Walla','01-012','Poland');

-- Создание таблицы 'Employees'.

CREATE TABLE `homework_1`.`employees` (
    `EmployeeID` INT PRIMARY KEY NOT NULL,
    `LastName` VARCHAR(45) NOT NULL,
    `FirstName` VARCHAR(45) NOT NULL,
    `BirthDate` DATE NOT NULL,
    `Photo` VARCHAR(45) NOT NULL,
    `Notes` TEXT(500) NOT NULL
);

-- Добавление данных в таблицу 'Employees'.

INSERT INTO `homework_1`.`employees` (`EmployeeID`, `LastName`, `FirstName`, `BirthDate`, `Photo`, `Notes`) 
VALUES
(1, 'Davolio', 'Nancy', '1968-12-08', 'EmpID1.pic', 'Education includes a BA in psychology from 
Colorado State University. 
She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.'),
(2, 'Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international 
marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company 
as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member 
of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.'),
(3, 'Leverling', 'Janet', '1963-08-30', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston College). 
She has also completed a certificate program in food retailing management. Janet was hired as a sales associate 
and was promoted to sales representative.'),
(4, 'Peacock', 'Margaret', '1958-09-19', 'EmpID4.pic', 'Margaret holds a BA in English literature from Concordia 
College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office 
before returning to her permanent post in Seattle.'),
(5, 'Buchanan', 'Steven', '1955-03-04', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews University, 
Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation 
program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. 
Mr. Buchanan has completed the courses \'Successful Telemarketing\' and \'International Sales Management\'. 
He is fluent in French.'),
(6, 'Suyama', 'Michael', '1963-07-02', 'EmpID6.pic', 'Michael is a graduate of Sussex University (MA, economics) 
and the University of California at Los Angeles (MBA, marketing). He has also taken the courses 
\'Multi-Cultural Selling\' and \'Time Management for the Sales Professional\'. He is fluent in Japanese and can read 
and write French, Portuguese, and Spanish.'),
(7, 'King', 'Robert', '1960-05-29', 'EmpID7.pic', 'Robert King served in the Peace Corps and traveled extensively 
before completing his degree in English at the University of Michigan and then joining the company. After completing 
a course entitled \'Selling in Europe\', he was transferred to the London office.'),
(8, 'Callahan', 'Laura', '1958-01-09', 'EmpID8.pic', 'Laura received a BA in psychology from the University 
of Washington. 
She has also completed a course in business French. She reads and writes French.'),
(9, 'Dodsworth', 'Anne', '1969-07-02', 'EmpID9.pic', 'Anne has a BA degree in English from St. Lawrence College. 
She is fluent in French and German.'),
(10, 'West', 'Adam', '1928-09-19', 'EmpID10.pic', 'An old chum.');


-- Создание таблицы 'Orders'.

CREATE TABLE `homework_1`.`orders` (
  `OrderID` INT PRIMARY KEY NOT NULL,
  `CustomerID` INT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `OrderDate` VARCHAR(45) NOT NULL,
  `ShipperID` INT NOT NULL
);

-- Добавление данных в таблицу 'Orders'.

INSERT INTO `homework_1`.`orders` (`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`ShipperID`)
VALUES
(10248,90,5,'2023-07-04',3),
(10249,81,6,'2023-07-05',1),
(10250,34,4,'2023-07-08',2),
(10251,84,3,'2023-07-08',1),
(10252,76,4,'2023-07-09',2),
(10253,34,3,'2023-07-10',2),
(10254,14,5,'2023-07-11',2),
(10255,68,9,'2023-07-12',3),
(10256,88,3,'2023-07-15',2),
(10257,35,4,'2023-07-16',3),
(10258,20,1,'2023-07-17',1),
(10259,13,4,'2023-07-18',3),
(10260,55,4,'2023-07-19',1),
(10261,61,4,'2023-07-19',2),
(10262,65,8,'2023-07-22',3),
(10263,20,9,'2023-07-23',3),
(10264,24,6,'2023-07-24',3),
(10265,7,2,'2023-07-25',1),
(10266,87,3,'2023-07-26',3),
(10267,25,4,'2023-07-29',1),
(10268,33,8,'2023-07-30',3),
(10269,89,5,'2023-07-31',1),
(10270,87,1,'2023-08-01',1),
(10271,75,6,'2023-08-01',2),
(10272,65,6,'2023-08-02',2),
(10273,63,3,'2023-08-05',3),
(10274,85,6,'2023-08-06',1),
(10275,49,1,'2023-08-07',1),
(10276,80,8,'2023-08-08',3),
(10277,52,2,'2023-08-09',3),
(10278,5,8,'2023-08-12',2),
(10279,44,8,'2023-08-13',2),
(10280,5,2,'2023-08-14',1),
(10281,69,4,'2023-08-14',1),
(10282,69,4,'2023-08-15',1),
(10283,46,3,'2023-08-16',3),
(10284,44,4,'2023-08-19',1),
(10285,63,1,'2023-08-20',2),
(10286,63,8,'2023-08-21',3),
(10287,67,8,'2023-08-22',3),
(10288,66,4,'2023-08-23',1),
(10289,11,7,'2023-08-26',3),
(10290,15,8,'2023-08-27',1),
(10291,61,6,'2023-08-27',2),
(10292,81,1,'2023-08-28',2),
(10293,80,1,'2023-08-29',3),
(10294,65,4,'2023-08-30',2),
(10295,85,2,'2023-09-02',2),
(10296,46,6,'2023-09-03',1),
(10297,7,5,'2023-09-04',2),
(10298,37,6,'2023-09-05',2),
(10299,67,4,'2023-09-06',2),
(10300,49,2,'2023-09-09',2),
(10301,86,8,'2023-09-09',2),
(10302,76,4,'2023-09-10',2),
(10303,30,7,'2023-09-11',2),
(10304,80,1,'2023-09-12',2),
(10305,55,8,'2023-09-13',3),
(10306,69,1,'2023-09-16',3),
(10307,48,2,'2023-09-17',2),
(10308,2,7,'2023-09-18',3),
(10309,37,3,'2023-09-19',1),
(10310,77,8,'2023-09-20',2),
(10311,18,1,'2023-09-20',3),
(10312,86,2,'2023-09-23',2),
(10313,63,2,'2023-09-24',2),
(10314,65,1,'2023-09-25',2),
(10315,38,4,'2023-09-26',2),
(10316,65,1,'2023-09-27',3),
(10317,48,6,'2023-09-30',1),
(10318,38,8,'2023-10-01',2),
(10319,80,7,'2023-10-02',3),
(10320,87,5,'2023-10-03',3),
(10321,38,3,'2023-10-03',2),
(10322,58,7,'2023-10-04',3),
(10323,39,4,'2023-10-07',1),
(10324,71,9,'2023-10-08',1),
(10325,39,1,'2023-10-09',3),
(10326,8,4,'2023-10-10',2),
(10327,24,2,'2023-10-11',1),
(10328,28,4,'2023-10-14',3),
(10329,75,4,'2023-10-15',2),
(10330,46,3,'2023-10-16',1),
(10331,9,9,'2023-10-16',1),
(10332,51,3,'2023-10-17',2),
(10333,87,5,'2023-10-18',3),
(10334,84,8,'2023-10-21',2),
(10335,37,7,'2023-10-22',2),
(10336,60,7,'2023-10-23',2),
(10337,25,4,'2023-10-24',3),
(10338,55,4,'2023-10-25',3),
(10339,51,2,'2023-10-28',2),
(10340,9,1,'2023-10-29',3),
(10341,73,7,'2023-10-29',3),
(10342,25,4,'2023-10-30',2),
(10343,44,4,'2023-10-31',1),
(10344,89,4,'2023-11-01',2),
(10345,63,2,'2023-11-04',2),
(10346,65,3,'2023-11-05',3),
(10347,21,4,'2023-11-06',3),
(10348,86,4,'2023-11-07',2),
(10349,75,7,'2023-11-08',1),
(10350,41,6,'2023-11-11',2),
(10351,20,1,'2023-11-11',1),
(10352,28,3,'2023-11-12',3),
(10353,59,7,'2023-11-13',3),
(10354,58,8,'2023-11-14',3),
(10355,4,6,'2023-11-15',1),
(10356,86,6,'2023-11-18',2),
(10357,46,1,'2023-11-19',3),
(10358,41,5,'2023-11-20',1),
(10359,72,5,'2023-11-21',3),
(10360,7,4,'2023-11-22',3),
(10361,63,1,'2023-11-22',2),
(10362,9,3,'2023-11-25',1),
(10363,17,4,'2023-11-26',3),
(10364,19,1,'2023-11-26',1),
(10365,3,3,'2023-11-27',2),
(10366,29,8,'2023-11-28',2),
(10367,83,7,'2023-11-28',3),
(10368,20,2,'2023-11-29',2),
(10369,75,8,'2023-12-02',2),
(10370,14,6,'2023-12-03',2),
(10371,41,1,'2023-12-03',1),
(10372,62,5,'2023-12-04',2),
(10373,37,4,'2023-12-05',3),
(10374,91,1,'2023-12-05',3),
(10375,36,3,'2023-12-06',2),
(10376,51,1,'2023-12-09',2),
(10377,72,1,'2023-12-09',3),
(10378,24,5,'2023-12-10',3),
(10379,61,2,'2023-12-11',1),
(10380,37,8,'2023-12-12',3),
(10381,46,3,'2023-12-12',3),
(10382,20,4,'2023-12-13',1),
(10383,4,8,'2023-12-16',3),
(10384,5,3,'2023-12-16',3),
(10385,75,1,'2023-12-17',2),
(10386,21,9,'2023-12-18',3),
(10387,70,1,'2023-12-18',2),
(10388,72,2,'2023-12-19',1),
(10389,10,4,'2023-12-20',2),
(10390,20,6,'2023-12-23',1),
(10391,17,3,'2023-12-23',3),
(10392,59,2,'2023-12-24',3),
(10393,71,1,'2023-12-25',3),
(10394,36,1,'2023-12-25',3),
(10395,35,6,'2023-12-26',1),
(10396,25,1,'2023-12-27',3),
(10397,60,5,'2023-12-27',1),
(10398,71,2,'2023-12-30',3),
(10399,83,8,'2023-12-31',3),
(10400,19,1,'2024-01-01',3),
(10401,65,1,'2024-01-01',1),
(10402,20,8,'2024-01-02',2),
(10403,20,4,'2024-01-03',3),
(10404,49,2,'2024-01-03',1),
(10405,47,1,'2024-01-06',1),
(10406,62,7,'2024-01-07',1),
(10407,56,2,'2024-01-07',2),
(10408,23,8,'2024-01-08',1),
(10409,54,3,'2024-01-09',1),
(10410,10,3,'2024-01-10',3),
(10411,10,9,'2024-01-10',3),
(10412,87,8,'2024-01-13',2),
(10413,41,3,'2024-01-14',2),
(10414,21,2,'2024-01-14',3),
(10415,36,3,'2024-01-15',1),
(10416,87,8,'2024-01-16',3),
(10417,73,4,'2024-01-16',3),
(10418,63,4,'2024-01-17',1),
(10419,68,4,'2024-01-20',2),
(10420,88,3,'2024-01-21',1),
(10421,61,8,'2024-01-21',1),
(10422,27,2,'2024-01-22',1),
(10423,31,6,'2024-01-23',3),
(10424,51,7,'2024-01-23',2),
(10425,41,6,'2024-01-24',2),
(10426,29,4,'2024-01-27',1),
(10427,59,4,'2024-01-27',2),
(10428,66,7,'2024-01-28',1),
(10429,37,3,'2024-01-29',2),
(10430,20,4,'2024-01-30',1),
(10431,10,4,'2024-01-30',2),
(10432,75,3,'2024-01-31',2),
(10433,60,3,'2024-02-03',3),
(10434,24,3,'2024-02-03',2),
(10435,16,8,'2024-02-04',2),
(10436,7,3,'2024-02-05',2),
(10437,87,8,'2024-02-05',1),
(10438,79,3,'2024-02-06',2),
(10439,51,6,'2024-02-07',3),
(10440,71,4,'2024-02-10',2),
(10441,55,3,'2024-02-10',2),
(10442,20,3,'2024-02-11',2),
(10443,66,8,'2024-02-12',1);


-- Создание таблицы 'Products'.

CREATE TABLE `homework_1`.`products` (
  `ProductID` INT PRIMARY KEY NOT NULL,
  `ProductName` VARCHAR(100) NOT NULL,
  `SupplierID` INT NOT NULL,
  `CategoryID` INT NOT NULL,
  `Unit` VARCHAR(100) NOT NULL,
  `Price` DOUBLE NOT NULL
);


-- Добавление данных в таблицу 'Products'.

INSERT INTO `homework_1`.`products` (`ProductID`,`ProductName`,`SupplierID`,`CategoryID`,`Unit`,`Price`)
VALUES
(1,'Chais',1,1,'10 boxes x 20 bags',18),
(2,'Chang',1,1,'24 - 12 oz bottles',19),
(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10),
(4,'Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22),
(5,'Chef Anton''s Gumbo Mix',2,2,'36 boxes',21.35),
(6,'Grandma''s Boysenberry Spread',3,2,'12 - 8 oz jars',25),
(7,'Uncle Bob''s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30),
(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40),
(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97),
(10,'Ikura',4,8,'12 - 200 ml jars',31),
(11,'Queso Cabrales',5,4,'1 kg pkg.',21),
(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38),
(13,'Konbu',6,8,'2 kg box',6),
(14,'Tofu',6,7,'40 - 100 g pkgs.',23.25),
(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.5),
(16,'Pavlova',7,3,'32 - 500 g boxes',17.45),
(17,'Alice Mutton',7,6,'20 - 1 kg tins',39),
(18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5),
(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2),
(20,'Sir Rodney''s Marmalade',8,3,'30 gift boxes',81),
(21,'Sir Rodney''s Scones',8,3,'24 pkgs. x 4 pieces',10),
(22,'Gustaf''s Knäckebröd',9,5,'24 - 500 g pkgs.',21),
(23,'Tunnbröd',9,5,'12 - 250 g pkgs.',9),
(24,'Guaraná Fantástica',10,1,'12 - 355 ml cans',4.5),
(25,'NuNuCa Nuß-Nougat-Creme',11,3,'20 - 450 g glasses',14),
(26,'Gumbär Gummibärchen',11,3,'100 - 250 g bags',31.23),
(27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9),
(28,'Rössle Sauerkraut',12,7,'25 - 825 g cans',45.6),
(29,'Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79),
(30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89),
(31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5),
(32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32),
(33,'Geitost',15,4,'500 g',2.5),
(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14),
(35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18),
(36,'Inlagd Sill',17,8,'24 - 250 g jars',19),
(37,'Gravad lax',17,8,'12 - 500 g pkgs.',26),
(38,'Côte de Blaye',18,1,'12 - 75 cl bottles',263.5),
(39,'Chartreuse verte',18,1,'750 cc per bottle',18),
(40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.4),
(41,'Jack''s New England Clam Chowder',19,8,'12 - 12 oz cans',9.65),
(42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14),
(43,'Ipoh Coffee',20,1,'16 - 500 g tins',46),
(44,'Gula Malacca',20,2,'20 - 2 kg bags',19.45),
(45,'Røgede sild',21,8,'1k pkg.',9.5),
(46,'Spegesild',21,8,'4 - 450 g glasses',12),
(47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.5),
(48,'Chocolade',22,3,'10 pkgs.',12.75),
(49,'Maxilaku',23,3,'24 - 50 g pkgs.',20),
(50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.25),
(51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53),
(52,'Filo Mix',24,5,'16 - 2 kg boxes',7),
(53,'Perth Pasties',24,6,'48 pieces',32.8),
(54,'Tourtière',25,6,'16 pies',7.45),
(55,'Pâté chinois',25,6,'24 boxes x 2 pies',24),
(56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38),
(57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5),
(58,'Escargots de Bourgogne',27,8,'24 pieces',13.25),
(59,'Raclette Courdavault',28,4,'5 kg pkg.',55),
(60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34),
(61,'Sirop d''érable',29,2,'24 - 500 ml bottles',28.5),
(62,'Tarte au sucre',29,3,'48 pies',49.3),
(63,'Vegie-spread',7,2,'15 - 625 g jars',43.9),
(64,'Wimmers gute Semmelknödel',12,5,'20 bags x 4 pieces',33.25),
(65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.05),
(66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17),
(67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14),
(68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.5),
(69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36),
(70,'Outback Lager',7,1,'24 - 355 ml bottles',15),
(71,'Fløtemysost',15,4,'10 - 500 g pkgs.',21.5),
(72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.8),
(73,'Röd Kaviar',17,8,'24 - 150 g jars',15),
(74,'Longlife Tofu',4,7,'5 kg pkg.',10),
(75,'Rhönbräu Klosterbier',12,1,'24 - 0.5 l bottles',7.75),
(76,'Lakkalikööri',23,1,'500 ml',18),
(77,'Original Frankfurter grüne Soße',12,2,'12 boxes',13);


/*
    Задание №1: Уникальные страны клиентов.
    Определите, сколько уникальных стран представлено среди клиентов.
*/

SELECT 
    COUNT(DISTINCT Country) AS cnt_unique_countries
FROM
    Customers;


/*
    Задание №2: Клиенты из Бразилии.
    Определите количество клиентов, которые проживают в Бразилии.
*/

SELECT 
    COUNT(*) AS cnt_brazil_customers
FROM
    Customers
WHERE
    Country = 'Brazil';



/*
    Задание №3: Средняя цена и количество товаров в категории 5.
    Посчитайте среднюю цену и общее количество товаров в категории с идентификатором 5.
*/

SELECT 
    AVG(Price) AS avg_price, 
    COUNT(*) AS cnt_total_products
FROM
    Products
WHERE
    CategoryID = 5;


/*
    Задание №4: Средний возраст сотрудников на 2024-01-01.
    Вычислите средний возраст сотрудников на дату 2024-01-01
*/

SELECT 
    round(AVG(AGE), 1)  AS avg_age
FROM
    (SELECT 
        TIMESTAMPDIFF(YEAR, BirthDate, '2024-01-01') AS age
    FROM
        Employees) AS age_list;


/*
    Задание №5: Заказы в период 30 дней до 2024-02-15.
    Найдите заказы, сделанные в период с 16 января по 15 февраля 2024 года, и отсортируйте их по дате заказа.

*/

SELECT 
    *
FROM
    Orders
WHERE
    OrderDate BETWEEN '2024-01-16' AND '2024-02-15'
ORDER BY OrderDate;


/*
    Задание №6: Количество заказов за ноябрь 2023 года (используя начальную и конечную дату)
    Определите количество заказов, сделанных в ноябре 2023 года, используя начальную и конечную дату месяца.
*/

SELECT 
    COUNT(*) AS cnt_november_orders
FROM
    Orders
WHERE
    OrderDate >= '2023-11-01'
        AND OrderDate <= '2023-11-30';


/*
    Задание №7: Количество заказов за январь 2024 года (используя LIKE)
    Найдите количество заказов за январь 2024 года, используя оператор LIKE для фильтрации даты.
*/

SELECT 
    COUNT(*) AS cnt_january_orders
FROM
    Orders
WHERE
    OrderDate LIKE '2024-01%';


/*
    Задание №8: Количество заказов за 2024 год
    Определите количество заказов за 2024 года, используя функцию STRFTIME для извлечения года.
*/

SELECT 
    COUNT(*) AS cnt_orders_2024
FROM
    Orders
WHERE
    YEAR(OrderDate) = 2024;

