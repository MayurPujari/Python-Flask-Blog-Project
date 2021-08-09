-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 07:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mayurblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '123456789', 'first post', '2018-07-29 11:36:23', 'firstpost@gmail.com'),
(2, 'mera naam', '4434343434', 'Bhai please send ho jaa database mei', NULL, 'meraemail@gmail.com'),
(3, 'mera naam', '4434343434', 'Bhai please send ho jaa database mei', '2018-07-29 11:44:51', 'meraemail@gmail.com'),
(4, 'Bithika Pal', 'dfdf', 'posting now', '2018-07-29 15:46:28', 'bithikapddal@iitkgp.ac.in'),
(5, 'dfdf', 'dsffdfs', 'sd mail send please', '2018-07-29 17:19:41', 'dfdf@df.dfd'),
(6, 'dfdf', 'dsffdfs', 'sd mail send please', '2018-07-29 17:21:58', 'dfdf@df.dfd'),
(7, 'dfdf', 'dsffdfs', 'sd mail send please', '2018-07-29 17:22:33', 'dfdf@df.dfd'),
(8, 'Mayur Mahesh Pujari', '08669157018', 'Test Message', '2021-06-18 18:48:13', 'pmayur3257@gmail.com'),
(14, 'Mayur Mahesh Pujari', '08669157018', 'Test Message 2', '2021-06-18 19:27:19', 'pmayur3257@gmail.com'),
(15, 'Amol sir', '08669157018', 'Test message 3', '2021-06-18 22:01:29', 'pmayur3257@gmail.com'),
(16, 'Mayur Mahesh Pujari', '08669157018', 'Test Message', '2021-06-19 08:15:18', 'pmayur3257@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Web Blog', 'First blog', 'First slug', 'WebDevBlog is a new web development blog that I created a while ago. It contains in-depth articles about everything important for web developers: HTML/CSS, JavaScript, PHP, React…\r\n\r\nDespite being relatively new, WebDevBlog articles and guides have been featured in high-profile blogs as such as WebDesigner Depot.', 'about-bg.jpg', '2021-06-19 08:16:37'),
(2, 'CodeWall', 'Second blog', 'Second slug', 'Created by British web developer Dan Englishby, CodeWall is a website providing useful, in-depth tutorials for both front-end and back-end developers.\r\n\r\nCodeWall has many articles on topics as such as HTML/CSS, Node.js, JavaScript, and PHP that will appeal to both motivated beginners and experienced coders.', 'about-bg.jpg', '2021-06-18 20:17:01'),
(3, ' Real Python', 'Third blog', 'Third slug', 'Real Python is an educational platform with a large archive of blog posts, tutorials, books, and courses. The content ranges in difficulty level and technical objective. While some of the books and courses are purchase-only, there is an abundance of useful information from 2013 to present made freely available to developers of all backgrounds. Writing is clear, well-researched, aesthetically formatted, and readers can look forward to several new blog posts regularly every month.', 'about-bg.jpg', '2021-06-18 20:22:57'),
(4, 'Python Programming', 'Fourth blog', 'Fourth slug', 'Python Programming is a content hub featuring multi-level tutorials in varying difficulty levels across several popular Python use-cases, including Machine Learning, Web Dev, Bots & AI, Finance, and Quantum Computing. The publishing strategy is tutorial-centric, but after you start a tutorial, you’ll find the technical subject to be excellently presented with ample detail and supporting evidence. The writing is not poor, just not great. Some necessary links are present, other times they are not where you’d expect to find them.', 'about-bg.jpg', '2021-06-18 20:23:52'),
(5, 'Full Stack Python', 'Fifth blog', 'Fifth slug', 'Full Stack Python is a personally-managed blog for Python developers and devs to-be. Active since 2012, posts are a combination of original content and automatically aggregated posts from other publications. The articles are predominantly technical findings, explanations, tutorials, and the like. The blog’s content is in-depth, shows a range of technical expertise, and maintains a clear and concise voice with no major red flags. Unfortunately, new content is published unpredictably and in seemingly random batches.', 'about-bg.jpg', '2021-06-18 20:24:43'),
(9, 'WebDevBlog', 'seven', 'seven', 'post content', 'about-bg.jpg', '2021-06-19 08:17:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
