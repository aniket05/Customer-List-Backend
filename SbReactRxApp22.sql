-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2026 at 03:53 PM
-- Server version: 5.7.42-0ubuntu0.18.04.1
-- PHP Version: 7.0.33-31+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SbReactRxApp22`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `companyname` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Contactname` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unknown',
  `Contacttitle` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Address` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `City` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Region` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Postalcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Country` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Phone` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Fax` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company_name` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `companyname`, `Contactname`, `Contacttitle`, `Address`, `City`, `Region`, `Postalcode`, `Country`, `Phone`, `Fax`, `company_name`, `contact_name`, `contact_title`, `postal_code`) VALUES
('ALFAA', 'Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 'Obere Str. 57', 'Berlin', 'BP', '12209', 'Germany', '030-0074321', '030-0076545', NULL, NULL, NULL, NULL),
('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Owner', 'Avda. de la Constituci�n 2222', 'M�xico D.F.', '', '05021', 'Mexico', '(5) 555-4729', '(5) 555-3745', NULL, NULL, NULL, NULL),
('ANTON', 'Antonio Moreno Taquer�a', 'Antonio Moreno', 'Owner', 'Mataderos  2312', 'M�xico D.F.', '', '05023', 'Mexico', '(5) 555-3932', '', NULL, NULL, NULL, NULL),
('AROUT', 'Around the Horn', 'Thomas Hardy', 'Sales Representative', '120 Hanover Sq.', 'London', '', 'WA1 1DP', 'UK', '(171) 555-7788', '(171) 555-6750', NULL, NULL, NULL, NULL),
('BERGS', 'Berglunds snabbk�p', 'Christina Berglund', 'Order Administrator', 'Berguvsv�gen  8', 'Lule�', '', 'S-958 22', 'Sweden', '0921-12 34 65', '0921-12 34 67', NULL, NULL, NULL, NULL),
('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Sales Representative', 'Forsterstr. 57', 'Mannheim', '', '68306', 'Germany', '0621-08460', '0621-08924', NULL, NULL, NULL, NULL),
('BLONP', 'Blondel p�re et fils', 'Fr�d�rique Citeaux', 'Marketing Manager', '24, place Kl�ber', 'Strasbourg', '', '67000', 'France', '88.60.15.31', '88.60.15.32', NULL, NULL, NULL, NULL),
('BOLID', 'B�lido Comidas preparadas', 'Mart�n Sommer', 'Owner', 'C/ Araquil, 67', 'Madrid', '', '28023', 'Spain', '(91) 555 22 82', '(91) 555 91 99', NULL, NULL, NULL, NULL),
('BONAP', 'Bon app\'', 'Laurence Lebihan', 'Owner', '12, rue des Bouchers', 'Marseille', '', '13008', 'France', '91.24.45.40', '91.24.45.41', NULL, NULL, NULL, NULL),
('BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Accounting Manager', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', '(604) 555-4729', '(604) 555-3745', NULL, NULL, NULL, NULL),
('BSBEV', 'B\'s Beverages', 'Victoria Ashworth', 'Sales Representative', 'Fauntleroy Circus', 'London', '', 'EC2 5NT', 'UK', '(171) 555-1212', '', NULL, NULL, NULL, NULL),
('CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Sales Agent', 'Cerrito 333', 'Buenos Aires', '', '1010', 'Argentina', '(1) 135-5555', '(1) 135-4892', NULL, NULL, NULL, NULL),
('CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Marketing Manager', 'Sierras de Granada 9993', 'M�xico D.F.', '', '05022', 'Mexico', '(5) 555-3392', '(5) 555-7293', NULL, NULL, NULL, NULL),
('CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Owner', 'Hauptstr. 29', 'Bern', '', '3012', 'Switzerland', '0452-076545', '', NULL, NULL, NULL, NULL),
('COMMI', 'Com�rcio Mineiro', 'Pedro Afonso', 'Sales Associate', 'Av. dos Lus�adas, 23', 'S�o Paulo', 'SP', '05432-043', 'Brazil', '(11) 555-7647', '', NULL, NULL, NULL, NULL),
('CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Sales Representative', 'Berkeley Gardens\r\n12  Brewery ', 'London', '', 'WX1 6LT', 'UK', '(171) 555-2282', '(171) 555-9199', NULL, NULL, NULL, NULL),
('DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Order Administrator', 'Walserweg 21', 'Aachen', '', '52066', 'Germany', '0241-039123', '0241-059428', NULL, NULL, NULL, NULL),
('DUMON', 'Du monde entier', 'Janine Labrune', 'Owner', '67, rue des Cinquante Otages', 'Nantes', '', '44000', 'France', '40.67.88.88', '40.67.89.89', NULL, NULL, NULL, NULL),
('EASTC', 'Eastern Connection', 'Ann Devon', 'Sales Agent', '35 King George', 'London', '', 'WX3 6FW', 'UK', '(171) 555-0297', '(171) 555-3373', NULL, NULL, NULL, NULL),
('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Sales Manager', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria', '7675-3425', '7675-3426', NULL, NULL, NULL, NULL),
('FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Marketing Assistant', 'Rua Or�s, 92', 'S�o Paulo', 'SP', '05442-030', 'Brazil', '(11) 555-9857', '', NULL, NULL, NULL, NULL),
('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Accounting Manager', 'C/ Moralzarzal, 86', 'Madrid', '', '28034', 'Spain', '(91) 555 94 44', '(91) 555 55 93', NULL, NULL, NULL, NULL),
('FOLIG', 'Folies gourmandes', 'Martine Ranc�', 'Assistant Sales Agent', '184, chauss�e de Tournai', 'Lille', '', '59000', 'France', '20.16.10.16', '20.16.10.17', NULL, NULL, NULL, NULL),
('FOLKO', 'Folk och f� HB', 'Maria Larsson', 'Owner', '�kergatan 24', 'Br�cke', '', 'S-844 67', 'Sweden', '0695-34 67 21', '', NULL, NULL, NULL, NULL),
('FRANK', 'Frankenversand', 'Peter Franken', 'Marketing Manager', 'Berliner Platz 43', 'M�nchen', '', '80805', 'Germany', '089-0877310', '089-0877451', NULL, NULL, NULL, NULL),
('FRANR', 'France restauration', 'Carine Schmitt', 'Marketing Manager', '54, rue Royale', 'Nantes', '', '44000', 'France', '40.32.21.21', '40.32.21.20', NULL, NULL, NULL, NULL),
('FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Sales Representative', 'Via Monte Bianco 34', 'Torino', '', '10100', 'Italy', '011-4988260', '011-4988261', NULL, NULL, NULL, NULL),
('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez ', 'Sales Manager', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal', '(1) 354-2534', '(1) 354-2535', NULL, NULL, NULL, NULL),
('GALED', 'Galer�a del gastr�nomo', 'Eduardo Saavedra', 'Marketing Manager', 'Rambla de Catalu�a, 23', 'Barcelona', '', '08022', 'Spain', '(93) 203 4560', '(93) 203 4561', NULL, NULL, NULL, NULL),
('GODOS', 'Godos Cocina T�pica', 'Jos� Pedro Freyre', 'Sales Manager', 'C/ Romero, 33', 'Sevilla', '', '41101', 'Spain', '(95) 555 82 82', '', NULL, NULL, NULL, NULL),
('GOURL', 'Gourmet Lanchonetes', 'Andr� Fonseca', 'Sales Associate', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', '(11) 555-9482', '', NULL, NULL, NULL, NULL),
('GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Marketing Manager', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', '(503) 555-7555', '', NULL, NULL, NULL, NULL),
('GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Owner', '5� Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela', '(2) 283-2951', '(2) 283-3397', NULL, NULL, NULL, NULL),
('HANAR', 'Hanari Carnes', 'Mario Pontes', 'Accounting Manager', 'Rua do Pa�o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', '(21) 555-0091', '(21) 555-8765', NULL, NULL, NULL, NULL),
('HILAA', 'HILARI�N-Abastos', 'Carlos Hern�ndez', 'Sales Representative', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist�bal', 'T�chira', '5022', 'Venezuela', '(5) 555-1340', '(5) 555-1948', NULL, NULL, NULL, NULL),
('HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Sales Representative', 'City Center Plaza\r\n516 Main St.', 'Elgin', 'OR', '97827', 'USA', '(503) 555-6874', '(503) 555-2376', NULL, NULL, NULL, NULL),
('HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Sales Associate', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Ireland', '2967 542', '2967 3333', NULL, NULL, NULL, NULL),
('ISLAT', 'Island Trading', 'Helen Bennett', 'Marketing Manager', 'Garden House\r\nCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', '(198) 555-8888', '', NULL, NULL, NULL, NULL),
('KOENE', 'K�niglich Essen', 'Philip Cramer', 'Sales Associate', 'Maubelstr. 90', 'Brandenburg', '', '14776', 'Germany', '0555-09876', '', NULL, NULL, NULL, NULL),
('LACOR', 'La corne d\'abondance', 'Daniel Tonini', 'Sales Representative', '67, avenue de l\'Europe', 'Versailles', '', '78000', 'France', '30.59.84.10', '30.59.85.11', NULL, NULL, NULL, NULL),
('LAMAI', 'La maison d\'Asie', 'Annette Roulet', 'Sales Manager', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'France', '61.77.61.10', '61.77.61.11', NULL, NULL, NULL, NULL),
('LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Marketing Assistant', '1900 Oak St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada', '(604) 555-3392', '(604) 555-7293', NULL, NULL, NULL, NULL),
('LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Marketing Manager', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA', '(509) 555-7969', '(509) 555-6221', NULL, NULL, NULL, NULL),
('LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Sales Representative', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Germany', '069-0245984', '069-0245874', NULL, NULL, NULL, NULL),
('LETSS', 'Let\'s Stop N Shop', 'Jaime Yorres', 'Owner', '87 Polk St.\r\nSuite 5', 'San Francisco', 'CA', '94117', 'USA', '(415) 555-5938', '', NULL, NULL, NULL, NULL),
('LILAS', 'LILA-Supermercado', 'Carlos Gonz�lez', 'Accounting Manager', 'Carrera 52 con Ave. Bol�var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', '(9) 331-6954', '(9) 331-7256', NULL, NULL, NULL, NULL),
('LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Owner', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', '(8) 34-56-12', '(8) 34-93-93', NULL, NULL, NULL, NULL),
('LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Sales Manager', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', '(503) 555-9573', '(503) 555-9646', NULL, NULL, NULL, NULL),
('MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Marketing Manager', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italy', '035-640230', '035-640231', NULL, NULL, NULL, NULL),
('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Sales Agent', 'Rue Joseph-Bens 532', 'Bruxelles', '', 'B-1180', 'Belgium', '(02) 201 24 67', '(02) 201 24 68', NULL, NULL, NULL, NULL),
('MEREP', 'M�re Paillarde', 'Jean Fresni�re', 'Marketing Assistant', '43 rue St. Laurent', 'Montr�al', 'Qu�bec', 'H1J 1C3', 'Canada', '(514) 555-8054', '(514) 555-8055', NULL, NULL, NULL, NULL),
('MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Marketing Assistant', 'Heerstr. 22', 'Leipzig', '', '04179', 'Germany', '0342-023176', '', NULL, NULL, NULL, NULL),
('NORTS', 'North/South', 'Simon Crowther', 'Sales Associate', 'South House\r\n300 Queensbridge', 'London', '', 'SW7 1RZ', 'UK', '(171) 555-7733', '(171) 555-2530', NULL, NULL, NULL, NULL),
('OCEAN', 'Oc�ano Atl�ntico Ltda.', 'Yvonne Moncada', 'Sales Agent', 'Ing. Gustavo Moncada 8585\r\nPiso 20-A', 'Buenos Aires', '', '1010', 'Argentina', '(1) 135-5333', '(1) 135-5535', NULL, NULL, NULL, NULL),
('OLDWO', 'Old World Delicatessen', 'Rene Phillips', 'Sales Representative', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', '(907) 555-7584', '(907) 555-2880', NULL, NULL, NULL, NULL),
('OTTIK', 'Ottilies K�seladen', 'Henriette Pfalzheim', 'Owner', 'Mehrheimerstr. 369', 'K�ln', '', '50739', 'Germany', '0221-0644327', '0221-0765721', NULL, NULL, NULL, NULL),
('PARIS', 'Paris sp�cialit�s', 'Marie Bertrand', 'Owner', '265, boulevard Charonne', 'Paris', '', '75012', 'France', '(1) 42.34.22.66', '(1) 42.34.22.77', NULL, NULL, NULL, NULL),
('PERIC', 'Pericles Comidas cl�sicas', 'Guillermo Fern�ndez', 'Sales Representative', 'Calle Dr. Jorge Cash 321', 'M�xico D.F.', '', '05033', 'Mexico', '(5) 552-3745', '(5) 545-3745', NULL, NULL, NULL, NULL),
('PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Sales Manager', 'Geislweg 14', 'Salzburg', '', '5020', 'Austria', '6562-9722', '6562-9723', NULL, NULL, NULL, NULL),
('PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Sales Representative', 'Estrada da sa�de n. 58', 'Lisboa', '', '1756', 'Portugal', '(1) 356-5634', '', NULL, NULL, NULL, NULL),
('QUEDE', 'Que Del�cia', 'Bernardo Batista', 'Accounting Manager', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', '(21) 555-4252', '(21) 555-4545', NULL, NULL, NULL, NULL),
('QUEEN', 'Queen Cozinha', 'L�cia Carvalho', 'Marketing Assistant', 'Alameda dos Can�rios, 891', 'S�o Paulo', 'SP', '05487-020', 'Brazil', '(11) 555-1189', '', NULL, NULL, NULL, NULL),
('QUICK', 'QUICK-Stop', 'Horst Kloss', 'Accounting Manager', 'Taucherstra�e 10', 'Cunewalde', '', '01307', 'Germany', '0372-035188', '', NULL, NULL, NULL, NULL),
('RANCH', 'Rancho grande', 'Sergio Guti�rrez', 'Sales Representative', 'Av. del Libertador 900', 'Buenos Aires', '', '1010', 'Argentina', '(1) 123-5555', '(1) 123-5556', NULL, NULL, NULL, NULL),
('RATTC', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Assistant Sales Representative', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', '(505) 555-5939', '(505) 555-3620', NULL, NULL, NULL, NULL),
('REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Sales Associate', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italy', '0522-556721', '0522-556722', NULL, NULL, NULL, NULL),
('RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Assistant Sales Agent', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', '(21) 555-3412', '', NULL, NULL, NULL, NULL),
('RICSU', 'Richter Supermarkt', 'Michael Holz', 'Sales Manager', 'Grenzacherweg 237', 'Gen�ve', '', '1203', 'Switzerland', '0897-034214', '', NULL, NULL, NULL, NULL),
('ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Accounting Manager', 'Gran V�a, 1', 'Madrid', '', '28001', 'Spain', '(91) 745 6200', '(91) 745 6210', NULL, NULL, NULL, NULL),
('SANTG', 'Sant� Gourmet', 'Jonas Bergulfsen', 'Owner', 'Erling Skakkes gate 78', 'Stavern', '', '4110', 'Norway', '07-98 92 35', '07-98 92 47', NULL, NULL, NULL, NULL),
('SAVEA', 'Save-a-lot Markets', 'Jose Pavarotti', 'Sales Representative', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', '(208) 555-8097', '', NULL, NULL, NULL, NULL),
('SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Sales Manager', '90 Wadhurst Rd.', 'London', '', 'OX15 4NB', 'UK', '(171) 555-1717', '(171) 555-5646', NULL, NULL, NULL, NULL),
('SIMOB', 'Simons bistro', 'Jytte Petersen', 'Owner', 'Vinb�ltet 34', 'K�benhavn', '', '1734', 'Denmark', '31 12 34 56', '31 13 35 57', NULL, NULL, NULL, NULL),
('SPECD', 'Sp�cialit�s du monde', 'Dominique Perrier', 'Marketing Manager', '25, rue Lauriston', 'Paris', '', '75016', 'France', '(1) 47.55.60.10', '(1) 47.55.60.20', NULL, NULL, NULL, NULL),
('SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Sales Manager', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', '(307) 555-4680', '(307) 555-6525', NULL, NULL, NULL, NULL),
('SUPRD', 'Supr�mes d�lices', 'Pascale Cartrain', 'Accounting Manager', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Belgium', '(071) 23 67 22 20', '(071) 23 67 22 21', NULL, NULL, NULL, NULL),
('THEBI', 'The Big Cheese', 'Liz Nixon', 'Marketing Manager', '89 Jefferson Way\r\nSuite 2', 'Portland', 'OR', '97201', 'USA', '(503) 555-3612', '', NULL, NULL, NULL, NULL),
('THECR', 'The Cracker Box', 'Liu Wong', 'Marketing Assistant', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA', '(406) 555-5834', '(406) 555-8083', NULL, NULL, NULL, NULL),
('TOMSP', 'Toms Spezialit�ten', 'Karin Josephs', 'Marketing Manager', 'Luisenstr. 48', 'M�nster', '', '44087', 'Germany', '0251-031259', '0251-035695', NULL, NULL, NULL, NULL),
('TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Owner', 'Avda. Azteca 123', 'M�xico D.F.', '', '05033', 'Mexico', '(5) 555-2933', '', NULL, NULL, NULL, NULL),
('TRADH', 'Tradi��o Hipermercados', 'Anabela Domingues', 'Sales Representative', 'Av. In�s de Castro, 414', 'S�o Paulo', 'SP', '05634-030', 'Brazil', '(11) 555-2167', '(11) 555-2168', NULL, NULL, NULL, NULL),
('TRAIH', 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', 'Sales Associate', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA', '(206) 555-8257', '(206) 555-2174', NULL, NULL, NULL, NULL),
('VAFFE', 'Vaffeljernet', 'Palle Ibsen', 'Sales Manager', 'Smagsl�get 45', '�rhus', '', '8200', 'Denmark', '86 21 32 43', '86 22 33 44', NULL, NULL, NULL, NULL),
('VICTE', 'Victuailles en stock', 'Mary Saveley', 'Sales Agent', '2, rue du Commerce', 'Lyon', '', '69004', 'France', '78.32.54.86', '78.32.54.87', NULL, NULL, NULL, NULL),
('VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Accounting Manager', '59 rue de l\'Abbaye', 'Reims', '', '51100', 'France', '26.47.15.10', '26.47.15.11', NULL, NULL, NULL, NULL),
('WANDK', 'Die Wandernde Kuh', 'Rita M�ller', 'Sales Representative', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Germany', '0711-020361', '0711-035428', NULL, NULL, NULL, NULL),
('WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Accounting Manager', 'Torikatu 38', 'Oulu', '', '90110', 'Finland', '981-443655', '981-443655', NULL, NULL, NULL, NULL),
('WELLI', 'Wellington Importadora', 'Paula Parente', 'Sales Manager', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', '(14) 555-8122', '', NULL, NULL, NULL, NULL),
('WHITC', 'White Clover Markets', 'Karl Jablonski', 'Owner', '305 - 14th Ave. S.\r\nSuite 3B', 'Seattle', 'WA', '98128', 'USA', '(206) 555-4112', '(206) 555-4115', NULL, NULL, NULL, NULL),
('WILMK', 'Wilman Kala', 'Matti Karttunen', 'Owner/Marketing Assistant', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finland', '90-224 8858', '90-224 8858', NULL, NULL, NULL, NULL),
('WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Owner', 'ul. Filtrowa 68', 'Warszawa', '', '01-012', 'Poland', '(26) 642-7012', '(26) 642-7012', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'USER'),
(2, 'ADMIN'),
(3, 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `username`) VALUES
(1, 'abc123', 'aniket'),
(2, 'abc123', 'anurag');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `idx_customers_company_name` (`companyname`),
  ADD KEY `idx_customers_city` (`City`),
  ADD KEY `idx_customers_region` (`Region`),
  ADD KEY `idx_customers_postalcode` (`Postalcode`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD UNIQUE KEY `UK_it77eq964jhfqtu54081ebtio` (`role_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
