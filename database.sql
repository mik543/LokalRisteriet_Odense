-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 30, 2021 at 12:13 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Lokalristeriet`
--

-- --------------------------------------------------------

--
-- Table structure for table `brewingmethods`
--

CREATE TABLE `brewingmethods` (
  `method_id` varchar(30) NOT NULL,
  `method` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brewingmethods`
--

INSERT INTO `brewingmethods` (`method_id`, `method`) VALUES
('1', 'Kafefilter/Pour Over'),
('2', 'Stempelkande'),
('3', 'Espresso');

-- --------------------------------------------------------

--
-- Table structure for table `coffeetaste`
--

CREATE TABLE `coffeetaste` (
  `taste_id` varchar(30) NOT NULL,
  `taste` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coffeetaste`
--

INSERT INTO `coffeetaste` (`taste_id`, `taste`) VALUES
('1', 'Syrlig'),
('2', 'Frugtig'),
('3', 'Sød'),
('4', 'Krydret');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` int(8) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postal_code` int(4) DEFAULT NULL,
  `payment_method` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `quantity` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `origin_country`
--

CREATE TABLE `origin_country` (
  `country_id` varchar(30) NOT NULL,
  `countryname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `origin_country`
--

INSERT INTO `origin_country` (`country_id`, `countryname`) VALUES
('1', 'Brasilien'),
('2', 'Columbia'),
('3', 'Etiopien'),
('4', 'Guatmala'),
('5', 'Honduras');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(30) NOT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `product_describtion` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_describtion`, `price`, `weight`) VALUES
('1', 'Langesø', 'Kaffen er lys, med syrlige toner af citrus.', '60 kr.', '250 gram'),
('2', 'Kerteminde', 'Sød mild med noter af karamel, chokolade, blomster og hasselnød.  Utrolig balanceret.', '60 kr.', '250 gram'),
('3', 'Womens Coffee', 'Blid og frugtig syre med markant rygrad. Smagen er chokolade og  appelsin', '60 kr.', '250 gram'),
('4', 'Fruens Bøge', 'Kaffen er vinøs med frugtige toner af æble, blomme og kirsebær.', '60 kr.', '250 gram'),
('5', ' Dalum', 'Mild i begyndelsen og ender ret intenst krydret på en behagelig måde.  Pirrer de nysgerrige.', '60 kr.', '250 gram'),
('6', ' Skibhusene', 'Kaffen er en espresso med noter af hasselnød. Dyb vedvarende  Kaffesmag, som man overgiver sig til.', '60 kr.', '250 gram'),
('7', ' Graabrødre Kloster', 'Kaffen har en blød og samtidig let krydret smag', '60 kr.', '250 gram');

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `category_id` varchar(30) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`category_id`, `category_name`) VALUES
('1', 'Hele Bønner'),
('2', 'Kaffepulver'),
('3', 'Kaffekapsler');

-- --------------------------------------------------------

--
-- Table structure for table `product_brewing`
--

CREATE TABLE `product_brewing` (
  `product_id` varchar(30) NOT NULL,
  `brewing_methods` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_brewing`
--

INSERT INTO `product_brewing` (`product_id`, `brewing_methods`) VALUES
('1', '1'),
('1', '2'),
('1', '3'),
('2', '1'),
('2', '2'),
('3', '1'),
('4', '1'),
('4', '2'),
('4', '3'),
('5', '1'),
('5', '2'),
('6', '1'),
('6', '3'),
('7', '1'),
('7', '2');

-- --------------------------------------------------------

--
-- Table structure for table `product_country`
--

CREATE TABLE `product_country` (
  `product_id` varchar(30) NOT NULL,
  `country_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_country`
--

INSERT INTO `product_country` (`product_id`, `country_id`) VALUES
('', '2'),
('1', '3'),
('2', '1'),
('3', '2'),
('4', '2'),
('5', '5'),
('6', '1'),
('6', '2'),
('6', '3'),
('6', '4'),
('7', '4');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `order_id` varchar(30) DEFAULT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `payment_amount` int(30) DEFAULT NULL,
  `product_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_taste`
--

CREATE TABLE `product_taste` (
  `product_id` varchar(30) NOT NULL,
  `taste_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_taste`
--

INSERT INTO `product_taste` (`product_id`, `taste_id`) VALUES
('1', '1'),
('1', '2'),
('2', '3'),
('3', '1'),
('3', '3'),
('4', '2'),
('5', '4'),
('6', '3'),
('6', '4'),
('7', '4');

-- --------------------------------------------------------

--
-- Table structure for table `roastery`
--

CREATE TABLE `roastery` (
  `roastery_id` varchar(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone_number` int(8) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postal_code` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roastery`
--

INSERT INTO `roastery` (`roastery_id`, `name`, `phone_number`, `address`, `city`, `postal_code`) VALUES
('1', 'Egebjerg', 20434669, 'Næbbevej 13', 'Vig', '4560'),
('2', 'Næstved', 27142462, '', 'Næstved', '4700'),
('3', 'Odense', 22805332, 'Tolderlundsvej 1', 'Odense', '5000'),
('4', 'Sorø', 40937974, 'Storegade 21', 'Sorø', '4180');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brewingmethods`
--
ALTER TABLE `brewingmethods`
  ADD PRIMARY KEY (`method_id`);

--
-- Indexes for table `coffeetaste`
--
ALTER TABLE `coffeetaste`
  ADD PRIMARY KEY (`taste_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `origin_country`
--
ALTER TABLE `origin_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product_brewing`
--
ALTER TABLE `product_brewing`
  ADD PRIMARY KEY (`product_id`,`brewing_methods`);

--
-- Indexes for table `product_country`
--
ALTER TABLE `product_country`
  ADD PRIMARY KEY (`product_id`,`country_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_taste`
--
ALTER TABLE `product_taste`
  ADD PRIMARY KEY (`product_id`,`taste_id`);

--
-- Indexes for table `roastery`
--
ALTER TABLE `roastery`
  ADD PRIMARY KEY (`roastery_id`);
