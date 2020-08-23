-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2020 at 12:45 AM
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
-- Database: `members`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `faction` varchar(45) NOT NULL,
  `playedBy` varchar(45) NOT NULL,
  `seasons` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstName`, `lastName`, `gender`, `faction`, `playedBy`, `seasons`, `status`, `img`) VALUES
(1, 'Thomas', 'Shelby', 'M', 'Peaky Blinders', 'Cillian Murphy', '1, 2, 3, 4, 5', 'Alive', '<img src=\"img/tommy.jpg\">'),
(2, 'Polly', 'Gray', 'F', 'Peaky Blinders', 'Helen McCrory', '1, 2, 3, 4, 5', 'Alive', '<img src=\"img/polly.jpg\">'),
(3, 'Arthur', 'Shelby', 'M', 'Peaky Blinders', 'Paul Anderson', '1, 2, 3, 4, 5', 'Alive', '<img src=\"img/arthur.jpg\">'),
(4, 'John', 'Shelby', 'M', 'Peaky Blinders', 'Joe Cole', '1, 2, 3, 4', 'Deceased', '<img src=\"img/john.jpg\">'),
(5, 'Ada', 'Shelby', 'F', 'Peaky Blinders', 'Sophie Rundle', '1, 2, 3, 4, 5', 'Alive', '<img src=\"img/ada.jpg\">'),
(6, 'Finn', 'Shelby', 'M', 'Peaky Blinders', 'Harry Kirton', '1, 2, 3, 4, 5', 'Alive', '<img src=\"img/finn.jpg\">'),
(7, 'Michael', 'Gray', 'M', 'Peaky Blinders', 'Finn Cole', '2, 3, 4, 5', 'Alive', '<img src=\"img/michael.jpg\">'),
(8, 'Grace', 'Burgess', 'F', 'Peaky Blinders, Coppers', 'Annabelle Wallis', '1, 2, 3, 5', 'Deceased', '<img src=\"img/grace.jpg\">'),
(9, 'Lizzie', 'Stark', 'F', 'Peaky Blinders', 'Natasha O\'Keeffe', '1, 2, 3, 4, 5', 'Alive', '<img src=\"img/lizzie.jpg\">'),
(10, 'Alfie', 'Solomons', 'M', 'The Jews', 'Tom Hardy', '2, 3, 4, 5', 'Deceased', '<img src=\"img/alfie.jpg\">'),
(11, 'Chester', 'Campbell', 'M', 'Coppers', 'Sam Neill', '1, 2', 'Deceased', '<img src=\"img/campbell.jpg\">'),
(12, 'Billy', 'Kimber', 'M', 'Birmingham Boys', 'Charlie Creed-Miles', '1', 'Deceased', '<img src=\"img/billy.jpg\">'),
(13, 'Charles', 'Sabini', 'M', 'The Italians', 'Noah Taylor', '2', 'Deceased', '<img src=\"img/sabini.jpg\">'),
(14, 'Tatiana', 'Petrovna', 'F', 'None', 'Gaite Jansen', '3', 'Deceased', '<img src=\"img/tatiana.jpg\">'),
(15, 'John', 'Hughes', 'M', 'None', 'Paddy Considine', '3', 'Deceased', '<img src=\"img/hughes.jpg\">'),
(16, 'Luca', 'Changretta', 'M', 'The Italians', 'Adrien Brody', '4', 'Deceased', '<img src=\"img/luca.jpg\">'),
(17, 'Oswald', 'Mosley', 'M', 'British Union of Fascists', 'Sam Claflin', '5', 'Alive', '<img src=\"img/oswald.jpg\">'),
(18, 'Freddie', 'Thorne', 'M', 'Communist Union', 'Iddo Goldberg', '1', 'Deceased', '<img src=\"img/freddie.jpg\">'),
(19, 'Esme', 'Shelby', 'F', 'Peaky Blinders, Lee Family', 'Aimee-Ffion Edwards', '1, 2, 3, 4', 'Alive', '<img src=\"img/esme.jpg\">'),
(20, 'Linda', 'Shelby', 'F', 'Peaky Blinders', 'Kate Phillips', '3, 4, 5', 'Deceased', '<img src=\"img/linda.jpg\">'),
(21, 'May', 'Carleton', 'F', 'None', 'Charlotte Riley', '2, 4', 'Alive', '<img src=\"img/may.jpg\">'),
(22, 'Aberama', 'Gold', 'M', 'Peaky Blinders', 'Aidan Gillen', '4, 5', 'Deceased', '<img src=\"img/gold.jpg\">'),
(23, 'Jessie', 'Eden', 'F', 'Communist Union', 'Charlie Murphy', '4, 5', 'Alive', '<img src=\"img/eden.jpg\">'),
(24, 'Gina', 'Gray', 'F', 'Peaky Blinders', 'Anya Taylor-Joy', '5', 'Alive', '<img src=\"img/gina.jpg\">'),
(25, 'Johnny', 'Dogs', 'M', 'Lee Family', 'Packy Lee', '1, 2, 3, 4, 5', 'Alive', '<img src=\"img/johnny.jpg\">'),
(26, 'Charlie', 'Strong', 'M', 'Peaky Blinders', 'Ned Dennehy', '1, 2, 3, 4, 5', 'Alive', '<img src=\"img/charlie.jpg\">'),
(27, 'Curly', '', 'M', 'Peaky Blinders', 'Ian Peck', '1, 2, 3, 4, 5', 'Alive', '<img src=\"img/curly.jpg\">'),
(28, 'Jeremiah', 'Jesus', 'M', 'Peaky Blinders', 'Benjamin Zephaniah', '1, 2, 3, 4, 5', 'Alive', '<img src=\"img/jeremiah.jpg\">'),
(29, 'Isaiah', 'Jesus', 'M', 'Peaky Blinders', 'Daryl McCormack', '2, 3, 4', 'Alive', '<img src=\"img/isaiah.jpg\">'),
(30, 'Bonnie', 'Gold', 'M', 'Peaky Blinders', 'Jack Rowan', '4, 5', 'Deceased', '<img src=\"img/bonnie.jpg\">'),
(31, 'King', 'Maine', 'M', 'Peaky Blinders', 'Daniel Fearn', '2, 4', 'Alive', '<img src=\"img/king.jpg\">'),
(32, 'Winston', 'Churchill', 'M', 'British Government', 'Andy Nyman, Richard McCabe, Neil Maskell', '1, 2, 5', 'Alive', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
