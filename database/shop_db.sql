-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 03:00 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(3, 2, 12, 'Stainless Steel Men&#39;s Watch ', 209, 1, 'smartwatch3-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'Darshan', 'darshanrao526@gmail.com', '9306867037', 'Nice work');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Darshan', '1234567890', 'mohit99@gmail.com', 'paytm', 'flat no. Village Gunjar, Dis. Hisar, State Haryana, in Indi, Village Gunjar, Hisar, Haryana, India - 125006', 'Laptop (25000 x 1) - Textured Strap Watch (122 x 1) - ', 25122, '2022-07-04', 'completed'),
(2, 1, 'Sunil', '1234567890', 'sunilkumar@gmail.com', 'paytm', 'flat no. Village Gunjar, Dis. Hisar, State Haryana, in Indi, Hisar, Hisar, Haryana, India - 125006', 'Fridge (219 x 1) - LG tv (298 x 1) - ', 517, '2022-07-07', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'Laptop', 'laptops ', 450, 'laptop-1.webp', 'laptop-2.webp', 'laptop-3.webp'),
(2, 'Camera', 'Latest Camera', 280, 'camera-1.webp', 'camera-2.webp', 'camera-3.webp'),
(3, 'Mixer', 'mixer', 124, 'mixer-1.webp', 'mixer-2.webp', 'mixer-3.webp'),
(4, 'Mouse', 'Latest Mouse', 96, 'mouse-1.webp', 'mouse-2.webp', 'mouse-3.webp'),
(5, 'Watch', 'Men&#39;s Watch', 139, 'watch-1.webp', 'watch-2.webp', 'watch-3.webp'),
(6, 'Smart Phone', 'smartphone', 369, 'smartphone-1.webp', 'smartphone-2.webp', 'smartphone-3.webp'),
(7, 'TV', 'smart tv', 149, 'tv-01.webp', 'tv-02.webp', 'tv-03.webp'),
(8, 'Washing Machine', 'washing machine', 189, 'washing machine-1.webp', 'washing machine-2.webp', 'washing machine-3.webp'),
(9, 'Fridge', 'fridge', 219, 'fridge-1.webp', 'fridge-2.webp', 'fridge-3.webp'),
(10, 'Smart Watch', 'Men&#39;s Watch', 221, 'smartwatch-1.jpg', 'smartwatch-2.jpg', 'smartwatch-3.jpg'),
(11, 'Flash Edition Smart Watch', 'Men&#39;s Watch', 121, 'smartwatch2-1.jpg', 'smartwatch2-2.jpg', 'smartwatch2-3.jpg'),
(12, 'Stainless Steel Men&#39;s Watch ', 'Men&#39;s Watch', 209, 'smartwatch3-1.jpg', 'smartwatch3-2.jpg', 'smartwatch3-3.jpg'),
(13, 'Redux Analog Watch', 'Men&#39;s Watch', 96, 'smartwatch4-1.jpg', 'smartwatch4-2.jpg', 'smartwatch4-3.jpg'),
(14, 'Textured Strap Watch', 'Women Watch', 122, 'smartwatch5-1.jpg', 'smartwatch5-2.jpg', 'smartwatch5-3.jpg'),
(15, 'Women&#39;s Watch', 'Women Watch', 111, 'smartwatch6-1.jpg', 'smartwatch6-2.jpg', 'smartwatch6-3.jpg'),
(16, 'SKYLOFTS Analog Watch', 'Women Watch', 139, 'smartwatch7-1.jpg', 'smartwatch7-2.jpg', 'smartwatch7-3.jpg'),
(17, 'Dial Women&#39;s Watch', 'Women Watch', 319, 'smartwatch-8-1.jpg', 'smartwatch8-2.jpg', 'smartwatch8-3.jpg'),
(18, 'HP Laptop', 'HP Envy x360 13-ay0078AU 13.3 inches Laptop (3rd Gen AMD Ryzen5 4500U/8GB/512GB SSD/Windows 10 Pro/Integrated Graphics), Night Fall Black, 1.3kg', 1581, 'Laptops1-1.jpg', 'Laptops1-2.jpg', 'Laptops1-3.jpg'),
(19, 'HP Chromebook Laptop', 'HP Chromebook 14A G5, AMD A4 14-inch(35.6 cm) HD(1366 x 768), Anti-Glare Display (4GB RAM/32GB eMMC/Chrome OS/Chalkboard Gray/1.57 Kg) - 7QU82PA', 1199, 'Laptops2-1.jpg', 'Laptops2-2.jpg', 'Laptops2-3.jpg'),
(20, 'LG tv', 'LG 80 cm (32 inches) HD Ready LED Smart TV 32LK628BPTF (Black)', 298, 'tv1-1.jpg', 'tv1-2.jpg', 'tv1-3.jpg'),
(21, 'Smart Mouse', 'smart mouse', 101, 'mouse1-1.jpg', 'mouse1-2.jpg', 'mouse1-3.jpg'),
(22, 'Ear Headphones', 'boAt Rockerz 450 Pro Upto 15 Hours Playback, ASAP Charge, 40MM Drivers, Padded Ear Cushions and Dual Modes Bluetooth Wireless On Ear Headphones with Mic (Luscious Black)', 220, 'headphones1-1.jpg', 'headphones1-2.jpg', 'headphones1-3.jpg'),
(23, 'Ear Earphones', 'boAt Rockerz 330 with ASAP Charge, Enhanced Bass, Metal Control Board, IPX5, Type C Port Voice Assistant Bluetooth Wireless in Ear Earphones with Mic (Active Black)', 191, 'headphones2-1.jpg', 'headphones2-2.jpg', 'headphones2-3.jpg'),
(24, 'Headphones', 'Sennheiser PC 8.2 Wired On Ear Headphones with Mic (Black)', 290, 'headphones3-1.jpg', 'headphones3-2.jpg', 'headphones3-3.jpg'),
(25, 'Apple iPhone', 'Apple iPhone 12 (128GB) - Black', 3500, 'apple1-1.jpg', 'apple1-2.jpg', 'apple1-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Darshan', 'darshanrao526@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'Sunil', 'sunilkumar@gmail.com', '8bd7954c40c1e59a900f71ea3a266732609915b1');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(1, 2, 3, 'Mixer', 124, 'mixer-1.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
