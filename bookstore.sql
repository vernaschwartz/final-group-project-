-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2018 at 08:36 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` smallint(6) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `cover` text,
  `description` text,
  `price` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `genre`, `cover`, `description`, `price`) VALUES
(1, '1984', 'George Orwell', 'Dystopian Fiction', '1984.jpg', 'In George Orwell\'s 1984, Winston Smith wrestles with oppression in Oceania, a place where the Party scrutinizes human actions with ever-watchful Big Brother. Defying a ban on individuality, Winston dares to express his thoughts in a diary and pursues a relationship with Julia. These criminal deeds bring Winston into the eye of the opposition, who then must reform the nonconformist.', '7.99'),
(2, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 'The_Great_Gatsby.jpeg', 'F. Scott Fitzgerald\'s novel,The Great Gatsby, follows Jay Gatsby, a man who orders his life around one desire: to be reunited with Daisy Buchanan, the love he lost five years earlier. Gatsby\'s quest leads him from poverty to wealth, into the arms of his beloved, and eventually to death. Published in 1925, The Great Gatsby is a classic piece of American fiction. It is a novel of triumph and tragedy, noted for the remarkable way Fitzgerald captured a cross-section of American society.', '6.99'),
(3, 'Brave New World', 'Aldous Huxley', 'Dystopian Fiction', 'Brave_New_World.jpg', 'Brave New World opens in London, nearly six hundred years in the future (\"After Ford\"). Human life has been almost entirely industrialized — controlled by a few people at the top of a World State.', '8.99'),
(4, 'Slaughterhouse-Five', 'Kurt Vonnegut', 'Science Fiction', 'Slaughterhouse-Five.jpg', 'Slaughterhouse-Five is an account of Billy Pilgrim\'s capture and incarceration by the Germans during the last years of World War II, and scattered throughout the narrative are episodes from Billy\'s life both before and after the war, and from his travels to the planet Tralfamadore.', '10.99'),
(5, 'Catch-22', 'Joseph Heller', 'Satirical', 'Catch-22.jpg', 'Catch-22 is a satirical, historical novel by the American author Joseph Heller, first published in 1961. The novel, set during the later stages of World War II from 1943 onwards, is frequently cited as one of the great literary works of the twentieth century. It has a distinctive non-chronological style where events are described from different characters\' points of view and out of sequence so that the time line develops along with the plot.', '11.00'),
(6, 'Harry Potter and the Sorcerers Stone', 'J.K. Rowling', 'Fantasy', 'Harry_Potter_and_the_Sorcerers_Stone.jpg', 'The plot follows Harry Potter, a young wizard who discovers his magical heritage as he makes close friends and a few enemies in his first year at the Hogwarts School of Witchcraft and Wizardry. With the help of his friends, Harry faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', '12.99'),
(7, 'Harry Potter and the Chamber of Secrets\r\n', 'J.K. Rowling', 'Fantasy', 'Harry_Potter_and_the_Chamber_of_Secrets.gif', 'The plot follows Harry\'s second year at Hogwarts School of Witchcraft and Wizardry, during which a series of messages on the walls of the school\'s corridors warn that the \"Chamber of Secrets\" has been opened and that the \"heir of Slytherin\" would kill all pupils who do not come from all-magical families. These threats are found after attacks which leave residents of the school \"petrified\" (frozen like stone). Throughout the year, Harry and his friends Ron and Hermione investigate the attacks.', '9.99'),
(8, 'Harry Potter and the Prisoner of Azkaban\r\n', 'J.K. Rowling', 'Fantasy', 'Harry_Potter_and_the_Prisoner_of_Azkaban.jpg', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry. Along with friends Ronald Weasley and Hermione Granger, Harry investigates Sirius Black, an escaped prisoner from Azkaban who they believe is one of Lord Voldemort\'s old allies.', '7.99'),
(9, 'Harry Potter and the Goblet of Fire\r\n', 'J.K. Rowling', 'Fantasy', 'Harry_Potter_and_the_Goblet_of_Fire.jpg', 'Harry Potter and the Goblet of Fire is a fantasy book written by British author J. K. Rowling and the fourth novel in the Harry Potter series. It follows Harry Potter, a wizard in his fourth year at Hogwarts School of Witchcraft and Wizardry and the mystery surrounding the entry of Harry\'s name into the Triwizard Tournament, in which he is forced to compete.', '12.99'),
(10, 'Harry Potter and the Order of the Phoenix\r\n', 'J.K. Rowling', 'Fantasy', 'Harry_Potter_and_the_Order_of_the_Phoenix.jpg', 'Harry Potter and the Order of the Phoenix is a fantasy novel written by J. K. Rowling and the fifth novel in the Harry Potter series. It follows Harry Potter\'s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.', '10.25'),
(11, 'How We Fall', 'Kate Brauning', 'Fiction', 'How_We_Fall.jpg', 'No description available.', '14.99'),
(12, 'It', 'Stephen King', 'Horror', 'It.jpg', 'The story follows the experiences of seven children as they are terrorized by an entity that exploits the fears and phobias of its victims to disguise itself while hunting its prey. \"It\" primarily appears in the form of a clown to attract its preferred prey of young children.', '8.99'),
(13, 'Hollow City', 'Ransom Riggs', 'Horror', 'Hollow_City.jpg', 'No Description Available.', '12.99'),
(14, 'The Lost Boy', 'Dave Pelzer', 'Memoir', 'The_Lost_Boy.jpg', 'The book discusses Pelzer\'s struggling with his ability to fit in and adapt to the new environment around him as he is put into foster care. It also talks about the kindness of his foster parents and other people around him as well as his inability to brush his mother aside.', '7.99'),
(15, 'The Daughter', 'Jane Shemilt', 'Fiction', 'The_Daughter.jpg', 'Jenny is a successful family doctor, the mother of three great teenagers, married to a celebrated neurosurgeon.\r\n\r\nBut when her youngest child, fifteen-year-old Naomi, doesn’t come home after her school play, Jenny’s seemingly ideal life begins to crumble. The authorities launch a nationwide search with no success. Naomi has vanished, and her family is broken.', '9.99'),
(16, 'The Passage', 'Justin Cronin', 'Dystopian Fiction', 'The_Passage.jpg', 'The Passage begins in the near future and details an apocalyptic and, later, post-apocalyptic world that is overrun by vampire-like beings who are infected by a highly contagious virus. What begins as a project to develop a new immunity-boosting drug based on a virus carried by an unnamed species of bat in South America eventually becomes the virus that transforms the world. The novel begins in 2016 and spans more than ninety years, as colonies of humans attempt to live in a world filled with superhuman creatures who are continually on the hunt for fresh blood.', '10.99'),
(17, 'Prey', 'Michael Crichton', 'Horror', 'Prey.jpg', 'Like Jurassic Park, the novel serves as a cautionary tale about developments in science and technology; in this case, nanotechnology, genetic engineering and artificial intelligence.\r\n\r\nThe book features relatively new advances in the computing/scientific community, such as artificial life, emergence (and by extension, complexity), genetic algorithms, and agent-based computing. Fields such as population dynamics and host-parasite coevolution are also at the heart of the novel.', '7.99'),
(18, 'Sphere', 'Michael Crichton', 'Science Fiction', 'Sphere.jpg', 'The story follows Norman Johnson, a psychologist engaged by the United States Navy, who joins a team of scientists assembled to examine a spacecraft of unknown origin discovered on the bottom of the Pacific Ocean. The novel begins as a science fiction story but quickly transforms into a psychological thriller, developing into an exploration of the nature of the human imagination.', '9.99'),
(19, 'The Devil in the White City', 'Erik Larson', 'Historical Fiction', 'The_Devil_in_the_White_City.jpg', 'The book is set in Chicago in 1893, interweaving the true tales of Daniel H. Burnham, the architect behind the 1893 World\'s Fair, and Dr. H. H. Holmes, pharmacist and serial killer who lured his victims to their deaths in his elaborately constructed \"Murder Castle\". The Devil in the White City is divided into four parts, the first three happening in Chicago between 1890-1893. Part four of the novel takes place in Philadelphia circa 1895. The story of Daniel Burnham, his building of the fair and the struggles he overcomes forms one plot line. The other, vividly different plot line is that of H.H. Holmes, a mentally unstable pharmacist/doctor who forms a plan to use an abandoned lot across from his pharmacy to lure in and kill multiple victims.', '10.99'),
(20, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 'The_Catcher_in_the_Rye.jpg', 'Holden Caulfield recounts the days following his expulsion from Pencey Prep, a private school. After a fight with his roommate, Stradlater, Holden leaves school two days early to explore New York before returning home, interacting with teachers, prostitutes, nuns, an old girlfriend, and his sister along the way. J.D. Salinger\'s classic The Catcher in the Rye illustrates a teenager\'s dramatic struggle against death and growing up.', '5.99');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `isAdmin`) VALUES
(1, 'admin', 'admin', 'admin@bookstore.com', 1),
(2, 'guest', 'password', 'guest@bookstore.com', 0),
(3, 'vschwart', 'BASKETBALL03', 'vschwart@iu.edu', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
