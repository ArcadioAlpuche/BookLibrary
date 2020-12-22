-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 06:43 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(255) NOT NULL,
  `title` text NOT NULL,
  `author_lastname` text NOT NULL,
  `author_firstname` text NOT NULL,
  `genre` text NOT NULL,
  `sub_genre` text NOT NULL,
  `publisher` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_lastname`, `author_firstname`, `genre`, `sub_genre`, `publisher`) VALUES
(1, 'Fundamentals of Wavelets', 'Goswami', 'Jaideva', 'tech', 'signal_processing', 'Wiley'),
(2, 'Data Smart', 'Foreman', 'John', 'tech', 'data_science', 'Wiley'),
(3, 'God Created the Integers', 'Hawking', 'Stephen', 'tech', 'mathematics', 'Penguin'),
(4, 'Superfreakonomics', 'Dubner', 'Stephen', 'science', 'economics', 'HarperCollins'),
(5, 'Orientalism', 'Said', 'Edward', 'nonfiction', 'history', 'Penguin'),
(6, 'Nature of Statistical Learning Theory, The', 'Vapnik', 'Vladimir', 'tech', 'data_science', 'Springer'),
(7, 'Integration of the Indian States', 'Menon', 'V P', 'nonfiction', 'history', 'Orient Blackswan'),
(8, 'Drunkard\'s Walk, The', 'Mlodinow', 'Leonard', 'science', 'mathematics', 'Penguin'),
(9, 'Image Processing & Mathematical Morphology', 'Shih', 'Frank', 'tech', 'signal_processing', 'CRC'),
(10, 'How to Think Like Sherlock Holmes', 'Konnikova', 'Maria', 'nonfiction', 'psychology', 'Penguin'),
(11, 'Data Scientists at Work', 'Gutierrez', 'Sebastian', 'tech', 'data_science', 'Apress'),
(12, 'Slaughterhouse Five', 'Vonnegut', 'Kurt', 'fiction', 'classic', 'Random House'),
(13, 'Birth of a Theorem', 'Villani', 'Cedric', 'science', 'mathematics', 'Bodley Head'),
(14, 'Structure & Interpretation of Computer Programs', 'Sussman', 'Gerald', 'tech', 'computer_science', 'MIT Press'),
(15, 'Age of Wrath, The', 'Eraly', 'Abraham', 'nonfiction', 'history', 'Penguin'),
(16, 'Trial, The', 'Kafka', 'Frank', 'fiction', 'classic', 'Random House'),
(17, 'Statistical Decision Theory\'', 'Pratt', 'John', 'tech', 'data_science', 'MIT Press'),
(18, 'Data Mining Handbook', 'Nisbet', 'Robert', 'tech', 'data_science', 'Apress'),
(19, 'New Machiavelli, The', 'Wells', 'H. G.', 'fiction', 'novel', 'Penguin'),
(20, 'Physics & Philosophy', 'Heisenberg', 'Werner', 'philosophy', 'science', 'Penguin'),
(21, 'Making Software', 'Oram', 'Andy', 'tech', 'computer_science', 'O\'Reilly'),
(22, 'Analysis, Vol I', 'Tao', 'Terence', 'tech', 'mathematics', 'HBA'),
(23, 'Machine Learning for Hackers', 'Conway', ' Drew', 'tech', 'data_science', 'O\'Reilly'),
(24, 'Signal and the Noise, The', 'Silver', 'Nate', 'tech', 'data_science', 'Penguin'),
(25, 'Python for Data Analysis', 'McKinney', 'Wes', 'tech', 'data_science', 'O\'Reilly'),
(26, 'Introduction to Algorithms', 'Cormen', 'Thomas', 'tech', 'computer_science', 'MIT Press'),
(27, 'Beautiful and the Damned, The', 'Deb', 'Siddhartha', 'nonfiction', 'history', 'Penguin'),
(28, 'Outsider, The', 'Camus', 'Albert', 'fiction', 'classic', 'Penguin'),
(29, 'Complete Sherlock Holmes, The - Vol I', 'Doyle', 'Arthur Conan', 'fiction', 'classic', 'Random House'),
(30, 'Complete Sherlock Holmes, The - Vol II', 'Doyle', 'Arthur Conan', 'fiction', 'classic', 'Random House'),
(31, 'Wealth of Nations, The', 'Smith', 'Adam', 'science', 'economics', 'Random House'),
(32, 'Pillars of the Earth, The', 'Follett', 'Ken', 'fiction', 'novel', 'Random House'),
(33, 'Tao of Physics, The', 'Capra', 'Fritjof', 'science', 'physics', 'Penguin'),
(34, 'Surely You\'re Joking Mr Feynman', 'Feynman', 'Richard', 'science', 'physics', 'Random House'),
(35, 'Farewell to Arms, A', 'Hemingway', 'Ernest', 'fiction', 'classic', 'Rupa'),
(36, 'Veteran, The', 'Forsyth', 'Frederick', 'fiction', 'novel', 'Transworld'),
(37, 'False Impressions', 'Archer', 'Jeffery', 'fiction', 'novel', 'Pan'),
(38, 'Last Lecture, The', 'Pausch', 'Randy', 'nonfiction', 'autobiography', 'Hyperion'),
(39, 'Return of the Primitive', 'Rand', 'Ayn', 'philosophy', 'objectivism', 'Penguin'),
(40, 'Jurassic Park', 'Crichton', 'Michael', 'fiction', 'novel', 'Random House'),
(41, 'Russian Journal, A', 'Steinbeck', 'John', 'nonfiction', 'history', 'Penguin'),
(42, 'Tales of Mystery and Imagination', 'Poe', 'Edgar Allen', 'fiction', 'classic', 'HarperCollins'),
(43, 'Freakonomics', 'Dubner', 'Stephen', 'science', 'economics', 'Penguin'),
(44, 'Hidden Connections, The', 'Capra', 'Fritjof', 'science', 'physics', 'HarperCollins'),
(45, 'Story of Philosophy, The', 'Durant', 'Will', 'philosophy', 'history', 'Pocket'),
(46, 'Asami Asami', 'Deshpande', 'P L', 'fiction', 'novel', 'Mauj'),
(47, 'Journal of a Novel', 'Steinbeck', 'John', 'fiction', 'classic', 'Penguin'),
(48, 'Once There Was a War', 'Steinbeck', 'John', 'nonfiction', 'history', 'Penguin'),
(49, 'Moon is Down, The', 'Steinbeck', 'John', 'fiction', 'classic', 'Penguin'),
(50, 'Brethren, The', 'Grisham', 'John', 'fiction', 'novel', 'Random House'),
(51, 'In a Free State', 'Naipaul', 'V. S.', 'fiction', 'novel', 'Rupa'),
(52, 'Catch 22', 'Heller', 'Joseph', 'fiction', 'classic', 'Random House'),
(53, 'Complete Mastermind, The', 'BBC', '', 'nonfiction', 'trivia', 'BBC'),
(54, 'Dylan on Dylan', 'Dylan', 'Bob', 'nonfiction', 'autobiography', 'Random House'),
(55, 'Soft Computing & Intelligent Systems', 'Gupta', 'Madan', 'tech', 'data_science', 'Elsevier'),
(56, 'Textbook of Economic Theory', 'Stonier', 'Alfred', 'tech', 'economics', 'Pearson'),
(57, 'Econometric Analysis', 'Greene', 'W. H.', 'tech', 'economics', 'Pearson'),
(58, 'Learning OpenCV', 'Bradsky', 'Gary', 'tech', 'signal_processing', 'O\'Reilly'),
(59, 'Data Structures Using C & C++', 'Tanenbaum', 'Andrew', 'tech', 'computer_science', 'Prentice Hall'),
(60, 'Computer Vision, A Modern Approach', 'Forsyth', 'David', 'tech', 'signal_processing', 'Pearson'),
(61, 'Principles of Communication Systems', 'Taub', 'Schilling', 'tech', 'signal_processing', 'TMH'),
(62, 'Let Us C', 'Kanetkar', 'Yashwant', 'tech', 'computer_science', 'Prentice Hall'),
(63, 'Amulet of Samarkand, The', 'Stroud', 'Jonathan', 'fiction', 'novel', 'Random House'),
(64, 'Crime and Punishment', 'Dostoevsky', 'Fyodor', 'fiction', 'classic', 'Penguin'),
(65, 'Angels & Demons', 'Brown', 'Dan', 'fiction', 'novel', 'Random House'),
(66, 'Argumentative Indian, The', 'Sen', 'Amartya', 'nonfiction', 'history', 'Picador'),
(67, 'Sea of Poppies', 'Ghosh', 'Amitav', 'fiction', 'novel', 'Penguin'),
(68, 'Idea of Justice, The', 'Sen', 'Amartya', 'philosophy', 'economics', 'Penguin'),
(69, 'Raisin in the Sun, A', 'Hansberry', 'Lorraine', 'fiction', 'novel', 'Penguin'),
(70, 'All the President\'s Men', 'Woodward', 'Bob', 'nonfiction', 'history', 'Random House'),
(71, 'Prisoner of Birth, A', 'Archer', 'Jeffery', 'fiction', 'novel', 'Pan'),
(72, 'Scoop!', 'Nayar', 'Kuldip', 'nonfiction', 'history', 'HarperCollins'),
(73, 'Ahe Manohar Tari', 'Deshpande', 'Sunita', 'nonfiction', 'autobiography', 'Mauj'),
(74, 'Last Mughal, The', 'Dalrymple', 'William', 'nonfiction', 'history', 'Penguin'),
(75, 'Social Choice & Welfare, Vol 39 No. 1', 'Various', '', 'tech', 'economics', 'Springer'),
(76, 'Radiowaril Bhashane & Shrutika', 'Deshpande', 'P L', 'nonfiction', 'misc', 'Mauj'),
(77, 'Gun Gayin Awadi', 'Deshpande', 'P L', 'nonfiction', 'misc', 'Mauj'),
(78, 'Aghal Paghal', 'Deshpande', 'P L', 'nonfiction', 'misc', 'Mauj'),
(79, 'Maqta-e-Ghalib', 'Garg', 'Sanjay', 'nonfiction', 'poetry', 'Mauj'),
(80, 'Beyond Degrees', 'Alpuche', '', 'philosophy', 'philosophy', 'HarperCollins'),
(81, 'Manasa', 'Kale', 'V P', 'nonfiction', 'misc', 'Mauj'),
(82, 'India from Midnight to Milennium', 'Tharoor', 'Shashi', 'nonfiction', 'history', 'Penguin'),
(83, 'World\'s Greatest Trials, The', '', '', 'nonfiction', 'history', ''),
(84, 'Great Indian Novel, The', 'Tharoor', 'Shashi', 'fiction', 'novel', 'Penguin'),
(85, 'O Jerusalem!', 'Lapierre', 'Dominique', 'nonfiction', 'history', 'vikas'),
(86, 'City of Joy, The', 'Lapierre', 'Dominique', 'fiction', 'novel', 'vikas'),
(87, 'Freedom at Midnight', 'Lapierre', 'Dominique', 'nonfiction', 'history', 'vikas'),
(88, 'Winter of Our Discontent, The', 'Steinbeck', 'John', 'fiction', 'classic', 'Penguin'),
(89, 'On Education', 'Russell', 'Bertrand', 'philosophy', 'education', 'Routledge'),
(90, 'Free Will', 'Harris', 'Sam', 'nonfiction', 'psychology', 'FreePress'),
(91, 'Bookless in Baghdad', 'Tharoor', 'Shashi', 'nonfiction', 'history', 'Penguin'),
(92, 'Case of the Lame Canary, The', 'Gardner', 'Earle Stanley', 'fiction', 'novel', ''),
(93, 'Theory of Everything, The', 'Hawking', 'Stephen', 'science', 'physics', 'Jaico'),
(94, 'New Markets & Other Essays', 'Drucker', 'Peter', 'science', 'economics', 'Penguin'),
(95, 'Electric Universe', 'Bodanis', 'David', 'science', 'physics', 'Penguin'),
(96, 'Hunchback of Notre Dame, The', 'Hugo', 'Victor', 'fiction', 'classic', 'Random House'),
(97, 'Burning Bright', 'Steinbeck', 'John', 'fiction', 'classic', 'Penguin'),
(98, 'Age of Discontuinity, The', 'Drucker', 'Peter', 'nonfiction', 'economics', 'Random House'),
(99, 'Doctor in the Nude', 'Gordon', 'Richard', 'fiction', 'novel', 'Penguin'),
(100, 'Down and Out in Paris & London', 'Orwell', 'George', 'nonfiction', 'autobiography', 'Penguin'),
(101, 'Identity & Violence', 'Sen', 'Amartya', 'philosophy', 'philosophy', 'Penguin'),
(102, 'Beyond the Three Seas', 'Dalrymple', 'William', 'nonfiction', 'history', 'Random House'),
(103, 'World\'s Greatest Short Stories, The', '', '', 'fiction', 'classic', 'Jaico'),
(104, 'Talking Straight', 'Iacoca', 'Lee', 'nonfiction', 'autobiography', ''),
(105, 'Maugham\'s Collected Short Stories, Vol 3', 'Maugham', 'William S', 'fiction', 'classic', 'Vintage'),
(106, 'Phantom of Manhattan, The', 'Forsyth', 'Frederick', 'fiction', 'classic', ''),
(107, 'Ashenden of The British Agent', 'Maugham', 'William S', 'fiction', 'classic', 'Vintage'),
(108, 'Zen & The Art of Motorcycle Maintenance', 'Pirsig', 'Robert', 'philosophy', 'autobiography', 'Vintage'),
(109, 'Great War for Civilization, The', 'Fisk', 'Robert', 'nonfiction', 'history', 'HarperCollins'),
(110, 'We the Living', 'Rand', 'Ayn', 'fiction', 'novel', 'Penguin'),
(111, 'Artist and the Mathematician, The', 'Aczel', 'Amir', 'science', 'mathematics', 'HighStakes'),
(112, 'History of Western Philosophy', 'Russell', 'Bertrand', 'philosophy', 'philosophy', 'Routledge'),
(113, 'Selected Short Stories', '', '', 'fiction', 'classic', 'Jaico'),
(114, 'Rationality & Freedom', 'Sen', 'Amartya', 'science', 'economics', 'Springer'),
(115, 'Clash of Civilizations and Remaking of the World Order', 'Huntington', 'Samuel', 'nonfiction', 'history', 'Simon&Schuster'),
(116, 'Uncommon Wisdom', 'Capra', 'Fritjof', 'nonfiction', 'anthology', 'Fontana'),
(117, 'One', 'Bach', 'Richard', 'nonfiction', 'autobiography', 'Dell'),
(118, 'Karl Marx Biography', '', '', 'nonfiction', 'autobiography', ''),
(119, 'To Sir With Love', 'Braithwaite', '', 'fiction', 'classic', 'Penguin'),
(120, 'Half A Life', 'Naipaul', 'V S', 'fiction', 'novel', ''),
(121, 'Discovery of India, The', 'Nehru', 'Jawaharlal', 'nonfiction', 'history', ''),
(122, 'Apulki', 'Deshpande', 'P L', 'nonfiction', 'misc', ''),
(123, 'Unpopular Essays', 'Russell', 'Bertrand', 'philosophy', 'philosophy', ''),
(124, 'Deceiver, The', 'Forsyth', 'Frederick', 'fiction', 'novel', ''),
(125, 'Veil: Secret Wars of the CIA', 'Woodward', 'Bob', 'nonfiction', 'history', ''),
(126, 'Char Shabda', 'Deshpande', 'P L', 'nonfiction', 'misc', ''),
(127, 'Rosy is My Relative', 'Durrell', 'Gerald', 'fiction', 'novel', ''),
(128, 'Moon and Sixpence, The', 'Maugham', 'William S', 'fiction', 'classic', ''),
(129, 'Political Philosophers', '', '', 'philosophy', 'politics', ''),
(130, 'Short History of the World, A', 'Wells', 'H G', 'nonfiction', 'history', ''),
(131, 'Trembling of a Leaf, The', 'Maugham', 'William S', 'fiction', 'novel', ''),
(132, 'Doctor on the Brain', 'Gordon', 'Richard', 'fiction', 'novel', ''),
(133, 'Simpsons & Their Mathematical Secrets', 'Singh', 'Simon', 'science', 'mathematics', ''),
(134, 'Pattern Classification', 'Duda', 'Hart', 'tech', 'data_science', ''),
(135, 'From Beirut to Jerusalem', 'Friedman', 'Thomas', 'nonfiction', 'history', ''),
(136, 'Code Book, The', 'Singh', 'Simon', 'science', 'mathematics', ''),
(137, 'Age of the Warrior, The', 'Fisk', 'Robert', 'nonfiction', 'history', ''),
(138, 'Final Crisis', '', '', 'fiction', 'comic', ''),
(139, 'Killing Joke, The', '', '', 'fiction', 'comic', ''),
(140, 'Flashpoint', '', '', 'fiction', 'comic', ''),
(141, 'Batman Earth One', '', '', 'fiction', 'comic', ''),
(142, 'Crisis on Infinite Earths', '', '', 'fiction', 'comic', ''),
(143, 'Numbers Behind Numb3rs, The', 'Devlin', 'Keith', 'science', 'mathematics', ''),
(144, 'Superman Earth One - 1', '', '', 'fiction', 'comic', ''),
(145, 'Superman Earth One - 2', '', '', 'fiction', 'comic', ''),
(146, 'Justice League: Throne of Atlantis', '', '', 'fiction', 'comic', ''),
(147, 'Justice League: The Villain\'s Journey', '', '', 'fiction', 'comic', ''),
(148, 'Death of Superman, The', '', '', 'fiction', 'comic', ''),
(149, 'History of the DC Universe', '', '', 'fiction', 'comic', ''),
(150, 'Batman: The Long Halloween', '', '', 'fiction', 'comic', ''),
(151, 'Life in Letters, A', 'Steinbeck', 'John', 'nonfiction', 'autobiography', ''),
(152, 'Information, The', 'Gleick,', 'James', 'science', 'mathematics', ''),
(153, 'Journal of Economics, vol 106 No 3', '', '', 'science', 'economics', ''),
(154, 'Elements of Information Theory', 'Thomas', 'Joy', 'tech', 'signal_processing', ''),
(155, 'Power Electronics - Rashid', 'Rashid ', 'Muhammad', 'tech', 'computer_science', ''),
(156, 'Power Electronics - Mohan', 'Mohan', 'Ned', 'tech', 'computer_science', ''),
(157, 'Neural Networks', 'Haykin', 'Simon', 'tech', 'data_science', ''),
(158, 'Grapes of Wrath, The', 'Steinbeck', 'John', 'fiction', 'classic', ''),
(159, 'Vyakti ani Valli', 'Deshpande', 'P L', 'nonfiction', 'misc', ''),
(160, 'Statistical Learning Theory', 'Vapnik', 'Vladimir', 'tech', 'data_science', ''),
(161, 'Empire of the Mughal - The Tainted Throne', 'Rutherford', 'Alex', 'nonfiction', 'history', ''),
(162, 'Empire of the Mughal - Brothers at War', 'Rutherford', 'Alex', 'nonfiction', 'history', ''),
(163, 'Empire of the Mughal - Ruler of the World', 'Rutherford', 'Alex', 'nonfiction', 'history', ''),
(164, 'Empire of the Mughal - The Serpent\'s Tooth', 'Rutherford', 'Alex', 'nonfiction', 'history', ''),
(165, 'Empire of the Mughal - Raiders from the North', 'Rutherford', 'Alex', 'nonfiction', 'history', ''),
(166, 'Mossad', 'Baz-Zohar', 'Michael', 'nonfiction', 'history', ''),
(167, 'Jim Corbett Omnibus', 'Corbett', 'Jim', 'nonfiction', 'history', ''),
(168, '20000 Leagues Under the Sea', 'Verne', 'Jules', 'fiction', 'novel', ''),
(169, 'Batatyachi Chal', 'Deshpande P L', '', 'fiction', 'novel', ''),
(170, 'Hafasavnuk', 'Deshpande P L', '', 'fiction', 'novel', ''),
(171, 'Urlasurla', 'Deshpande P L', '', 'fiction', 'novel', ''),
(172, 'Pointers in C', 'Kanetkar', 'Yashwant', 'tech', 'computer_science', ''),
(173, 'Cathedral and the Bazaar, The', 'Raymond', 'Eric', 'tech', 'computer_science', ''),
(174, 'Design with OpAmps', 'Franco', 'Sergio', 'tech', 'computer_science', ''),
(175, 'Think Complexity', 'Downey', 'Allen', 'tech', 'data_science', ''),
(176, 'Devil\'s Advocate, The', 'West', 'Morris', 'fiction', 'novel', ''),
(177, 'Ayn Rand Answers', 'Rand', 'Ayn', 'philosophy', 'objectivism', ''),
(178, 'Philosophy: Who Needs It', 'Rand', 'Ayn', 'philosophy', 'objectivism', ''),
(179, 'World\'s Great Thinkers, The', '', '', 'science', 'physics', ''),
(180, 'Data Analysis with Open Source Tools', 'Janert', 'Phillip', 'tech', 'data_science', ''),
(181, 'Broca\'s Brain', 'Sagan', 'Carl', 'science', 'physics', ''),
(182, 'Men of Mathematics', 'Bell', 'E T', 'science', 'mathematics', ''),
(183, 'Oxford book of Modern Science Writing', 'Dawkins', 'Richard', 'science', 'science', ''),
(184, 'Justice, Judiciary and Democracy', 'Ranjan', 'Sudhanshu', 'nonfiction', 'legal', ''),
(185, 'Arthashastra, The', 'Kautiyla', '', 'philosophy', 'philosophy', ''),
(186, 'We the People', 'Palkhivala', '', 'philosophy', 'philosophy', ''),
(187, 'We the Nation', 'Palkhivala', '', 'philosophy', 'philosophy', ''),
(188, 'Courtroom Genius, The', 'Sorabjee', '', 'nonfiction', 'autobiography', ''),
(189, 'Dongri to Dubai', 'Zaidi', 'Hussain', 'nonfiction', 'history', ''),
(190, 'History of England, Foundation', 'Ackroyd', 'Peter', 'nonfiction', 'history', ''),
(191, 'City of Djinns', 'Dalrymple', 'William', 'nonfiction', 'history', ''),
(192, 'India\'s Legal System', 'Nariman', '', 'nonfiction', 'legal', ''),
(193, 'More Tears to Cry', 'Sassoon', 'Jean', 'fiction', 'novel', ''),
(194, 'Ropemaker, The', 'Dickinson', 'Peter', 'fiction', 'novel', ''),
(195, 'Angels & Demons', 'Brown', 'Dan', 'fiction', 'novel', ''),
(196, 'Judge, The', '', '', 'fiction', 'novel', ''),
(197, 'Attorney, The', '', '', 'fiction', 'novel', ''),
(198, 'Prince, The', 'Machiavelli', '', 'fiction', 'classic', ''),
(199, 'Eyeless in Gaza', 'Huxley', 'Aldous', 'fiction', 'novel', ''),
(200, 'Tales of Beedle the Bard', 'Rowling', 'J K', 'fiction', 'novel', ''),
(201, 'Girl with the Dragon Tattoo', 'Larsson', 'Steig', 'fiction', 'novel', ''),
(202, 'Girl who kicked the Hornet\'s Nest', 'Larsson', 'Steig', 'fiction', 'novel', ''),
(203, 'Girl who played with Fire', 'Larsson', 'Steig', 'fiction', 'novel', ''),
(204, 'Batman Handbook', '', '', 'fiction', 'comic', ''),
(205, 'Murphy\'s Law', '', '', 'philosophy', 'psychology', ''),
(206, 'Structure and Randomness', 'Tao', 'Terence', 'science', 'mathematics', ''),
(207, 'Image Processing with MATLAB', 'Eddins', 'Steve', 'tech', 'signal_processing', ''),
(208, 'Animal Farm', 'Orwell', 'George', 'fiction', 'classic', ''),
(209, 'Idiot, The', 'Dostoevsky', 'Fyodor', 'fiction', 'classic', ''),
(210, 'Christmas Carol, A', 'Dickens', 'Charles', 'fiction', 'classic', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
