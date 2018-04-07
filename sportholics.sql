-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2018 at 05:54 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportholics`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pimg` varchar(255) NOT NULL,
  `pmrp` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `pimg`, `pmrp`, `pname`, `quantity`, `totalprice`) VALUES
(13, 5, 'products/basketball/basketballs/1.jpeg', 1200, 'SPALDING Basket Ball NBA S-7 Basketball - Size: 7', 1, 1200),
(1, 5, 'products/badminton/grips/1.jpeg', 1440, 'Li-Ning GP-20 Pack of 20 Gripper', 1, 1440),
(3, 5, '', 0, '', 1, 0),
(57, 1, 'products/football/bibs/1.jpeg', 1600, ' Pilot sports co 12 Sport Bibs  (green)', 1, 1600),
(58, 1, 'products/football/bibs/2.jpeg', 1599, 'GSI 12 Sport Bibs??(Blue)', 2, 3198);

-- --------------------------------------------------------

--
-- Table structure for table `ordermain`
--

CREATE TABLE `ordermain` (
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `deladdr` varchar(255) NOT NULL,
  `date2` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Not Delivered'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordermain`
--

INSERT INTO `ordermain` (`tid`, `uid`, `fname`, `total`, `deladdr`, `date2`, `status`) VALUES
(9, 7, 'Jay', 2150, 'B-601, Sapphire Apts., Evershine City, Goregaon (West) ', '2017-10-27 06:55:43', 'Not Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordersub`
--

CREATE TABLE `ordersub` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pimg` varchar(255) NOT NULL,
  `pmrp` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `date1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordersub`
--

INSERT INTO `ordersub` (`id`, `uid`, `pimg`, `pmrp`, `pname`, `quantity`, `totalprice`, `date1`) VALUES
(13, 5, 'products/basketball/basketballs/1.jpeg', 1200, 'SPALDING Basket Ball NBA S-7 Basketball - Size: 7', 1, 1200, '2017-10-11 07:00:02'),
(86, 1, 'products/hockey/balls/1.jpeg', 450, 'Parbat Field Pack 4 Hockey Ball - Size: 5??(Pack of 4, White)', 1, 450, '2017-10-11 08:16:41'),
(28, 1, 'products/cricket/balls/1.jpeg', 500, 'Prokyde Arena White Cricket Ball Cricket Ball - Size: 4?', 1, 500, '2017-10-11 08:17:55'),
(13, 1, 'products/basketball/basketballs/1.jpeg', 1200, 'SPALDING Basket Ball NBA S-7 Basketball - Size: 7', 1, 1200, '2017-10-11 08:17:55'),
(14, 1, 'products/basketball/basketballs/2.jpeg', 1250, 'Nivia Pro Street Basketball - Size: 7', 1, 1250, '2017-10-11 08:17:55'),
(35, 1, 'products/cricket/bats/3.jpeg', 799, 'MRS mrso11 Poplar Willow Cricket Bat?', 1, 799, '2017-10-11 11:34:03'),
(15, 1, 'products/basketball/basketballs/3.jpeg', 799, 'Nivia Pro-Grip 110', 1, 799, '2017-10-11 13:23:18'),
(13, 1, 'products/basketball/basketballs/1.jpeg', 1200, 'SPALDING Basket Ball NBA S-7 Basketball - Size: 7', 4, 4800, '2017-10-11 13:23:18'),
(43, 7, 'products/cricket/helmets/2.jpeg', 1000, 'Gray Nicolls Atomic Gn5 Cricket Helmet??(Navy Blue)', 1, 1000, '2017-10-27 06:55:43'),
(54, 7, 'products/cricket/stumps/1.jpeg', 1150, 'Rhino Cricket Wooden Stumps', 1, 1150, '2017-10-27 06:55:43'),
(2, 8, 'products/badminton/grips/2.jpeg', 300, 'Yonex ET 902 E Super Smooth Tacky Grip ', 1, 300, '2017-11-10 12:56:31'),
(28, 1, 'products/cricket/balls/1.jpeg', 500, 'Prokyde Arena White Cricket Ball Cricket Ball - Size: 4?', 1, 500, '2017-11-11 08:41:19'),
(28, 1, 'products/cricket/balls/1.jpeg', 500, 'Prokyde Arena White Cricket Ball Cricket Ball - Size: 4?', 1, 500, '2018-04-05 08:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pcategory` varchar(255) NOT NULL,
  `ptype` varchar(255) NOT NULL,
  `pprice` int(11) NOT NULL,
  `pmrp` int(11) NOT NULL,
  `pimg` varchar(255) NOT NULL,
  `pdescr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pcategory`, `ptype`, `pprice`, `pmrp`, `pimg`, `pdescr`) VALUES
(1, 'Li-Ning GP-20 Pack of 20 Gripper', 'badminton', 'grips', 950, 1440, 'products/badminton/grips/1.jpeg', 'This Li Ning GP 20 Grip comes as a pack of 20 and each one is made of polyurethane which is light yet durable and sturdy.'),
(2, 'Yonex ET 902 E Super Smooth Tacky Grip ', 'badminton', 'grips', 200, 300, 'products/badminton/grips/2.jpeg', 'Yonex ET 902 E Super Badminton grips are made for comfort. These grips are sweat absorbent and highly sticky. '),
(3, 'Silver\'s SB - 719 Combo 2 Badminton Kit', 'badminton', 'kits', 699, 1799, 'products/badminton/kits/1.jpeg', 'Doubles and mixed-doubles badminton players can practice for their upcoming tournaments with this Silver?s Combo 2 Badminton Kit. You can also spend some quality time with your family and friends by playing with this kit.'),
(4, 'Silver\'s SB - 719 Combo 1 Badminton Kit', 'badminton', 'kits', 399, 999, 'products/badminton/kits/2.jpeg', 'Badminton is a game that can help you maintain your body fitness. This Silver?s Combo Badminton Kit is designed to help you practice your shots or enjoy a refreshing game with your friends and family.Designed for Practice'),
(5, 'WSG PRO Badminton Net??(Black)', 'badminton', 'nets', 550, 700, 'products/badminton/nets/1.jpeg', 'Standard Size Shuttle Badminton Net, Box Packing'),
(6, 'Neulife Nylon Badminton Net With Bag Badminton Net??(Brown)', 'badminton', 'nets', 350, 1000, 'products/badminton/nets/2.jpeg', 'Neulife nylon badminton net , So use it for your longest rallies and get the benefit of a superior high quality,?'),
(7, ' Yonex Carbonax', 'badminton', 'racquets', 349, 600, 'products/badminton/racquets/1.jpeg', 'Great looking badminton. Very sturdy.'),
(8, 'Yonex Nanoray', 'badminton', 'racquets', 450, 750, 'products/badminton/racquets/2.jpeg', 'Extremely light weight racquet. Net quality is great.'),
(9, 'Yonex 303', 'badminton', 'racquets', 200, 300, 'products/badminton/racquets/3.jpeg', 'Best racquet in this price segment. Must buy.'),
(10, 'Apacs Aero Space 808 Nylon Shuttle - White', 'badminton', 'shuttlecock', 750, 1000, 'products/badminton/shuttlecock/1.jpeg', 'Apacs Aero-Space 808 is a shutte cock with a blue cap and is a White colored nylon shuttle cock.'),
(11, 'Yonex MAVIS 350 - Green Cap Nylon Shuttle - Multicolor', 'badminton', 'shuttlecock', 699, 950, 'products/badminton/shuttlecock/2.jpeg', 'The Yonex Mavis 350 green cap nylon shuttlecock has been precision built to offer superior flight performance once it strikes the racquet.?'),
(12, 'Yonex Aeroclub-Tr Feather Shuttle - White', 'badminton', 'shuttlecock', 1250, 1500, 'products/badminton/shuttlecock/3.jpeg', 'The Yonex ACB-TR shuttlecock is made from duck feather, delivering excellent quality and construction, while delivering durability and consistency in flight.'),
(13, 'SPALDING Basket Ball NBA S-7 Basketball - Size: 7', 'basketball', 'basketballs', 450, 1200, 'products/basketball/basketballs/1.jpeg', 'Best basketball really good awsome grip value for money'),
(14, 'Nivia Pro Street Basketball - Size: 7', 'basketball', 'basketballs', 750, 1250, 'products/basketball/basketballs/2.jpeg', 'Water resistant. Rubber material.'),
(15, 'Nivia Pro-Grip 110', 'basketball', 'basketballs', 359, 799, 'products/basketball/basketballs/3.jpeg', 'Water resistant. Rubber material.'),
(16, 'Nivia Pro-Grip 350', 'basketball', 'basketballs', 450, 900, 'products/basketball/basketballs/4.jpeg', 'Water resistant. Rubber material.'),
(17, ' Generic 4 Pack Inflating Needles', 'basketball', 'inflatingpins', 200, 300, 'products/basketball/inflatingpins/1.jpeg', 'It is made of stainless steel. This is a standard sized needle.'),
(18, 'Generic Inflating Needle', 'basketball', 'inflatingpins', 150, 300, 'products/basketball/inflatingpins/2.jpeg', '?This is a brand new and high quality ball pump needle that is used to inflate soccers, basketballs, volleyballs, footballs and so on'),
(19, 'YALLN 5 Pack Inflating Needles', 'basketball', 'inflatingpins', 179, 1124, 'products/basketball/inflatingpins/3.jpeg', 'These needles are universal fit. They will work for any type of ball including basketballs, footballs, soccer balls, volleyballs and more.'),
(20, 'Raisco Rings Pair Basketball Net??(Maroon, Orange)', 'basketball', 'netsandbackboards', 200, 300, 'products/basketball/netsandbackboards/1.jpeg', 'May be attached to a wall or regulation Board (Fiber Glass or Graph-to) Please seek professional advice on installation the Product'),
(21, 'Raisco Basketball Ring??(6 Basketball Size With Net)', 'basketball', 'netsandbackboards', 299, 599, 'products/basketball/netsandbackboards/2.jpeg', '1 Basketball Backboard with Ring, Net, Hanging Hooks & Nuts'),
(22, 'Raisco Wall Kids Basketball Ring??(6 Basketball Size With Net)', 'basketball', 'netsandbackboards', 399, 600, 'products/basketball/netsandbackboards/3.jpeg', '1 Basketball Hoop Large'),
(23, 'Sreshta Basketball Ring??(3 Basketball Size With Net)', 'basketball', 'netsandbackboards', 1000, 1522, 'products/basketball/netsandbackboards/4.jpeg', 'his Basketball Hoop Will Sure Help You To Encourage Your Child For Playing Games. Basketball Is Help To Develop Hand, Eye Coordination And Timing.?'),
(24, 'Crown Junior Basketball Ring??(5 Basketball Size With Net)', 'basketball', 'netsandbackboards', 750, 999, 'products/basketball/netsandbackboards/5.jpeg', '1 Basketball Ring. Maroon, Orange, Black, Yellow, Green'),
(25, 'Nivia BALL PUMP 213 Ball Pump??(Black)', 'basketball', 'pumps', 200, 450, 'products/basketball/pumps/1.jpeg', 'This BALL PUMP 213 features a double action \'\'pull and push\'\' technology which reduces the inflation time of the ball as it pumps air on both upstroke and down stroke.'),
(26, 'Wintech Airace Multipurpose With Steel Handle Pump', 'basketball', 'pumps', 350, 550, 'products/basketball/pumps/2.jpeg', 'Made using high quality materials and components ? Tested to ensure quality and durability ? Double-sided twinhead TM works with presta and schrader valves ? Extra long hose with 360 degree pivot'),
(27, 'Imported Double Action Ball, Balloon Pump??(Black)', 'basketball', 'pumps', 159, 259, 'products/basketball/pumps/3.jpeg', 'Handy and ensure that your football never gets out of shape. Hand Pump This pump is easy to operate and you can easily inflate footballs with your hands in a pull-and-push motion. Durable Plastic'),
(28, 'Prokyde Arena White Cricket Ball Cricket Ball - Size: 4?', 'cricket', 'balls', 399, 500, 'products/cricket/balls/1.jpeg', 'Made by stitching together four pieces of leather, this Prokyde Arena White Cricket Ball is suitable for playing one-day or twenty-twenty matches.'),
(29, 'Tima Genuine Leather Cricket Ball - Size: 5', 'cricket', 'balls', 450, 650, 'products/cricket/balls/2.jpeg', 'Pack of 6 Leather ball. Enables the best outcome while bowling. The stitch ensures perfect aim while bowling. Long lasting product. Easy to use. With comfortable grip, helps master tough deliveries.'),
(30, 'Cosco Light Cricket Ball - Size: 6.5?', 'cricket', 'balls', 200, 300, 'products/cricket/balls/3.jpeg', 'Water Resistant. Weight: 40 - 90 g'),
(31, 'Sunny KSI WIND Cricket Ball - Size: `FULL', 'cricket', 'balls', 150, 200, 'products/cricket/balls/4.jpeg', 'PVC WIND BALL PACK OF 4 PCS MULTICOLOUR (90 GMS PER PC)'),
(32, 'SEGA LEATHER MATCH PRACTICE Cricket Ball - Size: 5?', 'cricket', 'balls', 350, 550, 'products/cricket/balls/5.jpeg', 'Leather Practice ball,Hanging Balls,For Knocking And Practice,Equivalent weight to Actual Leather Ball,Helps the batsman in practicing and mastering hand eye co-ordination'),
(33, 'Mrf genius grand virat kohli signed Poplar Willow Cricket Bat?', 'cricket', 'bats', 850, 1200, 'products/cricket/bats/1.jpeg', 'Poplar willow bat ideal for tennis ball play with nice stroke and curve'),
(34, 'MRS NB CRICKET BAT Poplar Willow Cricket Bat', 'cricket', 'bats', 899, 1399, 'products/cricket/bats/2.jpeg', ' Made from fine quality willow. Best for daily practice with tennis ball. Good for Club and Charity Matches'),
(35, 'MRS mrso11 Poplar Willow Cricket Bat?', 'cricket', 'bats', 699, 799, 'products/cricket/bats/3.jpeg', 'Made from fine quality willow. Best for daily practice with tennis ball. Good for Club and Charity Matches'),
(36, 'KOOKABURRA POPLAR Willow Cricket Bat?', 'cricket', 'bats', 1200, 1800, 'products/cricket/bats/4.jpeg', 'Recreational Playing Level, Weight Range 700-1000 g.'),
(37, 'New Balance Achieve DC Poplar Willow Cricket Bat', 'cricket', 'bats', 1500, 2000, 'products/cricket/bats/5.jpeg', 'Hand made from the advanced high quality premium Poplar Willow. Best for daily and practice matches. Strong handle with soft grip. Curved blade for great balance and shots.'),
(38, 'Adidas GLOVE LINER 15 Inner Gloves (M, White)', 'cricket', 'gloves', 200, 399, 'products/cricket/gloves/1.jpeg', 'Left and Right Gloves, cotton material.'),
(39, 'Prokyde Warrior Wicket Keeping Gloves', 'cricket', 'gloves', 150, 200, 'products/cricket/gloves/2.jpeg', 'Premium quality sports equipment from Prokyde. Brand: Prokyde. Type: Wicket Keeping Gloves. Ultimate Wicket Keeping Gloves, Super flexible durable material and well fitting protection'),
(40, 'Bas Vampire PRO Batting Gloves (L, Red, Yellow)', 'cricket', 'gloves', 199, 300, 'products/cricket/gloves/3.jpeg', 'Left and Right Gloves, cotton material.'),
(41, 'Premierleggaurd S8 Batting Gloves', 'cricket', 'gloves', 100, 200, 'products/cricket/gloves/4.jpeg', 'Left and Right Gloves, leather material, 500g.'),
(42, 'Shrey Masterclass Air Titanium Visor Cricket Helmet', 'cricket', 'helmets', 699, 999, 'products/cricket/helmets/1.jpeg', 'Currently the lightest helmet on the market to have certified in accordance with Latest British Safety Standards. Weight only 750 gms.?'),
(43, 'Gray Nicolls Atomic Gn5 Cricket Helmet??(Navy Blue)', 'cricket', 'helmets', 550, 1000, 'products/cricket/helmets/2.jpeg', 'Gray-Nicolls were the first manufacturer to meet the requirements of both the Australian and British standard institutes.?'),
(44, 'Shrey Masterclass Air Stainless Steel Visor Cricket Helmet??(Navy Blue)', 'cricket', 'helmets', 750, 850, 'products/cricket/helmets/3.jpeg', 'Weighs only 920 Gms. Approx. New improved fixed grill for increased safety. Increased facial & side protec_on. Advanced Air Flow System.'),
(45, 'CW Senior Pack Cricket Kit', 'cricket', 'kits', 3599, 4299, 'products/cricket/kits/1.jpeg', 'Cricket Complete Set is made out of High Quality Material It Comes in full Size with whole items of Cricket Includes Cricket Bat Full Size, Batting Pad Men Size, Batting Glove Men Size, Thigh Pad, Elbow Guard, Abdominal Guard, Cricket helmet & Shoulder Ba'),
(46, 'CW Complete Junior Size No.5 Cricket Kit', 'cricket', 'kits', 5000, 5500, 'products/cricket/kits/2.jpeg', 'A ideal gift for your little budding cricketer, this cricketing kit from the house of CW is made from premium quality materials. Coming along with a Kashmir Willow Bat (Size 5), this kit also packs in batting pads (Boys size), batting gloves, thigh pads, '),
(47, 'SG Kashmir Eco - Size 6 (Ideal for 11 to 13 years) Cricket Kit', 'cricket', 'kits', 7599, 10000, 'products/cricket/kits/3.jpeg', '1 Cricket Bat (with Cover), 1 Pair of Legguard, 1 pair of Batting Gloves, 1 Kitbag, 1 Thigh Guard, 1 Arm Guard, 1 Abdo Guard'),
(48, 'Feroc ADF White Blue Cricket Shoes??(Multicolor)', 'cricket', 'outfits', 699, 899, 'products/cricket/outfits/1.jpeg', 'For the comfort and firmness required on the cricket ground, urbane men can pick these white cricket shoes from FEROC.?'),
(49, 'Adidas Solid Men\'s Beige Track Pants', 'cricket', 'outfits', 200, 350, 'products/cricket/outfits/2.jpeg', ' Machine Wash as per Tag, Do not Dry Clean, Do not Bleach, Iron Steam or Dry as per Tag'),
(50, 'Vector X Cricket Shoes??(White, Black)', 'cricket', 'outfits', 1000, 1500, 'products/cricket/outfits/3.jpeg', 'Vector X Is One Of The Established Sports Brands Who Provide Stylish And Innovative Sports Gear To Most Of The Aspiring Sport Players As Well As Others.'),
(51, 'Nivia Solid Men\'s Polo Neck White T-Shirt', 'cricket', 'outfits', 390, 500, 'products/cricket/outfits/4.jpeg', 'Quick Dry Out Technology is used primarily to keep body dry and help athletes to feel light and fresh even after long time of activity in the field or off- field. Superior Color fastness. Knitted Collared. Regular Fit.'),
(52, 'Nivia Solid Men\'s Polo Neck White T-Shirt', 'cricket', 'outfits', 350, 650, 'products/cricket/outfits/5.jpeg', 'Quick Dry Out Technology is used primarily to keep body dry and help athletes to feel light and fresh even after long time of activity in the field or off- field. Superior Color fastness. Knitted Collared. Regular Fit.'),
(53, 'S Mark Cricket Trouser Solid Men\'s White Track Pants', 'cricket', 'outfits', 200, 400, 'products/cricket/outfits/6.jpeg', 'S-Mark Cricket Trouser ,100% Polyester Fabric With Full Comfort And Stretch .Elastic Waist With Adjustable String For Better Fit.?'),
(54, 'Rhino Cricket Wooden Stumps', 'cricket', 'stumps', 750, 1150, 'products/cricket/stumps/1.jpeg', 'Bails Included, For professionals.'),
(55, 'Lycan Champion Stumps Wth Stand??(White)', 'cricket', 'stumps', 899, 1500, 'products/cricket/stumps/2.jpeg', 'Playing Level: Professional, Made of wood'),
(56, 'Vsm Super Strong Cricket Stumps??(White)', 'cricket', 'stumps', 699, 1000, 'products/cricket/stumps/3.jpeg', '3 Stumps, Without Bails'),
(57, ' Pilot sports co 12 Sport Bibs  (green)', 'football', 'bibs', 999, 1600, 'products/football/bibs/1.jpeg', 'Available in different bright colors COMBINATIONS like Red, Fluro Yellow, Fluro Green, Orange, Blue, Pink. Best for Training Sessions of all sports whether its Cricket or football or Hockey.?'),
(58, 'GSI 12 Sport Bibs??(Blue)', 'football', 'bibs', 1499, 1599, 'products/football/bibs/2.jpeg', 'For all team sports. High sweat absorbent. Large size Sport Bibs'),
(59, 'ilot sports co 4 Sport Bibs??(fluro green)', 'football', 'bibs', 1400, 1610, 'products/football/bibs/3.jpeg', 'Available in different bright colors COMBINATIONS like Red, Fluro Yellow, Fluro Green, Orange, Blue, Pink. Best for Training Sessions of all sports whether its Cricket or football or Hockey.'),
(60, 'Furious3D CR7 Football - Size: 5??', 'football', 'footballs', 899, 1599, 'products/football/footballs/1.jpeg', 'Furious3D CR7 Football Targeting to achieve the desired customer satisfaction level, we manufacture an extensive array of PVC FOOTBALL SIZE that is manufactured from premium grade of rubbers.'),
(61, 'Adidas Finale CDF Cap Football - Size: 5??', 'football', 'footballs', 630, 995, 'products/football/footballs/2.jpeg', 'Rack up assists with this football that pays tribute to the UEFA Champions League. Machine stitching makes for reliable touch and rugged durability.?'),
(62, 'Adidas retail brazuca Football - Size: 5', 'football', 'footballs', 1000, 1200, 'products/football/footballs/3.jpeg', 'Football, Outer Material: PVC, Weight: 400 g'),
(63, 'Nivia Storm Revolution Football - Size: 5??', 'football', 'footballs', 1300, 1799, 'products/football/footballs/4.jpeg', 'Rubberized Molded, All Ground, All Weather, Training Ball'),
(64, 'Vector X Gripflex Goalkeeping Gloves?', 'football', 'gloves', 250, 450, 'products/football/gloves/1.jpeg', 'For Beginners Fabric Palm With Embossed Latex Side Openig Wrist'),
(65, 'Nivia Super Grip Goalkeeping Gloves (S)', 'football', 'gloves', 650, 788, 'products/football/gloves/2.jpeg', 'The color and design of this product may vary from what is shown in the image, as the product is sourced in mixed batches'),
(66, 'Adidas C.P GLOVE LINER Inner Gloves', 'football', 'gloves', 450, 800, 'products/football/gloves/3.jpeg', 'Left and Right Gloves, For Men, Boys'),
(67, 'Nivia Ditmar Spider Goalkeeping Gloves', 'football', 'gloves', 330, 550, 'products/football/gloves/4.jpeg', 'Nivia Goalkeeper Gloves is recommended for goalies to enhance their grip on the ball.The all weather goalkeeper gloves have an ergonomic design and give extreme comfort and performance.'),
(68, 'Retail World Mancestor City Combo Football Kit', 'football', 'kits', 1750, 2199, 'products/football/kits/1.jpeg', 'Football Size-5, Air Pump, Gym Sipper, Pair of Wrist Band, Pair of Soccer Socks, Pair of Wrist Band'),
(69, 'Retail World Strike Ordem Orange/White Football Combo Football Kit', 'football', 'kits', 1499, 2055, 'products/football/kits/2.jpeg', 'Nike (Replica) Ordem Orange/White Football (Size-5), Pair of Soccer Socks, Pair of Black Wrist Support, Black Head Band, Multicolour Air Pump, Gym Sipper, Pair of Shin Guard, Gym Bag'),
(70, 'Retail World Brazuca Rio Football (Size-5) with Gym Duffle Bag Football Kit', 'football', 'kits', 1000, 1699, 'products/football/kits/3.jpeg', 'Brazuca Rio Adidas Replica Football (Size-5), Duffle Gym Bag'),
(71, 'Gupta All Double Practice Football Net??(Yellow)', 'football', 'nets', 1999, 2500, 'products/football/nets/1.jpeg', 'Football Goal Post Net, Nylon Material'),
(72, 'NETCO NetFoot Football Net??(Black)', 'football', 'nets', 2000, 2999, 'products/football/nets/2.jpeg', 'Football Goal Post Net, Nylon Material'),
(73, 'Kay Kay Nets FB-107 Football Net??(Black)', 'football', 'nets', 1599, 2150, 'products/football/nets/3.jpeg', 'Football Goal Post Net, Nylon Material'),
(74, ' Nivia Speedy Shin Guard  (LARGE, Yellow)', 'football', 'outfits', 330, 650, 'products/football/outfits/1.jpeg', 'This Shin Guard is designed with a flexible shell that gives you complete protection and a contoured fit. Along with safeguarding your shins, this Nivia Speedy Shin Guard also protects your ankles from injuries'),
(75, 'Vector X Kobra Indoor Football Shoes', 'football', 'outfits', 1999, 3000, 'products/football/outfits/2.jpeg', 'Vector X is one of the established sports brands who provide stylish and innovative sports gear to most of the aspiring sport players as well as others.'),
(76, 'Marex Men\'s Knee Length Socks', 'football', 'outfits', 200, 250, 'products/football/outfits/3.jpeg', 'Nylon Fabric, knee length socks'),
(77, 'Navex football socks chelsea Football?', 'football', 'outfits', 300, 399, 'products/football/outfits/4.jpeg', 'This Product will consist of a pair of multicolor color Socks ,Very good Fabric Quality Made of Nylon, Dry Fit, Made in India.'),
(78, 'Marex Embroidered Men & Women Purple Sports Shorts', 'football', 'outfits', 474, 600, 'products/football/outfits/5.jpeg', 'Sports short, fabric material.'),
(79, 'Adidas Ghost Lesto Shin Guard', 'football', 'outfits', 550, 899, 'products/football/outfits/6.jpeg', 'Perfect for the game of soccer, adidas Ghost Lesto unisex Shin Guard. Crafted with Flexible Light Shield which allows no performance interference through lightweight shield with ideal fit to the leg'),
(80, 'Nivia Solid Men Round Neck Yellow T-Shirt', 'football', 'outfits', 699, 850, 'products/football/outfits/7.jpeg', 'Micro Polyester with Fall safe Paddings. Superior Color Fastness'),
(81, 'Marex Printed Men\'s Round Neck Green T-Shirt', 'football', 'outfits', 900, 1100, 'products/football/outfits/8.jpeg', 'Regular Fit Round Neck T-shirt'),
(82, 'Navex Football Jersey Liverpool', 'football', 'outfits', 499, 650, 'products/football/outfits/9.jpeg', '*Short SLEEVE * Material : 100 % Polyester * Machine Wash Warm * FABRIC : SUPER POLYESTER?'),
(83, 'Nivia Dagger Football Shoes', 'football', 'outfits', 2500, 3999, 'products/football/outfits/10.jpeg', 'The NIVIA DAGGER football stud is the unique and one of its own kind. The NIVIA DAGGER football stud is manufactured by special technique, THE DIRECT INJECTION MOLDING TECHNOLOGY which provide superior grip and underfoot grip.?'),
(84, 'Marex Printed Men\'s & Women\'s Blue Sports Shorts', 'football', 'outfits', 500, 650, 'products/football/outfits/11.jpeg', 'Sports short, fabric material.'),
(85, 'Vector X Fusion White Red Football Shoes??(White, Red)', 'football', 'outfits', 1099, 1500, 'products/football/outfits/12.jpeg', 'Vector X is one of the established sports brands who provide stylish and innovative sports gear to most of the aspiring sport players as well as others.?'),
(86, 'Parbat Field Pack 4 Hockey Ball - Size: 5??(Pack of 4, White)', 'hockey', 'balls', 399, 450, 'products/hockey/balls/1.jpeg', 'Match Hockey Ball has a PVC construction with a dimpled finish to the outer for water dispersion, perfect for all weathers.PVC construction.Dimpled design.Hollow centre.Pack of 4 Pc Hockey ball'),
(87, 'Mayor Drag Hockey Ball - Size: 5??(Pack of 6, Multicolor)', 'hockey', 'balls', 600, 840, 'products/hockey/balls/2.jpeg', 'Mayor Hockey Balls are being used by International clubs and academies all over India and are also used by the Junior national teams for their training.'),
(88, 'Sun Fly GBVCTR Hockey Ball - Size: Standard??(Pack of 1, White)', 'hockey', 'balls', 699, 799, 'products/hockey/balls/3.jpeg', 'This Ball Is made for hockey, Rough and tough material made it much durable ,its water resistant, this ball is dimples on it.'),
(89, 'SNS ULTRA LITE Hockey Glove Hockey Gloves (S, Black, Green)', 'hockey', 'gloves', 699, 950, 'products/hockey/gloves/1.jpeg', 'Open palm for maximum stick feel. Towel wrist band. Sold as a single unit (LEFT HAND ONLY), not a pair. Free bag included.'),
(90, 'SNS PROTECT Hockey Gloves (S, Black, Orange)', 'hockey', 'gloves', 1000, 1275, 'products/hockey/gloves/2.jpeg', 'Cut-finger style. Lycra finish. EVA poly-flex sheet for premium protection. Strong pittard style calf-leather palm. Towel wrist band. Comes in a bag.'),
(91, 'Adidas GLOVE LINER 15 Inner Gloves', 'hockey', 'gloves', 950, 1100, 'products/hockey/gloves/3.jpeg', ' A pair of hockey gloves, cotton material based.'),
(92, 'Slazenger V-200 Shin Guard', 'hockey', 'guards', 599, 699, 'products/hockey/guards/1.jpeg', ' Shin guard, L-Size'),
(93, 'Adidas Ghost Lesto Shin Guard', 'hockey', 'guards', 350, 450, 'products/hockey/guards/2.jpeg', 'Perfect for the game of soccer, adidas Ghost Lesto unisex Shin Guard. Crafted with Flexible Light Shield which allows no performance interference through lightweight shield with ideal fit to the leg'),
(94, 'SG PVC Shin Guard', 'hockey', 'guards', 499, 800, 'products/hockey/guards/3.jpeg', 'The SG Fielding Shin Guard helps you protect your shin every time you get on the field. This guard is flexible and durable and is very easy to wear and remove.?'),
(95, 'Mayor LAZRPRO Hockey Stick - 36 inch', 'hockey', 'sticks', 1000, 1699, 'products/hockey/sticks/1.jpeg', 'Mayor Hockey Sticks have been designed by professional players and are meant for players of all levels. They contain the best international materials and are very modern in design.?'),
(96, 'Mayor MUSTANG Hockey Stick - 36 inch', 'hockey', 'sticks', 1499, 1800, 'products/hockey/sticks/2.jpeg', 'Mayor Hockey Sticks have been designed by professional players and are meant for players of all levels. They contain the best international materials and are very modern in design.'),
(97, 'Mayor NANO CARB 8.0 Hockey Stick - 37.5 inch??', 'hockey', 'sticks', 1750, 2100, 'products/hockey/sticks/3.jpeg', 'Mayor Hockey Sticks have been designed by professional players and are meant for players of all levels. They contain the best international materials and are very modern in design.'),
(98, 'Xushaofa Xushaofa Club Seamless Ping Pong Ball - Size: 4', 'tabletennis', 'balls', 200, 300, 'products/tabletennis/balls/1.jpeg', ' 50-100 gm ping pong ball, water resistant.'),
(99, 'Stiga Cup Ping Pong Ball - Size: 1.6??', 'tabletennis', 'balls', 250, 360, 'products/tabletennis/balls/2.jpeg', 'Certified and approved by the International Tennis Federation for the last several years, the Tretorn Championship Tennis Ball has been the leading ball used in the Davis Cup in India.'),
(100, 'Donic Table Tennis Ball Pack of Six Ping Pong Ball - Size: 40 MM', 'tabletennis', 'balls', 299, 400, 'products/tabletennis/balls/3.jpeg', 'Plastic outer material 3 star rated ball designed for training playing level.'),
(101, 'KK Konex Table Tennis Ping Pong Ball - Size: 4?', 'tabletennis', 'balls', 210, 400, 'products/tabletennis/balls/4.jpeg', 'Good for practice and junior/senior playing purpose. low in price.'),
(102, 'Stag Hobby Play Set Table Tennis Kit', 'tabletennis', 'kitsandtables', 875, 1099, 'products/tabletennis/kitsandtables/1.jpeg', 'The table tennis bat is best suited for players looking to leave their mark,and play the game displaying good skill and practice.The bat makes use of less vibration and offers a grip that is firm.'),
(103, 'Stag 1 Star Play Set 2 Bats Table Tennis Kit', 'tabletennis', 'kitsandtables', 450, 680, 'products/tabletennis/kitsandtables/2.jpeg', 'Constructed exceptionally by using premium quality materials,this table tennis racquet made from plywood blade offers increased durability and allows you to make powerful smashes.'),
(104, 'Stag Club TT Table tennis table Table?', 'tabletennis', 'kitsandtables', 10000, 12500, 'products/tabletennis/kitsandtables/3.jpeg', 'THICKNESS OF TOP: 19MM FRAME SIZE: 25 X 38 MM WHEEL SIZE: 75MM NUMBER OF WHEELS: 2 WITH LOCK 6 WITHOUT LOCK PAINT: POLYURETHANE ANTI GLARE SIZE: 2740X1525X760 MM'),
(105, 'Stag ELITE TT Table Tennis table Table', 'tabletennis', 'kitsandtables', 13850, 15999, 'products/tabletennis/kitsandtables/4.jpeg', 'THICKNESS OF TOP: 16MM FRAME SIZE: 17X23 WHEEL SIZE: 75MM NUMBER OF WHEELS: 2 WITH LOCK 6 WITHOUT LOCK PAINT: POLYURETHANE ANTI GLARE SIZE: 2740X1525X760MM?'),
(106, 'Strauss Starter Table Tennis Kit', 'tabletennis', 'kitsandtables', 599, 899, 'products/tabletennis/kitsandtables/5.jpeg', 'The perfect table tennis racquet for both junior and senior level players, it offers a speed of 55 and a control of 70, which allows you to make the most out of whatever style of play you use.?'),
(107, 'Cima Innovative Retractable Table Tennis Net?', 'tabletennis', 'netsandtapes', 1000, 1299, 'products/tabletennis/netsandtapes/1.jpeg', 'This is a hi-quality retractable table-tennis net with push clamps. It is easy to use, carry?'),
(108, 'Artengo by Decathlon Rollnet Table Tennis Net', 'tabletennis', 'netsandtapes', 1200, 1599, 'products/tabletennis/netsandtapes/2.jpeg', 'Flexible, Easy to Carry, Easy Pitching'),
(109, 'NETCO Tabletennis Table Tennis Net', 'tabletennis', 'netsandtapes', 859, 1099, 'products/tabletennis/netsandtapes/3.jpeg', 'Impex Perfection is one of the established sport firms known worldwide for their superior quality Net and accessories.?'),
(110, 'Tibhar EVOLUTION Handlebar Tape?', 'tabletennis', 'netsandtapes', 430, 689, 'products/tabletennis/netsandtapes/4.jpeg', ' Handle bar tape.'),
(111, 'SG fiberglass Protection Tape??', 'tabletennis', 'netsandtapes', 199, 250, 'products/tabletennis/netsandtapes/5.jpeg', 'This fiber glass tape roll is of extra ordinary quality , made up of thick fiber glass will give extra protection to your costly bats , protects it from damages of edges, this tape roll can be used for at least 15 bats in full edges of blade'),
(112, ' GM Glass Fibre Protection Tape  ', 'tabletennis', 'netsandtapes', 399, 543, 'products/tabletennis/netsandtapes/6.jpeg', ' Comes in a 10 m roll. Thickness: 25 mm. Suitable for minor bat repairs. Box Contents: 1 Bat Tape'),
(113, 'Stag 4 Star Table Tennis Racquet??', 'tabletennis', 'racquets', 200, 2099, 'products/tabletennis/racquets/1.jpeg', 'Offering high durability, the racquet ensures that rough usage will not cause any wear and tear.'),
(114, 'Stag Power Drive Table Tennis Racquet with Case', 'tabletennis', 'racquets', 1950, 2200, 'products/tabletennis/racquets/2.jpeg', 'Stag Power Drive TT Bat (ITTF Approved) is a perfect weapon for table-tennis professionals for enjoying a high-speed game.'),
(115, 'Stag International Table Tennis Racquet', 'tabletennis', 'racquets', 1500, 1999, 'products/tabletennis/racquets/3.jpeg', 'For unparalleled control and enhanced spin get the Stag International Table Tennis Racquet.'),
(116, 'GKI Offensive XX New Computerised Printed Cover?', 'tabletennis', 'racquets', 2159, 3099, 'products/tabletennis/racquets/4.jpeg', 'Fast Table Tennis Bats which are manufactured to bring perfection for all offensive and aggressive all round table tennis players'),
(117, 'Xushaofa Premium Seamless 40+?Tennis Ball - Size: 4 ', 'tennis', 'balls', 200, 300, 'products/tennis/balls/1.jpeg', 'The exclusive technology creates balls as a single unit, not by fusing parts together under old methods. By getting rid of seams, we also got rid of unevenness in shape, weight and thickness'),
(118, 'Wilson Australian Open Tennis Ball - Size: 6.7?', 'tennis', 'balls', 299, 350, 'products/tennis/balls/2.jpeg', 'Tennis is played with an immense amount of stamina and zeal; it must be backed with superior quality equipment in order to do justice to your effort and hard work.'),
(119, 'Wilson Championship Extra Duty Tennis Ball - Size: 6.7', 'tennis', 'balls', 450, 650, 'products/tennis/balls/3.jpeg', 'The Wilson Championship Extra Duty Tennis Ball is made for all surface play which makes it easy for you to practise and play even when you switch courts.'),
(120, 'Wilson US Open TB Tennis Ball - Size: 6.7', 'tennis', 'balls', 399, 499, 'products/tennis/balls/4.jpeg', 'Tennis is played with an immense amount of stamina and zeal; it must be backed with superior quality equipment in order to do justice to your effort and hard work.?'),
(121, 'Head XTREMESOFT Super Tacky Grip', 'tennis', 'grips', 350, 500, 'products/tennis/grips/1.jpeg', '  Type: Overgrip, Material: Elastomer'),
(122, 'Gosen Gosen OG106 Smooth Tacky Grip??', 'tennis', 'grips', 700, 895, 'products/tennis/grips/2.jpeg', ' Type: Overgrip, Material: Plastic.'),
(123, 'Polyfibre Omni Set Of 6 Smooth Tacky Grip', 'tennis', 'grips', 250, 380, 'products/tennis/grips/3.jpeg', 'This non-slip overgrip offers a soft feeling and outstanding absorption of sweat. It ensures a firm grip on the handle preventing unintentional twisting of the racquet in the hand.'),
(124, 'ILARTE 4 side Tatron Tape Tennis Net?', 'tennis', 'kitsandnets', 2399, 3000, 'products/tennis/kitsandnets/1.jpeg', 'Made Up with Good Quality Material Ideal For Unisex Highly Durable.this tennis net is high quality training and competition net.it is four side tatron tape , machine knitted high quality tennis net.'),
(125, 'Raisco Nets Maker Tennis Net 713 Tennis Net?', 'tennis', 'kitsandnets', 1599, 1999, 'products/tennis/kitsandnets/2.jpeg', ' Tennis Court Net, Plastic Material, W x H x D: 1 x 1 x 13'),
(126, 'Dunlop Venom Pro G2 Strung?', 'tennis', 'kitsandnets', 2999, 3500, 'products/tennis/kitsandnets/3.jpeg', 'Tough and highly durable, this racquet is easy to maneuver and can handle rough, regular use.'),
(127, 'Head Tennis Racquet Protective Protection Tape??', 'tennis', 'kitsandnets', 1235, 1575, 'products/tennis/kitsandnets/4.jpeg', 'The PROTECTION TAPE is one way to ensure that the racquet\'s head stays safe and lasts longer. The 100% polyurethane adhesive tape is available in black or white.'),
(128, 'Cosco-23 Tennis Racquet?', 'tennis', 'kitsandnets', 2075, 2560, 'products/tennis/kitsandnets/5.jpeg', 'Cosco has perfectly made this 23 Tennis Racquet using premium quality materials to impress all players.'),
(129, 'Gupta Nets Tourny Tennis Net?', 'tennis', 'kitsandnets', 2100, 2599, 'products/tennis/kitsandnets/6.jpeg', 'Tennis Practice Net, Nylon Material, W x H x D: 42 x 504 x 1 inch'),
(130, 'Wilson Roger Federer 21 3 1/2 inch Strung?', 'tennis', 'racquets', 3019, 3590, 'products/tennis/racquets/1.jpeg', 'The racket is lightweight, providing great control and has a similar design to the racket used by Roger Federer.?'),
(131, 'Yonex T RQTS V CORE JR 21 G0-4 Strung?', 'tennis', 'racquets', 5244, 5999, 'products/tennis/racquets/2.jpeg', ' Half cover, Strung, grip size G0-4'),
(132, 'Yonex VCORE Tour F 97 L3 (4 3/8) Unstrung?', 'tennis', 'racquets', 4000, 4575, 'products/tennis/racquets/3.jpeg', ' Half cover, Strung, grip size G0-4'),
(133, 'Yonex T RQTS Ezone 01 G3 -43/8 Strung', 'tennis', 'racquets', 2136, 2589, 'products/tennis/racquets/4.jpeg', ' Half cover, Strung, grip size G0-4, Weight- 285 g'),
(134, ' Generic 4 Pack Inflating Needles', 'volleyball', 'inflatingpins', 200, 300, 'products/volleyball/inflatingpins/1.jpeg', 'It is made of stainless steel. This is a standard sized needle.'),
(135, 'Generic Inflating Needle', 'volleyball', 'inflatingpins', 150, 300, 'products/volleyball/inflatingpins/2.jpeg', '?This is a brand new and high quality ball pump needle that is used to inflate soccers, basketballs, volleyballs, footballs and so on'),
(136, 'YALLN 5 Pack Inflating Needles', 'volleyball', 'inflatingpins', 399, 1124, 'products/volleyball/inflatingpins/3.jpeg', 'These needles are universal fit. They will work for any type of ball including basketballs, footballs, soccer balls, volleyballs and more.'),
(137, 'Raisco Practice Volleyball Net', 'volleyball', 'nets', 620, 850, 'products/volleyball/nets/1.jpeg', 'Four Side Plastic Tape With Rope all Material 1st quality of Plastic looking beautiful Net'),
(138, 'Raisco Desert Volleyball Net?', 'volleyball', 'nets', 599, 850, 'products/volleyball/nets/2.jpeg', 'RAISCO NETS MAKER is reckoning as one of the most leading Manufacturer and Supplier of vast range of Sporting Goods and Accessories.?'),
(139, 'MDN MOSCO Volleyball Net', 'volleyball', 'nets', 400, 650, 'products/volleyball/nets/3.jpeg', ' Volleyball Practice Net, Nylon Material.'),
(140, 'Gupta Nets Classic Volleyball Net', 'volleyball', 'nets', 450, 599, 'products/volleyball/nets/4.jpeg', '  Volleyball Practice Net, Nylon Material, W x H x D: 1 x 10 x 0.0'),
(141, 'Nivia PU (32 P) VB-476 Volleyball - Size: 4', 'volleyball', 'volleyballs', 699, 899, 'products/volleyball/volleyballs/1.jpeg', ' Volleyball , water resistant, weight-280g'),
(142, 'Cosco STC Star Volleyball Volleyball - Size: 5', 'volleyball', 'volleyballs', 750, 1000, 'products/volleyball/volleyballs/2.jpeg', 'This volleyball is perfectly designed to offer better grip and bounce. The panels are exceptionally hand-stitched to offer better durability and sustainability for extensive play.'),
(143, 'Slazenger V-500 Icon Volleyball - Size: 4?', 'volleyball', 'volleyballs', 899, 1200, 'products/volleyball/volleyballs/3.jpeg', 'The outer material of the volleyball is made from polyurethane to give it a soft feel and high durability.'),
(144, 'Nivia Craters Volleyball - Size: 4', 'volleyball', 'volleyballs', 1199, 1599, 'products/volleyball/volleyballs/4.jpeg', 'It is made up of moulded rubber with good bounce and durability.Reliable performance easy to use, store and carry built for maximum output'),
(145, 'Mayor Sunset Volleyball - Size: 4', 'volleyball', 'volleyballs', 600, 850, 'products/volleyball/volleyballs/5.jpeg', 'The outer material of the volleyball is made from polyurethane to give it a soft feel and high durability.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `fname`, `lname`, `email`, `uname`, `pwd`, `mobile`) VALUES
(1, 'Sanjeev', 'Sharma', 'sanjeevsharma88@yahoo.com', 'sanjeev', '$2y$10$fJJkE0B.R8UEqkrCfIj.TeihCpw6Sni5AI5a9SxVmaO0mxzVAyvYC', NULL),
(2, 'sandeep', 'SHARMA', 'SANDEEPZCREATION@GMAIL.COM', 'SANDEEP', '$2y$10$JLsVB0HwsJtxtdxFtWUijuROKZq8D4iLbgUSlVtGALKGG698BxloC', NULL),
(4, 'kaushal', 'sheth', 'kau@gmail.com', 'kaushal', '$2y$10$y3cz3MQ43yKpSfFxPeF63u1sEyRLnXD2.14sQMB7gl1aH8/F7FyKe', NULL),
(5, 'sameer', 'yadav', 'sameeryadav2421@gmail.com', 'sameer', '$2y$10$ZutQ/0RDFcSyO4JwKhuenerZQE2jUjVRPQ6aB9/ea9MDMD3O/G/Ma', NULL),
(6, 'neelam', 'yadav', 'neel@gmail.com', 'neel', '$2y$10$DyzExGeM9kM3WDXVtVPCWOPZGWZZq3B64n08ijS/2qqvZtga6I.IS', NULL),
(7, 'Jay', 'Yadav', 'jay@gmail.com', 'jay123', '$2y$10$svhdjCF7ifLXnJRXr5pM4.LolnDa9MOUUd9PRhS6zNHVqkcD10Vz.', NULL),
(8, 'subhash', 'yadav', 'subhashyadav@gmail.com', 'subhash', '$2y$10$TrL6MBUcILul8yaf62Bkme2Fadu5H3MpqzhlU.rtqpVgzsveXAruC', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ordermain`
--
ALTER TABLE `ordermain`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ordermain`
--
ALTER TABLE `ordermain`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
