-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2015 at 04:47 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `b_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `item_no` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`c_id`, `user`, `item_no`, `amount`) VALUES
(2, 'avinashw50w@gmail.com', 'f1', 488),
(3, 'avinashw50w@gmail.com', 'f5', 358),
(4, 'avinashw50w@gmail.com', 'fj1', 3245);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` varchar(30) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category`) VALUES
('1', 'Football');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `name` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`name`, `pass`) VALUES
('admin', 'adityabose');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(30) NOT NULL,
  `phone no` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subj` varchar(30) NOT NULL,
  `mesg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `phone no`, `email`, `subj`, `mesg`) VALUES
('Aditya', '9674004651', 'adityabose27@gmail.com', 'Service', 'Try to improve your delivery s');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `catg` varchar(40) NOT NULL,
  `subcatg` varchar(40) NOT NULL,
  `img` varchar(30) NOT NULL,
  `itemno` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `desc` varchar(300) DEFAULT NULL,
  `info` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`catg`, `subcatg`, `img`, `itemno`, `price`, `desc`, `info`) VALUES
('1', 'Footballs', 'c:/wamp/www/Online_Shopping/it', 'f1', 488, 'Hikco PVC World Cup Football Multicolor', '1) Suitable Ground: Hard wet grass, 2) Stitching Type: Hand'),
('1', 'Footballs', 'c:/wamp/www/Online_Shopping/it', 'f2', 649, 'Nivia Street Football, Size 5 (Black)', 'Rubberised hand stitched, 32 panel handstiched, One ply cotton, Two ply poly viscus, Made of hight quality synthetic material'),
('1', 'Footballs', 'c:/wamp/www/Online_Shopping/it', 'f3', 295, 'Cosco Rio Football, Size 3', 'Size: 3, PVC Machine Stitched, Durable top cover, excellent shape stability, Air retention, Nylon winding and butyl bladder, Color: Yellow, Box Content: 1 Football'),
('1', 'Footballs', 'c:/wamp/www/Online_Shopping/it', 'f4', 355, 'Nivia Storm Football, Size 5', 'Offering optimum response and feel, Rubber outer shell, Ensures good performance, Rubber moulded football, The ball is meant for very light play and not for playing on rough ground'),
('1', 'Footballs', 'c:/wamp/www/Online_Shopping/it', 'f5', 358, 'Nivia Trainer Football, Size 5 (White)', 'Size: Size 5, Color: White, Constructed from 32 panels, Synthetic Rubber panels for soft touch and high abrasion resistance, Panels are hand stitched using heavy gauge thread which is pre-stretched and waxed, Latex bladder for excellent rebound, Air Lock valve for air retention, Box Content:1 Football'),
('1', 'Footballs', 'c:/wamp/www/Online_Shopping/it', 'f6', 750, 'Adidas Brazuca Train Pro Football Size 5', 'Spring Summer 2014 Collection, Polyester and Cotton, Polyurethane Non-woven (100%), High Durability and Quality'),
('1', 'Shoes', 'c:/wamp/www/Online_Shopping/it', 'sh1', 478, 'Vector X Amaze 001 Football Shoes, Men (Green/Blue)', 'Increase your training load, Perform to your maximum, Recover more quickly, Prevent Injury and fatigue, Synthetic Leather: TPU sole'),
('1', 'Shoes', 'c:/wamp/www/Online_Shopping/it', 'sh2', 4000, 'Nike Men Football Boots', 'Material: Synthetic, Lifestyle: Casual, Closure Type: Lace-Up, Warranty Type: Manufacturer, Product warranty against manufacturing defects: 30 days, Care Instruction: Allow your pair of shoes to air and de-odorize at a regular basis, this also helps them retain their natural shape; use shoe bags to prevent any stains or mildew; dust any dry dirt from the surface using a clean cloth, do not use polish or shiner'),
('1', 'Shoes', 'c:/wamp/www/Online_Shopping/it', 'sh3', 2199, 'Fila Men Malvolio Football Boots', 'Material: Rubber, Lifestyle: Casual, Closure type: Lace-Up, Warranty Type: Manufacturer, Product warranty against manufacturing defects: 90 days, Care instructions: Allow your pair of shoes to air and de-odorize at a regular basis, this also helps them retain their natural shape; use shoe bags to prevent any stains or mildew; dust any dry dirt from the surface using a clean cloth, do not use polish or shiner'),
('1', 'Shoes', 'c:/wamp/www/Online_Shopping/it', 'sh4', 399, 'Vector X Dynamic 001 Football Shoes, Men (Black/Silver)', 'Increase your training load, Perform to your maximum, Recover more quickly, Prevent Injury and fatigue, Synthetic Leather: PVC sole'),
('1', 'Shoes', 'c:/wamp/www/Online_Shopping/it', 'sh5', 430, 'Vector X Amaze 001 Football Shoes, Men (Green/Blue)', 'Increase your training load, Perform to your maximum, Recover more quickly, Prevent Injury and fatigue, Synthetic Leather: PVC sole'),
('1', 'Shoes', 'c:/wamp/www/Online_Shopping/it', 'sh6', 424, 'Vector X Chaser ll 001-M Football Shoes, Men (Green/Black)', 'Increase your training load, Perform to your maximum, Recover more quickly, Prevent Injury and fatigue, Synthetic Leather: PVC sole'),
('1', 'Shorts', 'c:/wamp/www/Online_Shopping/it', 'fs1', 315, 'S-Mark Sports Shorts (Black)', 'S-Mark Super-Poly Sports Shorts (Free Size Waist Range 32-36, Free Size waist range 32-36 inches with adjustable String for better Fit, Best for sport-persons who like to keep their body warm during sports or physical activity, Zip on both sides, Excellent Fabric, the colour and design may vary subject to availability.'),
('1', 'Shorts', 'c:/wamp/www/Online_Shopping/it', 'fs2', 1265, 'Nike 519083-010 As Comp 13 LCR Knit Shorts , Men (Black)', 'Box Contents: 1x clothing'),
('1', 'Shorts', 'c:/wamp/www/Online_Shopping/it', 'fs3', 699, 'Kipsta F300 Kids Football Shorts - Size 6 Years', 'Kipsta F300 Kids Football Shorts - Size 6 Years'),
('1', 'Shorts', 'c:/wamp/www/Online_Shopping/it', 'fs4', 799, 'Kipsta F500 Shorts Junior Size - 14 Years', 'Kipsta F500 Shorts Junior Size - 14 Years'),
('1', 'Shorts', 'c:/wamp/www/Online_Shopping/it', 'fs5', 556, 'Kipsta F300 Shorts, Men (Blue)', 'Size: Small'),
('1', 'Shorts', 'c:/wamp/www/Online_Shopping/it', 'fs6', 843, 'Kipsta F500 Kids Football Shorts - Size 6 Years', 'Kipsta F500 Kids Football Shorts - Size 6 Years'),
('1', 'Jersey', 'c:/wamp/www/Online_Shopping/it', 'fj1', 3245, 'Nike Barcelona Home Jersey', 'Will be shipped with authentic Nike tags, Authentic Nike Guarantee, Regular Fit'),
('1', 'Jersey', 'c:/wamp/www/Online_Shopping/it', 'fj2', 3050, 'Nike Manchester United Short Sleeve Home Replica Jersey', 'Short sleeve jersey, Buggy on white jerseys, Bn tape on the rest, Conventional stitching, Woven/Embroidered crest, Embroidered Swoosh, Inner and outer back neck graphic, Jock tag'),
('1', 'Jersey', 'c:/wamp/www/Online_Shopping/it', 'fj3', 2399, 'Puma Arsenal Men T-Shirt', 'Material: Polyester'),
('1', 'Jersey', 'c:/wamp/www/Online_Shopping/it', 'fj4', 5529, 'Real Madrid Away Jersey for 3-14 Years Kids', '2015/2016 Real Madrid Bale #11 Away Football Soccer Kids Jersey & Short & Socks'),
('1', 'Jersey', 'c:/wamp/www/Online_Shopping/it', 'fj5', 699, 'Mumbai City FC- Sunil Chhetri Fan Jersey', 'Colour: Blue, Polyester (Dry Fit)'),
('1', 'Jersey', 'c:/wamp/www/Online_Shopping/it', 'fj6', 510, 'Kipsta F300 Jersey (Black)', 'Kipsta F300 Jersey (Black)');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `pname` varchar(30) NOT NULL,
  `itemno` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `size` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `ac_no` varchar(30) NOT NULL,
  `mob_no` varchar(30) NOT NULL,
  `add` varchar(300) NOT NULL,
  `bankname` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `order_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`pname`, `itemno`, `price`, `size`, `uname`, `ac_no`, `mob_no`, `add`, `bankname`, `city`, `order_no`) VALUES
('Hikco PVC World Cup Football M', 'f1', '?488', 'Medium', 'Aditya Bose', '111308036', '9674004651', '24, Richardson Hall', 'UBI', 'Shibpur', '001');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `title` varchar(6) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gen` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `acc_no` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `add` varchar(300) NOT NULL,
  `city` varchar(30) NOT NULL,
  `coun` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`title`, `fname`, `lname`, `gen`, `username`, `pass`, `email`, `bank`, `acc_no`, `phone`, `add`, `city`, `coun`, `dob`) VALUES
('Mr.', 'Aditya', 'Bose', 'Male', 'adityabose27@gmail.com', 'adityabose27', '', '', 0, 'chrisgayle', '24, Richardson Hall', 'Shibpur', 'India', '27-02-95'),
('Mr.', 'Ashish', 'Gupta', 'Male', 'ag123', 'ashish', 'a@gmail.com', 'SBI', 1234, '2423532565', 'afewsfge', 'awrwsef', 'India', ''),
('Mr.', 'Avinash', 'Kumar', 'Male', 'avinashw50w@gmail.com', 'avinash', '', 'SBI', 12345, '8442845251', 'abc', 'xyz', 'India', '1994-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `cat_id` varchar(30) NOT NULL,
  `subcategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`cat_id`, `subcategory`) VALUES
('1', 'Footballs'),
('1', 'Shoes'),
('1', 'Shorts'),
('1', 'Jersey');

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE IF NOT EXISTS `trash` (
  `catg` varchar(50) NOT NULL,
  `subcatg` varchar(50) NOT NULL,
  `img` varchar(60) NOT NULL,
  `itemno` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `desc` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`catg`, `subcatg`, `img`, `itemno`, `price`, `desc`) VALUES
('1', 'Footballs', 'c:/wamp/www/Online_Shopping/itempics/f1.jpg', 'f1', 488, 'abcdglrg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
