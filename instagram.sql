-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2022 at 08:24 AM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instagram`
--

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `image`) VALUES
(22, 'IMG_0786.JPG2022-11-15-18-14-448', 'upload/IMG_0786.JPG2022-11-15-18-14-448'),
(23, 'R.jpg2022-11-15-18-24-568', 'upload/R.jpg2022-11-15-18-24-568'),
(24, 'R.jpg2022-11-15-18-26-538', 'upload/R.jpg2022-11-15-18-26-538'),
(25, 'R.jpg2022-11-15-18-28-008', 'upload/R.jpg2022-11-15-18-28-008'),
(26, 'R.jpg2022-11-15-18-29-078', 'upload/R.jpg2022-11-15-18-29-078'),
(27, 'branlette.png2022-11-16-07-51-309', 'upload/branlette.png2022-11-16-07-51-309'),
(28, 'faxe.png2022-11-16-07-54-4310', 'upload/faxe.png2022-11-16-07-54-4310'),
(29, 'kiki.png2022-11-16-07-56-4010', 'upload/kiki.png2022-11-16-07-56-4010'),
(30, 'image.png2022-11-16-08-02-5511', 'upload/image.png2022-11-16-08-02-5511');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `liker_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `liker_id`, `user_id`) VALUES
(19, 22, 8, 8),
(20, 20, 8, 8),
(21, 23, 9, 9),
(22, 24, 10, 10),
(23, 25, 10, 10),
(24, 23, 11, 9),
(25, 26, 11, 11),
(26, 23, 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `id_image` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `id_image`, `content`, `created_at`, `user_id`, `user_name`) VALUES
(20, 22, 'Voici un magnifique bolide', '2022-11-15', 8, 'aurelien.llu'),
(22, 26, 'Hâte de voir Top Gun 2', '2022-11-15', 8, 'aurelien.llu'),
(23, 27, 'Mon nouveau bureau, et mon jeune stagiaire, il fait très bien les cafés !', '2022-11-16', 9, 'KilianChap'),
(24, 28, 'C\'est mon petit déj depuis quelques jours. Je me sens plus fort!!', '2022-11-16', 10, 'Benji'),
(25, 29, 'Ca c\'est mon pote Kiki, il est gentil même s\'il est un peu spécial', '2022-11-16', 10, 'Benji'),
(26, 30, 'J\'adore comment il joue il me donne envie de jouer au tennis !!', '2022-11-16', 11, 'thomas');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `username`, `password`, `email`, `admin`) VALUES
(8, 'Aurélien', 'Leleu', 'aurelien.llu', '$2y$10$dvXfSqaDNiFRryPbCw6IEe.n0FiYrojdg3m1.g7AWlJUDbrn2B1fS', 'aurelien.leleu78@gmail.com', 0),
(9, 'Kilian', 'Chapelle', 'KilianChap', '$2y$10$QGKZ4.rZ2Vw0w4ox8lENJOm.KvO42jzj5VGKQIfxMkbw2RfNJSoc.', 'kilian.chap@ecole-hexagone.com', 0),
(10, 'Benjamin', 'Godin', 'Benji', '$2y$10$zfQzHJYUyL6HHwF7l9bXQug2aEKNBFPw7HrFCQOlnauRdgi9hEcga', 'sucktodie@gmail.com', 0),
(11, 'Thomas', 'Dupond', 'thomas', '$2y$10$mjwlGIQ85iSi0SE8UExOL.MzC7nwVmP5uEc/8o79ZrUV04SzX7a3y', 't@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `liker_id` (`liker_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_image` (`id_image`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commentaire_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`liker_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`id_image`) REFERENCES `image` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
