-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 30, 2022 at 09:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerNumber`, `customerName`, `phone`, `address`, `email`) VALUES
(1, 'L??ng Th? Mai Ph??ng', '123456', '', ''),
(4, 'abcde', '1234', '', ''),
(5, 'abcdef', '123456789', '', ''),
(6, 'abcdefghiklm', '123456789101112', '', ''),
(7, 'mni', '0989', NULL, NULL),
(8, 'abcdefghikl', '1234567891011', '', ''),
(9, 'phuong', '12345678910', '', ''),
(10, 'phuongmai', '1234567892', '', ''),
(11, 'phuongmailuong', '12345678923', '', ''),
(12, 'phuongmailuong01', '123456789234', '', ''),
(13, 'phuongmailuong02', '1234567892345', '', ''),
(14, 'thuduong', '0986015', '', ''),
(15, 'thuduong01', '234', '', ''),
(16, 'thuduong02', '2345', '', ''),
(17, 'MAI', '980', '', ''),
(18, 'xuyen', '0986015847', '', ''),
(19, '1234', '5678', '', ''),
(20, '12345', '56789', '', ''),
(21, 'Luong Mai Phuong', '0989861287', '', ''),
(22, 'Luong Thi Mai Phuong', '0989083107', '', ''),
(23, 'txdp', '161', '', ''),
(24, 'Le Thi Xuyen', '0356562459', '', ''),
(25, 'Tam', '0989762', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `employeeName` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `storeId` int(4) NOT NULL,
  `managerId` int(11) NOT NULL,
  `jobTitle` varchar(50) NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `employeeName`, `gender`, `birthday`, `email`, `phone`, `storeId`, `managerId`, `jobTitle`, `start_date`) VALUES
(1, 'Nguyen Minh Ngoc', 'Female', '2003-04-15', 'minhngoc@gmail.com', '+84 359 683 221', 1, 1, 'Manager', '2022-11-01'),
(2, 'Luong Mai Phuong', 'Female', '2003-07-07', 'luongmaiphuong772003@gmail.com', '+84 989 861 287', 1, 1, 'Cashier', '2022-11-01'),
(3, 'Pham Minh Tam', 'Female', '2003-05-15', 'minhtam@gmail.com', '+84 989 083 107', 1, 1, 'Barista', '2022-11-01'),
(4, 'Luong Phung Nham', 'Female', '2003-03-01', 'phungnham@gmail.com', '+84 356 562 459', 1, 1, 'Waiter', '2022-11-01'),
(5, 'Dang Thi Thanh Hien', 'Female', '2003-03-28', 'thanhhien@gmail.com', '+84 966 712 698', 1, 1, 'Barista', '2022-11-01'),
(6, 'Vu Quoc Trung', 'Male', '2003-12-28', 'quoctrung@gmail.com', '+84 867 021 999', 1, 1, 'Barista', '2022-11-01'),
(7, 'Bui Truong Quoc Bao', 'Male', '2003-11-21', 'quocbao@gmail.com', '+84 867 731 103', 1, 1, 'Waiter', '2022-11-01'),
(8, 'Vu Duc Tung', 'Male', '2003-01-01', 'ductung@gmail.com', '+84 347 870 523', 1, 1, 'Janitor', '2022-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderNumber` int(11) NOT NULL,
  `productCode` varchar(15) NOT NULL,
  `quantity` int(11) NOT NULL,
  `priceEach` decimal(10,2) NOT NULL,
  `orderLineNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderNumber`, `productCode`, `quantity`, `priceEach`, `orderLineNumber`) VALUES
(13, 'CF_004', 5, '45000.00', 1),
(14, 'CF_004', 5, '45000.00', 1),
(15, 'CF_004', 5, '45000.00', 1),
(16, 'CF_004', 2, '45000.00', 1),
(18, 'TE_003', 1, '20000.00', 1),
(19, 'CF_004', 1, '45000.00', 1),
(19, 'TE_003', 1, '20000.00', 2),
(20, 'SM_004', 1, '45000.00', 1),
(21, 'CF_003', 2, '45000.00', 1),
(21, 'SM_004', 1, '45000.00', 2),
(21, 'TE_003', 3, '20000.00', 3),
(22, 'CF_001', 1, '40000.00', 1),
(23, 'TE_001', 3, '40000.00', 2),
(23, 'TE_002', 1, '25000.00', 1),
(24, 'CF_004', 1, '45000.00', 1),
(25, 'CF_001', 1, '40000.00', 1),
(25, 'TE_004', 1, '30000.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `customerNumber` int(11) NOT NULL,
  `orderPrice` decimal(10,2) NOT NULL,
  `storeId` int(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderNumber`, `orderDate`, `customerNumber`, `orderPrice`, `storeId`) VALUES
(2, '2022-11-27 00:00:00', 9, '90000.00', 1),
(3, '2022-11-28 00:00:00', 10, '90000.00', 1),
(4, '2022-11-28 00:00:00', 11, '90000.00', 1),
(5, '2022-11-28 00:00:00', 12, '90000.00', 1),
(6, '2022-11-28 00:00:00', 13, '90000.00', 1),
(7, '2022-11-28 00:00:00', 14, '135000.00', 1),
(8, '2022-11-28 00:00:00', 15, '135000.00', 1),
(9, '2022-11-28 00:00:00', 16, '135000.00', 1),
(10, '2022-11-28 00:00:00', 17, '135000.00', 1),
(11, '2022-11-28 00:00:00', 18, '225000.00', 1),
(12, '2022-11-28 00:00:00', 19, '225000.00', 1),
(13, '2022-11-28 00:00:00', 20, '225000.00', 1),
(14, '2022-11-28 00:00:00', 21, '225000.00', 1),
(15, '2022-11-28 00:00:00', 22, '225000.00', 1),
(16, '2022-11-28 00:00:00', 23, '90000.00', 1),
(17, '2022-11-28 00:00:00', 24, '190000.00', 1),
(18, '2022-11-28 00:00:00', 24, '20000.00', 1),
(19, '2022-11-28 00:00:00', 24, '65000.00', 1),
(20, '2022-11-28 00:00:00', 24, '45000.00', 1),
(21, '2022-11-28 00:00:00', 25, '195000.00', 1),
(22, '2022-11-28 00:00:00', 24, '40000.00', 1),
(23, '2022-11-29 00:00:00', 22, '145000.00', 1),
(24, '2022-11-29 00:00:00', 24, '45000.00', 1),
(25, '2022-11-30 00:00:00', 21, '70000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `productline`
--

CREATE TABLE `productline` (
  `productLine` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productline`
--

INSERT INTO `productline` (`productLine`, `description`, `image_path`) VALUES
('Cake', NULL, NULL),
('Coffee', NULL, NULL),
('Juice', NULL, NULL),
('Smoothie', NULL, NULL),
('Tea', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` varchar(15) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productLine` varchar(50) NOT NULL,
  `productDescription` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `productName`, `productLine`, `productDescription`, `price`, `image_path`) VALUES
('CF_001', 'Espresso', 'Coffee', '', '40000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Espresso.png'),
('CF_002', 'Americano', 'Coffee', '', '40000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Americano.jpg'),
('CF_003', 'Caramel Macchiato', 'Coffee', '', '45000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Caramel Macchiato.jpg'),
('CF_004', 'Cappuccino', 'Coffee', '', '45000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Cappuccino.png'),
('CF_005', 'Latte', 'Coffee', '', '45000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Latte.jpg'),
('JU_001', 'Pomegranate Juice', 'Juice', '', '35000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Pomegranate Juice.jpg'),
('JU_002', 'Pineapple Juice', 'Juice', '', '25000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Pineapple Juice.jpg'),
('JU_003', 'Apple Juice', 'Juice', '', '30000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Apple Juice.jpg'),
('JU_004', 'Carrot Juice', 'Juice', '', '25000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Carrot Juice.jpg'),
('JU_005', 'Celery Juice', 'Juice', '', '30000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Celery Juice.jpg'),
('SM_001', 'Avocado Smoothie', 'Smoothie', '', '45000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Avocado Smoothie.jpg'),
('SM_002', 'Mango Smoothie', 'Smoothie', '', '40000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Mango Smoothie.jpg'),
('SM_003', 'Durian Smoothie', 'Smoothie', '', '50000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Durian Smoothie.jpg'),
('SM_004', 'Strawberries Smoothie', 'Smoothie', '', '45000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Strawberries Smoothie.jpg'),
('SM_005', 'Watermelon Smoothie', 'Smoothie', '', '35000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Watermelon Smoothie.jpg'),
('TE_001', 'Hawaii Fruit Tea', 'Tea', '', '40000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Hawaii Fruit Tea.jpg'),
('TE_002', 'Herbal Tea', 'Tea', '', '25000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Herbal Tea.jpg'),
('TE_003', 'Ginger Tea', 'Tea', '', '20000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Ginger Tea.jpg'),
('TE_004', 'Honey Chrysanthemum Tea', 'Tea', '', '30000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Honey Chrysanthemum Tea.jpg'),
('TE_005', 'Green Tea', 'Tea', '', '20000.00', 'http://localhost/coffee_shop/coffeeshop-home/img/menu/Green Tea.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `storeId` int(4) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `managerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`storeId`, `address`, `city`, `country`, `phone`, `managerId`) VALUES
(1, '144 Xuan Thuy, Cau Giay, HN', 'Ha Noi', 'Viet Nam', '+84 986 015 847', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerNumber`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeNumber`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `employees_store_fk` (`storeId`),
  ADD KEY `employees_fk` (`managerId`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderNumber`,`productCode`),
  ADD KEY `orderdetails_products_fk` (`productCode`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNumber`),
  ADD KEY `orders_customer_fk` (`customerNumber`),
  ADD KEY `orders_store_fk` (`storeId`);

--
-- Indexes for table `productline`
--
ALTER TABLE `productline`
  ADD PRIMARY KEY (`productLine`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`),
  ADD KEY `products_productline_fk` (`productLine`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`storeId`),
  ADD KEY `store_employees_fk` (`managerId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `storeId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_fk` FOREIGN KEY (`managerId`) REFERENCES `employees` (`employeeNumber`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_store_fk` FOREIGN KEY (`storeId`) REFERENCES `store` (`storeId`) ON UPDATE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_products_fk` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ordetails_orders_fk` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_fk` FOREIGN KEY (`customerNumber`) REFERENCES `customer` (`customerNumber`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_store_fk` FOREIGN KEY (`storeId`) REFERENCES `store` (`storeId`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_productline_fk` FOREIGN KEY (`productLine`) REFERENCES `productline` (`productLine`) ON UPDATE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_employees_fk` FOREIGN KEY (`managerId`) REFERENCES `employees` (`employeeNumber`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
