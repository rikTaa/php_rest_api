-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2020 at 12:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peaky`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(2) NOT NULL,
  `person_id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `faction` varchar(255) NOT NULL,
  `playedBy` text NOT NULL,
  `seasons` varchar(255) NOT NULL,
  `currentStatus` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `person_id`, `firstName`, `lastName`, `gender`, `faction`, `playedBy`, `seasons`, `currentStatus`, `img`) VALUES
(1, 1, 'Thomas', 'Shelby', 'M', 'Peaky Blinders, Shelby Family', 'Cillian Murphy', '1, 2, 3, 4, 5', 'Alive', '<img src=\"https://i.pinimg.com/originals/40/9c/36/409c36896e61b4ab62a8658000dc5b7d.jpg\">'),
(2, 2, 'Arthur', 'Shelby', 'M', 'Peaky Blinders, Shelby Family', 'Paul Anderson', '1, 2, 3, 4, 5', 'Alive', '<img src=\"https://i.pinimg.com/originals/0a/c7/63/0ac763b447e6d1fa576add8c6ad1d418.jpg\">'),
(3, 3, 'John', 'Shelby', 'M', 'Peaky Blinders, Shelby Family', 'Joe Cole', '1, 2, 3, 4', 'Deceased', '<img src=\"https://i.pinimg.com/originals/ef/4c/ab/ef4cab97eea6848a1d82aa048b2988a6.jpg\">'),
(4, 4, 'Polly', 'Gray', 'F', 'Peaky Blinders, Shelby Family', 'Helen McCrory', '1, 2, 3, 4, 5', 'Alive', '<img src=\"https://i.pinimg.com/originals/7b/5f/1a/7b5f1a388e237d22f7f35750bbc770e1.jpg\">'),
(5, 5, 'Ada', 'Thorne', 'F', 'Shelby Family', 'Sophie Rundle', '1, 2, 3, 4, 5', 'Alive', '<img src=\"https://i.pinimg.com/originals/2f/b3/a4/2fb3a4988ce307fe1e4251aba14487c1.jpg\">'),
(6, 6, 'Freddie', 'Thorne', 'M', 'Communist Union', 'Iddo Goldberg', '1', 'Deceased', '<img src=\"https://i.pinimg.com/originals/1c/d4/21/1cd4211559f8ace2e52eeb46501a32e4.jpg\">'),
(7, 7, 'Finn', 'Shelby', 'M', 'Peaky Blinders, Shelby Family', 'Harry Kirton', '1, 2, 3, 4, 5', 'Alive', '<img src=\"https://i.pinimg.com/originals/6c/4a/5c/6c4a5cc70f9e0e92c8851d0859c4d2bd.jpg\">'),
(8, 8, 'Michael', 'Gray', 'M', 'Peaky Blinders, Shelby Family', 'Finn Cole', '2, 3, 4, 5', 'Alive', '<img src=\"https://i.pinimg.com/originals/45/69/7b/45697ba1842d30537c3f09c12478b2f8.jpg\">'),
(9, 9, 'Grace', 'Burgess', 'F', 'Peaky Blinders, Coppers', 'Annabelle Wallis', '1, 2, 3, 5', 'Deceased', '<img src=\"https://i.pinimg.com/originals/37/73/82/3773826e9ba53b48fab7b44481c965f4.jpg\">'),
(10, 10, 'Lizzie', 'Stark', 'F', 'Peaky Blinders', 'Natasha O\'Keeffe', '1, 2, 3, 4, 5', 'Alive', '<img src=\"https://i.pinimg.com/originals/fe/83/b1/fe83b15c9d71ed2810771e5ca110b2d9.jpg\">'),
(11, 11, 'Alfie', 'Solomons', 'M', 'The Jews', 'Tom Hardy', '2, 3, 4, 5', 'Alive', '<img src=\"https://i.pinimg.com/originals/8b/26/f7/8b26f7bdc05480f0faeb197305abbcb8.jpg\">'),
(12, 12, 'Luca', 'Changretta', 'M', 'The Italians', 'Adrien Brody', '4', 'Deceased', '<img src=\"https://i.pinimg.com/originals/0b/6d/b8/0b6db8be548e2f8f60e9b0a1614f509f.jpg\">');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
