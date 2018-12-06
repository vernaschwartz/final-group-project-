-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2018 at 08:11 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `cover` text,
  `description` text,
  `price` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `genre`, `cover`, `description`, `price`) VALUES
(1, '1984', 'George Orwell', 'Dystopian Fiction', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/1984first.jpg/220px-1984first.jpg', 'In George Orwell''s 1984, Winston Smith wrestles with oppression in Oceania, a place where the Party scrutinizes human actions with ever-watchful Big Brother. Defying a ban on individuality, Winston dares to express his thoughts in a diary and pursues a relationship with Julia. These criminal deeds bring Winston into the eye of the opposition, who then must reform the nonconformist.', '7.99'),
(2, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f7/TheGreatGatsby_1925jacket.jpeg/220px-TheGreatGatsby_1925jacket.jpeg', 'F. Scott Fitzgerald''s novel,The Great Gatsby, follows Jay Gatsby, a man who orders his life around one desire: to be reunited with Daisy Buchanan, the love he lost five years earlier. Gatsby''s quest leads him from poverty to wealth, into the arms of his beloved, and eventually to death. Published in 1925, The Great Gatsby is a classic piece of American fiction. It is a novel of triumph and tragedy, noted for the remarkable way Fitzgerald captured a cross-section of American society.', '6.99'),
(3, 'Brave New World', 'Aldous Huxley', 'Dystopian Fiction', 'https://images-na.ssl-images-amazon.com/images/I/41le8ej-fiL._SL160_.jpg', 'Brave New World opens in London, nearly six hundred years in the future ("After Ford"). Human life has been almost entirely industrialized — controlled by a few people at the top of a World State.', '8.99'),
(4, 'Slaughterhouse-Five', 'Kurt Vonnegut', 'Science Fiction', 'https://images-na.ssl-images-amazon.com/images/I/41jp-9I57KL._SL160_.jpg', 'Slaughterhouse-Five is an account of Billy Pilgrim''s capture and incarceration by the Germans during the last years of World War II, and scattered throughout the narrative are episodes from Billy''s life both before and after the war, and from his travels to the planet Tralfamadore.', '10.99'),
(5, 'Catch-22', 'Joseph Heller', 'Satirical', 'https://images-na.ssl-images-amazon.com/images/I/51kqbC3YKvL._SL160_.jpg', 'Catch-22 is a satirical, historical novel by the American author Joseph Heller, first published in 1961. The novel, set during the later stages of World War II from 1943 onwards, is frequently cited as one of the great literary works of the twentieth century. It has a distinctive non-chronological style where events are described from different characters'' points of view and out of sequence so that the time line develops along with the plot.', '11.00'),
(6, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', 'https://www.scholastic.com/content5/media/products/27/9780590353427_mres.jpg', 'The plot follows Harry Potter, a young wizard who discovers his magical heritage as he makes close friends and a few enemies in his first year at the Hogwarts School of Witchcraft and Wizardry. With the help of his friends, Harry faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry''s parents, but failed to kill Harry when he was just 15 months old.', '12.99'),
(7, 'Harry Potter and the Chamber of Secrets\r\n', 'J.K. Rowling', 'Fantasy', 'https://www.teachervision.com/sites/default/files/fe_slideshow/2007_07/HPusa2_TV.gif', 'The plot follows Harry''s second year at Hogwarts School of Witchcraft and Wizardry, during which a series of messages on the walls of the school''s corridors warn that the "Chamber of Secrets" has been opened and that the "heir of Slytherin" would kill all pupils who do not come from all-magical families. These threats are found after attacks which leave residents of the school "petrified" (frozen like stone). Throughout the year, Harry and his friends Ron and Hermione investigate the attacks.', '9.99'),
(8, 'Harry Potter and the Prisoner of Azkaban\r\n', 'J.K. Rowling', 'Fantasy', 'https://www.scholastic.com/content5/media/products/65/9780439136365_mres.jpg', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry. Along with friends Ronald Weasley and Hermione Granger, Harry investigates Sirius Black, an escaped prisoner from Azkaban who they believe is one of Lord Voldemort''s old allies.', '7.99'),
(9, 'Harry Potter and the Goblet of Fire\r\n', 'J.K. Rowling', 'Fantasy', 'https://www.teachervision.com/sites/default/files/fe_slideshow/2007_07/HPusa4_TV.jpg', 'Harry Potter and the Goblet of Fire is a fantasy book written by British author J. K. Rowling and the fourth novel in the Harry Potter series. It follows Harry Potter, a wizard in his fourth year at Hogwarts School of Witchcraft and Wizardry and the mystery surrounding the entry of Harry''s name into the Triwizard Tournament, in which he is forced to compete.', '12.99'),
(10, 'Harry Potter and the Order of the Phoenix\r\n', 'J.K. Rowling', 'Fantasy', 'http://harrypotterfanzone.com/wp-content/2009/06/ootp-us-jacket-art.jpg', 'Harry Potter and the Order of the Phoenix is a fantasy novel written by J. K. Rowling and the fifth novel in the Harry Potter series. It follows Harry Potter''s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.', '10.25'),
(11, 'How We Fall', 'Kate Brauning', 'Fiction', 'https://images-na.ssl-images-amazon.com/images/I/41oWqGpN3YL.jpg', 'No description available.', '14.99'),
(12, 'It', 'Stephen King', 'Horror', 'https://upload.wikimedia.org/wikipedia/en/5/5a/It_cover.jpg', 'The story follows the experiences of seven children as they are terrorized by an entity that exploits the fears and phobias of its victims to disguise itself while hunting its prey. "It" primarily appears in the form of a clown to attract its preferred prey of young children.', '8.99'),
(13, 'Hollow City', 'Ransom Riggs', 'Horror', 'https://upload.wikimedia.org/wikipedia/en/b/bd/Hollow_City_%28novel%29_cover.jpg', 'No Description Available.', '12.99'),
(14, 'The Lost Boy', 'Dave Pelzer', 'Memoir', 'https://upload.wikimedia.org/wikipedia/en/7/79/The_Lost_Boy_%28book%29_US_cover.jpg', 'The book discusses Pelzer''s struggling with his ability to fit in and adapt to the new environment around him as he is put into foster care. It also talks about the kindness of his foster parents and other people around him as well as his inability to brush his mother aside.', '7.99'),
(15, 'The Daughter', 'Jane Shemilt', 'Fiction', 'https://images-na.ssl-images-amazon.com/images/I/51GCAP%2BU-qL.jpg', 'Jenny is a successful family doctor, the mother of three great teenagers, married to a celebrated neurosurgeon.\r\n\r\nBut when her youngest child, fifteen-year-old Naomi, doesn’t come home after her school play, Jenny’s seemingly ideal life begins to crumble. The authorities launch a nationwide search with no success. Naomi has vanished, and her family is broken.', '9.99'),
(16, 'The Passage', 'Justin Cronin', 'Dystopian Fiction', 'https://upload.wikimedia.org/wikipedia/en/4/4c/The_Passage_%28Justin_Cronin_novel_-_cover_art%29.jpg', 'The Passage begins in the near future and details an apocalyptic and, later, post-apocalyptic world that is overrun by vampire-like beings who are infected by a highly contagious virus. What begins as a project to develop a new immunity-boosting drug based on a virus carried by an unnamed species of bat in South America eventually becomes the virus that transforms the world. The novel begins in 2016 and spans more than ninety years, as colonies of humans attempt to live in a world filled with superhuman creatures who are continually on the hunt for fresh blood.', '10.99'),
(17, 'Prey', 'Michael Crichton', 'Horror', 'https://upload.wikimedia.org/wikipedia/en/9/9d/Prey1.jpg', 'Like Jurassic Park, the novel serves as a cautionary tale about developments in science and technology; in this case, nanotechnology, genetic engineering and artificial intelligence.\r\n\r\nThe book features relatively new advances in the computing/scientific community, such as artificial life, emergence (and by extension, complexity), genetic algorithms, and agent-based computing. Fields such as population dynamics and host-parasite coevolution are also at the heart of the novel.', '7.99'),
(18, 'Sphere', 'Michael Crichton', 'Science Fiction', 'https://upload.wikimedia.org/wikipedia/en/b/b8/Big-sphere.jpg', 'The story follows Norman Johnson, a psychologist engaged by the United States Navy, who joins a team of scientists assembled to examine a spacecraft of unknown origin discovered on the bottom of the Pacific Ocean. The novel begins as a science fiction story but quickly transforms into a psychological thriller, developing into an exploration of the nature of the human imagination.', '9.99'),
(19, 'The Devil in the White City', 'Erik Larson', 'Historical Fiction', 'https://upload.wikimedia.org/wikipedia/en/c/c7/DWCity.jpg', 'The book is set in Chicago in 1893, interweaving the true tales of Daniel H. Burnham, the architect behind the 1893 World''s Fair, and Dr. H. H. Holmes, pharmacist and serial killer who lured his victims to their deaths in his elaborately constructed "Murder Castle". The Devil in the White City is divided into four parts, the first three happening in Chicago between 1890-1893. Part four of the novel takes place in Philadelphia circa 1895. The story of Daniel Burnham, his building of the fair and the struggles he overcomes forms one plot line. The other, vividly different plot line is that of H.H. Holmes, a mentally unstable pharmacist/doctor who forms a plan to use an abandoned lot across from his pharmacy to lure in and kill multiple victims.', '10.99'),
(20, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 'https://upload.wikimedia.org/wikipedia/en/3/32/Rye_catcher.jpg', 'Holden Caulfield recounts the days following his expulsion from Pencey Prep, a private school. After a fight with his roommate, Stradlater, Holden leaves school two days early to explore New York before returning home, interacting with teachers, prostitutes, nuns, an old girlfriend, and his sister along the way. J.D. Salinger''s classic The Catcher in the Rye illustrates a teenager''s dramatic struggle against death and growing up.', '5.99');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `isAdmin`) VALUES
(1, 'admin', 'admin', 'admin@bookstore.com', 1),
(2, 'guest', 'password', 'guest@bookstore.com', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
