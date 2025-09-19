-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 05:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewelleryshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `jewellery_shop_admin_registrations`
--

CREATE TABLE `jewellery_shop_admin_registrations` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jewellery_shop_admin_registrations`
--

INSERT INTO `jewellery_shop_admin_registrations` (`admin_id`, `admin_username`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'ad@cake.com', '987654');

-- --------------------------------------------------------

--
-- Table structure for table `jewellery_shop_category`
--

CREATE TABLE `jewellery_shop_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jewellery_shop_category`
--

INSERT INTO `jewellery_shop_category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Pendants', '241125012931.jpeg'),
(2, 'Earrings', '241125012904.jpeg'),
(3, 'Rings', '241125012953.jpeg'),
(4, 'Bracelets', '241125013008.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `jewellery_shop_orders`
--

CREATE TABLE `jewellery_shop_orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jewellery_shop_orders_detail`
--

CREATE TABLE `jewellery_shop_orders_detail` (
  `orders_detail_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jewellery_shop_product`
--

CREATE TABLE `jewellery_shop_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(300) NOT NULL,
  `product_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jewellery_shop_product`
--

INSERT INTO `jewellery_shop_product` (`product_id`, `product_name`, `product_category`, `product_price`, `product_description`, `product_image`) VALUES
(1, 'Wreath Pendant', 1, '1799', 'Circle up your beautiful journey of life with ups and downs with this wreath', '2411250453430.jpg, 2411250453431.jpg, 2411250453432.jpg'),
(11, 'Rani Ebony Pendant', 1, '3099', 'These stunning pieces of fine jewellery are a perfect addition to any sophisticated outfit.', '2411260525140.jpg, 2411260525141.jpg, 2411260525142.jpg'),
(12, 'Mystique Romance ', 1, '1799', 'The Rose Gold Mystique Romance Pendant is inspired by the settling of a mysterious charm of romance - bewitching but making its vibe settle in and presence felt.', '2411260526470.jpg, 2411260526471.jpg, 2411260526472.jpg'),
(13, 'Drizzle Drop', 1, '2099', 'This rose gold set features a pendant with a linked chain and earrings, each adorned with a central zircon surrounded by smaller ones.', '2411260528400.jpg, 2411260528401.jpg, 2411260528402.jpg'),
(14, 'WaveringWings Butterfly', 1, '2899', 'Rose Gold Wavering Wings Butterfly Necklace is inspired by a good change and growth that makes you grow into a beautiful person.', '2411260531120.jpg, 2411260531121.jpg, 2411260531122.jpg'),
(15, 'Ganesha Diamond', 1, '1099', 'On wearing this classic Ganesha pendant around your neck,you will always feel blessed by His divine presence', '2411260536420.jpg, 2411260536421.jpg, 2411260536422.jpg'),
(16, 'Pearl Heart', 1, '2399', 'This Rose Gold Pearl Heart Pendant is handcrafted with love,just for you!The attention to detail in this pendant is simply astounding.', '2411260539440.jpg, 2411260539441.jpg, 2411260539442.jpg'),
(17, 'Persistent Trillium Lariar', 1, '3699', 'This Rose Gold pendant has been delicately designed to sit seamlessly on the neckline and assure a touch of class to any ensemble', '2411260542160.jpg, 2411260542161.jpg, 2411260542162.jpg'),
(18, 'Golden Zicron ', 1, '1899', 'Golden Zircon Pendant holds a special place in my heart and mind. Simple, and stunning!', '2411270438320.jpg, 2411270438321.jpg, 2411270438322.jpg'),
(19, 'Golden Ganpati ', 1, '2699', 'The Golden Ganpati Pendant is inspired by our faith in happy moments of life.', '2411270439480.jpg, 2411270439481.jpg'),
(20, 'Flutter with JoyButterfly', 1, '2499', 'The Golden Flutter With Joy Necklace is inspired by beautiful butterflies flying around flowers with wild abandon.', '2411270441090.jpg, 2411270441091.jpg, 2411270441092.jpg'),
(21, 'Stare of EvilEye', 1, '1999', 'We never know what evil might befall us. It’s only practical to be careful and carry as much luck as possible. This Golden Stare Of Evil Eye Necklace is that luck.', '2411270442240.jpg, 2411270442241.jpg, 2411270442242.jpg'),
(22, 'Royal Blue', 1, '3199', 'The Golden Royal Blue Pendant with Link Chain is inspired by the mosaic art that we can see in the magnificent Taj Mahal.', '2411270447350.jpg, 2411270447351.jpg, 2411270447352.jpg'),
(23, 'Stunning Lariat', 1, '2699', 'This golden necklace showcases a stylish Y-shaped chain with a square motif, featuring a vibrant green-coloured stone and a sparkling zircon delicately dangling below.', '2411270448520.jpg, 2411270448521.jpg, 2411270448522.jpg'),
(24, 'Shimmer Bloom', 1, '1799', 'When in doubt, nature never lets you down. Inspired by the most inspirational one is this Golden Shimmer Bloom Necklace.\r\n\r\n', '2411270453050.jpg, 2411270453051.jpg, 2411270453052.jpg'),
(25, 'Deer Heart', 1, '2099', 'The Golden Deer Heart Set is inspired by the innocent heart of a deer.This golden deer necklace is shaped like a deer with zircons.', '2411270454170.jpg, 2411270454171.jpg, 2411270454172.jpg'),
(26, 'Silver Snowflake', 1, '2099', 'This pendant is for the fans of Frozen and for those who love the ephemeral nature of snowflake. Let it snow!', '2411270501450.jpg, 2411270501451.jpg, 2411270501452.jpg'),
(27, 'Silver Loop Pearl', 1, '1999', 'The Silver Loop Pearl Pendant is inspired by the loop of life. We need to break the loop and do our own thing in life.', '2411270502550.jpg, 2411270502551.jpg, 2411270502552.jpg'),
(28, 'Silver Remarkable', 1, '3099', 'This silver pendant with a link chain features an oval shape, with one half studded with green-coloured stones and the other half adorned with zircons.', '2411270504010.jpg, 2411270504011.jpg, 2411270504012.jpg'),
(29, 'Silver Royal Blue', 1, '1899', 'Play out your style in this striking blue pendant. It will always be a perfect bright spot on any day.', '2411270508470.jpg, 2411270508471.jpg, 2411270508472.jpg'),
(30, 'Shiva Pendant', 1, '1899', 'This Shiva pendant is a symbol of ethereal essence and an outstanding glow.The Shiva pendant endorses your personality and divine aura with a smidgen of sparkle and auspiciousness.', '2411270515580.jpg, 2411270515581.jpg, 2411270515582.jpg'),
(31, 'Floral Pearl', 1, '2499', 'The Silver Floral Pearl Ring is inspired by the grace of a field that is filled with flowers.The silver pendant has a five petal floral structure with a pearl at the center.', '2411270517250.jpg, 2411270517251.jpg, 2411270517252.jpg'),
(32, 'Drip of Delight', 1, '1899', 'This necklace is your go-to for days when you need a sassy touch but are unsure about which jewellery to wear.', '2411270518190.jpg, 2411270518191.jpg, 2411270518192.jpg'),
(33, 'Silver Sun Flares', 1, '2499', 'A great style gives way for confidence to shine. This pendant will be your preferred choice for those days when you feel like dressing bold.', '2411270520310.jpg, 2411270520311.jpg, 2411270520312.jpg'),
(34, 'Drop Wreath Studs', 2, '1799', 'These rose gold earrings feature a wreath design sporting zircons in different floral and leaf arrangements with a rosebud motif nestling a coloured stone.\r\nEarring Size: Height - 1.27 cm, Width - 1.3 cm', '2411270534550.jpg, 2411270534551.jpg, 2411270534552.jpg'),
(35, 'Infinite Loop', 2, '1399', 'The rose gold earrings have a circular design with a helix shape along the circumference. \r\n925 Silver with Rose Gold Plating.\r\nDimensions: 1.3 cm x 0.3 cm', '2411270535560.jpg, 2411270535561.jpg, 2411270535562.jpg'),
(36, 'Connected for Life', 2, '1299', 'The Rose gold earrings have a circle motif studded with zircons.\r\n925 Silver with Rose Gold Plating.\r\nEarring Size: Height - 1.1 cm, Width -1.1 cm', '2411270536560.jpg, 2411270536561.jpg, 2411270536562.jpg'),
(37, 'Elegant Pear Drop', 2, '1799', 'The rose gold earrings have a pear-shaped structure studded with zircons and a big pear-shaped zircon placed inside.\r\n925 Silver with Rose Gold plating.\r\nDimensions: 1.37 cm x 0.82 cm', '2411270537560.jpg, 2411270537561.jpg, 2411270537562.jpg'),
(38, 'Elliptic Stud', 2, '1499', 'The rose gold earrings have three oval motifs joined together with oval zicron in between.\r\n925 Silver with Rose Gold plating.\r\nDimension:0.9 cm x 0.7 cm', '2411270543140.jpg, 2411270543141.jpg, 2411270543142.jpg'),
(39, 'Charm Hoop', 2, '3099', 'The rose gold plated classic hoops are embellished with zircon charms.Dimensions - 25mm X 19mm', '2411270544280.jpg, 2411270544281.jpg, 2411270544282.jpg'),
(40, 'Three Leaf Clover ', 2, '1699', 'These rose gold earrings have a three-clover leaf design with each leaf nestling a zircon.\r\n925 Silver with Rose Gold Plating.\r\nEarring Size: Height - 1.8 cm, Width - 1.1 cm', '2411270546190.jpg, 2411270546191.jpg, 2411270546192.jpg'),
(41, 'Dazzling Drop', 2, '2399', 'These rose gold earrings feature a drop motif studded with zircons.925 Silver with Rose Gold Plating.Earring Size:Height - 1.4 cm,Width - 1.1 cm', '2411270548420.jpg, 2411270548421.jpg, 2411270548422.jpg'),
(42, 'Golden Florally', 2, '1099', 'These golden earrings have a plumeria flower design with zircons studded in the centre.\r\n925 Silver with Gold Plating.\r\nSize: Height - 0.65 cm, Width - 0.65 cm', '2411290141420.jpg, 2411290141421.jpg, 2411290141422.jpg'),
(43, 'Golden Trifecta', 2, '1299', 'These golden earrings have a triple loop design set with zircons.\r\n925 Silver with Gold Plating.\r\nEarring Size: Height - 1 cm, Width -1.1 cm', '2411290143210.jpg, 2411290143211.jpg, 2411290143212.jpg'),
(44, 'Golden Moon-Star', 2, '1799', 'The earrings have a golden zircon studded moon with a golden star hanging down.\r\n925 Silver with Gold Plating.\r\nAAA+ Quality Zircons.\r\nDimensions: 16 mm x 7 mm ', '2411290144330.jpg, 2411290144331.jpg, 2411290144332.jpg'),
(45, 'Pearl Drop Hoop', 2, '1899', 'The Gold Plated Pearl Drop Hoops are handcrafted with love.\r\nThe pearl dangles on golden hoops and make it a perfect option to go for.5mm Freshwater Pearl', '2411290146140.jpg, 2411290146141.jpg, 2411290146142.jpg'),
(46, 'Pink Floral Damsel ', 2, '1799', 'The Golden Pink Floral Damsel Earrings have an ethereal design with baby pink coloured stones and a swirling silhouette on top studded with zircons as seen on the earrings.\r\nDimensions: 16 mm x 10 mm ', '2411290154000.jpg, 2411290154001.jpg, 2411290154002.jpg'),
(47, 'Golden Glittering', 2, '2099', 'These golden earrings feature a two-skewed layer design encircling a single-stone zircon. The inner layer is further studded with zircons, and the outer layer is plain golden.\r\n925 Silver with Gold Plating.\r\nSize: Height - 1.4 cm, Width - 1.2 cm', '2411290155140.jpg, 2411290155141.jpg, 2411290155142.jpg'),
(48, ' Celestial Whirl', 2, '1599', 'These earrings feature a whimsical spiral design with zircons set in it.\r\n925 Silver with Gold Plating.\r\nSize: Height - 1.9 cm, Width - 0.66 cm', '2411290156200.jpg, 2411290156201.jpg, 2411290156202.jpg'),
(49, 'Golden Mini Floral ', 2, '0899', 'These golden earrings feature a floral motif with a circular zircon set at the centre.\r\n925 Silver with Gold Plating.\r\nSize: Height - 0.5 cm, Width - 0.5 cm', '2411290157270.jpg, 2411290157271.jpg, 2411290157272.jpg'),
(50, 'Silver Floral Twist', 2, '1099', 'These silver earrings have a flower motif with a twist design dangling below.\r\n\r\n925 Silver. \r\nPerfect for sensitive skin.\r\nSize: Height - 2.1 cm, Width - 0.8 cm', '2411290211250.jpg, 2411290211251.jpg, 2411290211252.jpg'),
(51, 'Silver Butterfly Studs', 2, '1099', 'These silver earrings have a motif of a butterfly in side view adorned with zircons.\r\n\r\n925 Silver. \r\nPerfect for sensitive skin.\r\nEarring Size: Height - 1.2 cm, Width - 0.8 cm', '2411290212410.jpg, 2411290212411.jpg, 2411290212412.jpg'),
(52, 'Silver Quadrangle', 2, '1099', 'These silver earrings boast a dual square design, with one square featuring a zircon.\r\n925 Silver. \r\nPerfect for sensitive skin.\r\nEarring Size: Height - 1.1 cm, Width - 0.7 cm', '2411290213390.jpg, 2411290213391.jpg, 2411290213392.jpg'),
(53, 'Silver Petals Earring', 2, '1199', 'These silver hoop earrings feature a four-petal clover leaf design with detailing, dangling from it.\r\n\r\n925 Silver. \r\nPerfect for sensitive skin.\r\nEarring Size: Height - 2.3 cm, Width - 1.2 cm', '2411290214390.jpg, 2411290214391.jpg, 2411290214392.jpg'),
(54, 'Silver Perfect', 2, '1599', 'These silver earrings feature a heart motif set with pink stone and a hoop studded with zircons attached below it. Celebrate your moments of passion with GIVA’s Red Romance Collection.\r\n925 Silver.\r\nEarring Size: Height - 1.1 cm, Width -0.9 cm', '2411290216060.jpg, 2411290216061.jpg, 2411290216062.jpg'),
(55, 'Silver Classic Flower', 2, '2199', 'The silver earrings have a floral design studded with zircons.\r\n925 Silver.\r\nAdjustable size to ensure no fitting issues.\r\nRhodium finish to prevent tarnish.\r\nDimensions: 1.6 cm x 1.6 cm', '2411290217240.jpg, 2411290217241.jpg, 2411290217242.jpg'),
(56, 'Silver Glistening Stud', 2, '1599', 'These earrings are perfect for every face type. Why would you take them off.\r\nAAA+ Quality Zircon Stones.\r\n925 Sterling Silver. \r\nRhodium e-coat to prevent tarnish. ', '2411290218340.jpg, 2411290218341.jpg, 2411290218342.jpg'),
(57, 'Silver Midnight Blue', 2, '1999', 'The silver earrings have a neat design with the presence of a pristine midnight blue coloured stone in the centre and surrounded by zircons making these earrings a masterpiece.\r\n925 Silver. \r\nEarring Size: Height - 1.9 cm, Width -0.8 cm', '2411290219580.jpg, 2411290219581.jpg, 2411290219582.jpg'),
(58, 'Shimmering Ring', 3, '1899', 'This rose gold ring has a circular zircon in a four-prong setting on a band set with zircons.\r\n925 Silver with Rose Gold Plating.\r\nAdjustable size to ensure no fitting issues.\r\nRing Diameter: 1.66 cm + Adjustable', '2411290230250.jpg, 2411290230251.jpg, 2411290230252.jpg'),
(59, 'Rose Gold Floral Chic', 3, '1699', 'The Rose Gold Floral Glory Ring has a lovely floral design with studded zircons.\r\n925 Sterling Silver with Rose Gold plating.\r\nDiameter: 18mm + top Adjustable \r\nMotif: 12 x 7.5 mm ', '2411290241520.jpg, 2411290241521.jpg, 2411290241522.jpg'),
(60, ' Lucky Loop Ring', 3, '1699', 'This rose gold ring features a cylinder design studded with zircons.\r\n925 Silver with Rose Gold Plating.\r\nAdjustable size to ensure no fitting issues.\r\nRing Diameter: 1.66 cm + Adjustable\r\n', '2411290402430.jpg, 2411290402431.jpg, 2411290402432.jpg'),
(61, ' Zircon Tune of Wave', 3, '1799', 'This Rose Gold Ring comes with tapering wave troughs which nestles triplet zircons.\r\n925 Silver with Rose Gold Plating.\r\nAdjustable size to ensure no fitting issues.\r\nRing Diameter: 1.6 cm + Adjustable', '2411290404050.jpg, 2411290404051.jpg, 2411290404052.jpg'),
(62, ' Heart Melting Chain', 3, '1899', 'High quality Cubic Zircon.\r\nFree size & can be adjusted to all standard finger size.\r\nRing size 5.5-10/ 16mm -19.8mm (adjustable).\r\nSterling silver base with rose gold polish.', '2411290409590.jpg, 2411290409591.jpg, 2411290409592.jpg'),
(63, 'Connected for Life Ring', 3, '1999', 'This rose gold ring features a circular motif set with zircons.\r\n925 Silver with Rose Gold Plating.\r\nAdjustable size to ensure no fitting issues.\r\nRing Diameter: 1.62 cm + Adjustable', '2411290411080.jpg, 2411290411081.jpg, 2411290411082.jpg'),
(64, 'Elegant Leafy Zirconia', 3, '2999', 'This rose gold ring has a leafy design at the centre with zircon studded.\r\n925 Silver with Rose Gold Plating.\r\nRing Diameter: 1.69 cm ', '2411290415090.jpg, 2411290415091.jpg, 2411290415092.jpg'),
(65, 'Embanked Ring', 3, '1599', 'This rose gold ring features a V-shaped projection on the band, with zircons on both rows.\r\n925 Silver with Rose Gold Plating.\r\nDiameter: 1.66 cm \r\nFixed Size.', '2411290417280.jpg, 2411290417281.jpg, 2411290417282.jpg'),
(66, 'Golden Sacra Ring', 3, '1799', 'This golden ring has a zircon prong set in a bypass shank.\r\n925 Silver with Gold Plating.\r\nDiameter: 1.66 cm \r\nFixed Size.', '2411290430320.jpg, 2411290430321.jpg, 2411290430322.jpg'),
(67, 'Golden Eternity Ring', 3, '1199', 'The Golden Eternity Ring is handcrafted with love, just for YOU. The gold plated frame softly curves at the front and the gemstones add to the look.925 Sterling Silver with Gold plating.\r\nDiameter - 16mm + adjustable', '2411290431410.jpg, 2411290431411.jpg, 2411290431412.jpg'),
(68, 'Golden Modest Leader ', 3, '1699', 'This golden ring for men features a wavy design with zircons on the front.\r\n925 Silver with Gold Plated.\r\nRing 1 - Diameter : 1.82 cm .\r\nRing 2 - Diameter : 1.91 cm .\r\nFixed Size.', '2411290446460.jpg, 2411290446461.jpg, 2411290446462.jpg'),
(69, 'Golden Flower Ring', 3, '1799', 'The Gold Plated Flower Girl Ring has a lovely floral design with studded zircons.\r\n925 Sterling Silver with Gold plating. \r\nAdjustable size to ensure no fitting issues.\r\nDiameter: 18mm + top Adjustable.\r\nMotif: 12 x 7.5 mm ', '2411290434550.jpg, 2411290434551.jpg, 2411290434552.jpg'),
(70, 'Precious Moment Ring', 3, '1499', 'This golden ring features triple zircons on the band.\r\n925 Silver with Gold Plating.\r\nDiameter: 1.66 cm.  \r\nFixed Size.', '2411290436130.jpg, 2411290436131.jpg, 2411290436132.jpg'),
(71, 'Golden Infinite Grace ', 3, '2199', 'This golden ring has an infinity motif set with zircons.\r\n\r\n925 Silver with Gold Plating.\r\nDiameter: 1.66 cm. \r\nFixed Size.', '2411290442170.jpg, 2411290442171.jpg, 2411290442172.jpg'),
(72, 'Golden Beautiful Orchid', 3, '1499', 'This golden ring features an orchid motif with a zircon at the centre.\r\n925 Silver with Gold Plating.\r\nDiameter: 1.66 cm. \r\nFixed Size.', '2411290443240.jpg, 2411290443241.jpg, 2411290443242.jpg'),
(73, 'Golden Cubic Beauty', 3, '1499', 'This golden ring features a square motif with a zircon at the centre.\r\n\r\n925 Silver with Gold Plating.\r\nDiameter: 1.66 cm.  \r\nFixed Size.', '2411290444270.jpg, 2411290444271.jpg, 2411290444272.jpg'),
(74, 'Silver Pure Love Ring', 3, '1599', 'This silver ring has a circular motif set with zircons. It nestles a heart-cut zircon at the centre and additional zircons are studded around the band.\r\n925 Silver. \r\nRing Diameter: 1.6 cm ', '2411290457180.jpg, 2411290457181.jpg, 2411290457182.jpg'),
(75, 'Silver Zircon Layered ', 3, '1799', 'This silver ring has a zircon centrepiece nestled in alternating layers adorned with zircons.\r\n925 Silver.\r\nAdjustable size to ensure no fitting issues.\r\nRing Diameter: 1.8 cm + Adjustable', '2411290458460.jpg, 2411290458461.jpg, 2411290458462.jpg'),
(76, 'Silver Gratia Ring', 3, '1099', 'This silver ring features a single-stone zircon at the centre. It also sports a zircon studded band.\r\n925 Silver. \r\nAdjustable size to ensure no fitting issues.\r\nRing Diameter: 1.66 cm + Adjustable', '2411290500360.jpg, 2411290500361.jpg, 2411290500362.jpg'),
(77, 'Silver Soulful Ring', 3, '1199', 'This silver ring has a wrap design with both ends featuring heart-shaped zircons. The band is studded with zircons.\r\n925 Silver.\r\nAdjustable size to ensure no fitting issues.\r\nRing Diameter: 1.62 cm + Adjustable', '2411290501430.jpg, 2411290501431.jpg, 2411290501432.jpg'),
(78, 'Zircon Sparkling Loop ', 3, '1899', 'The design is simple and classy, with a sparkling centrepiece surrounded by a zircon studded band.\r\n925 Sterling Silver.\r\nAdjustable size to ensure no fitting issues.\r\nRing size 5.5 - 10 / 16mm -19.8mm (adjustable)', '2411290507040.jpg, 2411290507041.jpg, 2411290507042.jpg'),
(79, 'Silver Snowfall Ring', 3, '1299', 'The silver ring features a circular zircon in a six-prong setting.\r\n925 Silver. \r\nAdjustable size to ensure no fitting issues.\r\nRing Diameter: 1.62 cm + Adjustable', '2411290508290.jpg, 2411290508291.jpg, 2411290508292.jpg'),
(80, 'Silver Valley Ring', 3, '1399', 'This silver ring features two V-shaped designs overlapped at their vertices, one studded with zircons.\r\n925 Silver.\r\nDiameter: 1.66 cm. \r\nFixed Size.', '2411290509370.jpg, 2411290509371.jpg, 2411290509372.jpg'),
(81, 'Silver Bold Beauty Ring', 3, '1599', 'This silver ring features a unique design with zircon studded in the centre.\r\n925 Silver.\r\nDiameter: 1.62 cm. \r\nFixed Size.', '2411290512100.jpg, 2411290512101.jpg, 2411290512102.jpg'),
(82, 'Shamrock Bracelet', 4, '1199', 'This rose gold bracelet has a beautiful three-lobed clover leaf design which is studded with zircons.\r\n925 Silver with Rose Gold plating.\r\nThe length of the bracelet is 15 cm with a 4 cm adjustable portion.\r\nCharm Dimensions: 0.9 cm x 1.4 cm', '2411290524390.jpg, 2411290524391.jpg, 2411290524392.jpg'),
(83, ' Rose Gold Flower Charm ', 4, '1999', 'This rose gold bracelet has a flower charm in the centre with two circular zircons interspaced on both sides.\r\n925 Silver with Rose Gold Plating.\r\nLength of Chain: 17 cm + 3 cm Adjustable', '2411290525430.jpg, 2411290525431.jpg, 2411290525432.jpg'),
(84, 'Pink Quartz Flower', 4, '1699', 'The pink quartz acts as the tulip bulb and is guaranteed to grab attention.\r\n925 Silver with Rose Gold Plating.\r\nCharm: 0.9 cm x  2.7 cm.\r\nLength of chain: 15.5 cm + 5 cm Adjustable', '2411290527020.jpg, 2411290527021.jpg, 2411290527022.jpg'),
(85, 'Interlocked Bracelet', 4, '2099', 'This rose gold bracelet is interconnected with one another where the alternate element is studded with zircons.\r\n925 Silver with Rose Gold plating.\r\nThe length of the bracelet is 15 cm with a 4 cm adjustable portion.\r\nCharm Dimensions: 0.6 cm x 4.9 cm', '2411290528170.jpg, 2411290528171.jpg, 2411290528172.jpg'),
(86, 'Zircon Marvel Bracelet', 4, '1799', 'The Rose Gold Zircon Marvel Bracelet has a basic design of a gorgeous lineup of zircon-studded charms decking up the entire bracelet strap!\r\nSterling silver with Rose Gold plating.\r\nCharm: 6.5 mm x 8.5 mm; Length: 16 cm + 3.5 cm (Adjustable) ', '2411290529260.jpg, 2411290529261.jpg, 2411290529262.jpg'),
(87, ' Floral Lover Bracelet', 4, '3099', 'The Rose Gold Floral Lover Bracelet has a gorgeous series of floral charms strung together in a bracelet design.\r\n925 Silver with Rose Gold plating.\r\nCharm: 61 mmx x 10 mm.\r\nLength: 17 cm+ 3 cm Adjustable. ', '2411290530570.jpg, 2411290530571.jpg, 2411290530572.jpg'),
(88, 'Layered Love Bracelet', 4, '2699', 'This rose gold bracelet features two layers, one with engraved heart designs and the other with zircon studded heart designs, all equally spaced.\r\n925 Silver with Rose Gold Plating.\r\nLength of chain: 14.5 cm + 4 cm Adjustable', '2411290532030.jpg, 2411290532031.jpg, 2411290532032.jpg'),
(89, 'Bright Heart Bracelet', 4, '2799', 'This bracelet features a dual heart motif set with zircons at the centre, two round motifs, and leaves on either side.\r\n925 Silver With Rose Gold Plating.\r\nMotif Height: 1.13 cm, Width: 7.5 cm.\r\nThe length of the bracelet is 5 cm adjustable portion.', '2411290534380.jpg, 2411290534381.jpg, 2411290534382.jpg'),
(90, 'Golden Black Evil Eye', 4, '2199', 'The Golden Raven Black Evil Eye Bracelet has a classic evil-eye design juxtaposed with a raven black-hued coloured stone in the centre. \r\nSterling silver with Gold plating.\r\nCharm: 21 mm x 9 mm; Length: 16cm+ 3.5cm Adjustable ', '2411290546040.jpg, 2411290546041.jpg, 2411290546042.jpg'),
(91, 'Night Star Bracelet', 4, '2199', 'The Golden Night Star Bracelet is designed to perfection in the festive spirit! A string of stars studded with sparkling zircons!\r\nSterling silver with Gold plating. \r\nCharm: 5.5 mm x 7mm; Length: 16cm+ 3.5 cm Adjustable', '2411290547310.jpg, 2411290547311.jpg, 2411290547312.jpg'),
(92, 'Golden Oval Delight ', 4, '1999', 'This golden chain bracelet has an oval centre studded with zircons, flanked on both ends with circular gold motifs.\r\n925 Silver with Gold Plating.\r\nMotif Height: 2.9 cm, Width: 0.5 cm.\r\nThe length of the bracelet is 6.5 cm with a 1.5 cm adjustable portion.', '2411290549020.jpg, 2411290549021.jpg, 2411290549022.jpg'),
(93, 'Golden Frozen Elsa', 4, '3199', 'The Golden Frozen Elsa Bracelet has a very elegant design, frozen to perfection with alternate zircon embellishments. \r\nSterling silver with Gold plating. \r\nCharm: 88mm x 5.5 mm; Diameter: 45 mm + Adjustable ', '2411290549550.jpg, 2411290549551.jpg, 2411290549552.jpg'),
(94, 'Uff Yeh Noor Bracelet', 4, '3199', 'This golden bracelet has a unique design with bunch of pearls evenly spaced.\r\n925 Silver with Gold Plating.\r\nPerfect for sensitive skin.\r\nLength of chain: 15.5 cm + 4 cm Adjustable', '2411290556260.jpg, 2411290556261.jpg, 2411290556262.jpg'),
(95, 'Classic Bell Mallow', 4, '2899', 'This golden bracelet features a bell mallow motif with coloured stones, along with a bell mallow bud with enamel and zircons.\r\n925 Silver with Gold Plating.\r\nBracelet Diameter: 17 cm + 4 cm Adjustable.\r\nMotif Height: 1.2 cm, Width: 0.9 cm', '2411290557470.jpg, 2411290557471.jpg, 2411290557472.jpg'),
(96, 'Golden Lucky Charms', 4, '2299', 'The Golden bracelet has golden coins as charms and an adjustable closure.\r\n925 Silver with Gold Plating.\r\nPerfect for sensitive skin.\r\nDiameter: 5 cm + Adjustable', '2411290600350.jpg, 2411290600351.jpg, 2411290600352.jpg'),
(97, 'Golden Twinkle Star', 4, '2499', 'The Golden Twinkle Star Bracelet is simplicity at its best with a golden chain like design and the placement of three zircon embellished stars along the string. \r\nSterling silver with Gold plating.\r\nCharm: 70 mm; Length: 16 cm+ 3 cm Adjustable ', '2411290559470.jpg, 2411290559471.jpg, 2411290559472.jpg'),
(98, 'Silver Zircon Excess', 4, '2899', 'This silver bracelet features circular designs and cross motifs alternatively arranged, and set with zircons.\r\n\r\n925 Silver. \r\nCharm: 0.7 cm + 7 cm.\r\nDiameter: 5 cm Adjustable.', '2411290606390.jpg, 2411290606391.jpg, 2411290606392.jpg'),
(99, 'Meandering Bracelet', 4, '1699', 'This silver bracelet has a zig-zag design with zircons studded alternatively.\r\n925 Silver.\r\nLength of chain: 15 cm + 4 cm Adjustable.\r\nMotif Height: 0.5 cm, Width: 4.5 cm. ', '2411290607430.jpg, 2411290607431.jpg, 2411290607432.jpg'),
(100, 'Silver Love Me More', 4, '1999', 'The silver bracelet has a beautiful centrepiece with oval-shaped designs that are studded with zircons.\r\n925 silver.\r\nRhodium e-coat to prevent tarnish.\r\nLength of the bracelet is 17 cm with 3 cm adjustable portion.', '2411290608550.jpg, 2411290608551.jpg, 2411290608552.jpg'),
(101, 'Silver Zircon Majesty ', 4, '1999', 'The Silver Zircon Your Majesty Bracelet has a splendid bracelet design with the simplistic beauty of single studded zircons.\r\n925 Silver.\r\nAdjustable size to ensure no fitting issues.\r\nLength: 15 cm+ 4 cm Adjustable. \r\nRhodium finish to prevent tarnish. ', '2411290610120.jpg, 2411290610121.jpg, 2411290610122.jpg'),
(102, 'Silver Chords of Love', 4, '1799', 'The silver bracelet has a pink stoned star charm in the middle with zircon studded circular charms, two on each side equally interspaced.\r\n925 Silver. \r\nLength of chain: 15.5 cm + 4 cm Adjustable.\r\nMotif Height: 0.6 cm, Width: 0.5 cm.', '2411290615530.jpg, 2411290615531.jpg, 2411290615532.jpg'),
(103, 'Deer Heart Bracelet', 4, '1899', 'This adjustable silver bracelet has a deer motif which lends it an adorable look.\r\n925 Silver.\r\nMotif Size: Height - 1 cm, Motif Width - 2.9 cm.\r\nThe length of the bracelet is 15 cm with a 4 cm adjustable portion.', '2411290617060.jpg, 2411290617061.jpg, 2411290617062.jpg'),
(104, 'Silver Protective Eye ', 4, '1999', 'This silver bracelet features four white and blue zircon studded evil eye designs in the middle.\r\n925 Silver.\r\nCharm: 0.9 cm x  0.6 cm.\r\nLength of chain: 15 cm + 4 cm Adjustable.', '2411290618140.jpg, 2411290618141.jpg, 2411290618142.jpg'),
(105, 'Silver Forever Linked ', 4, '2099', 'This silver bracelet features a connected chain design, giving it an elegant look.\r\n925 Silver.\r\nThe length of the chain is 16.5 cm with a 3 cm adjustable portion.', '2411290619050.jpg, 2411290619051.jpg, 2411290619052.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jewellery_shop_users_registrations`
--

CREATE TABLE `jewellery_shop_users_registrations` (
  `users_id` int(11) NOT NULL,
  `users_username` varchar(100) NOT NULL,
  `users_email` varchar(150) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_mobile` varchar(50) NOT NULL,
  `users_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jewellery_shop_users_registrations`
--

INSERT INTO `jewellery_shop_users_registrations` (`users_id`, `users_username`, `users_email`, `users_password`, `users_mobile`, `users_address`) VALUES
(1, 'abhie', 'abhie@hh.com', '123456789', '2147483647', 'this is address');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jewellery_shop_admin_registrations`
--
ALTER TABLE `jewellery_shop_admin_registrations`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `jewellery_shop_category`
--
ALTER TABLE `jewellery_shop_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `jewellery_shop_orders`
--
ALTER TABLE `jewellery_shop_orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `jewellery_shop_orders_detail`
--
ALTER TABLE `jewellery_shop_orders_detail`
  ADD PRIMARY KEY (`orders_detail_id`);

--
-- Indexes for table `jewellery_shop_product`
--
ALTER TABLE `jewellery_shop_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `jewellery_shop_users_registrations`
--
ALTER TABLE `jewellery_shop_users_registrations`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jewellery_shop_admin_registrations`
--
ALTER TABLE `jewellery_shop_admin_registrations`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jewellery_shop_category`
--
ALTER TABLE `jewellery_shop_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jewellery_shop_orders`
--
ALTER TABLE `jewellery_shop_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jewellery_shop_orders_detail`
--
ALTER TABLE `jewellery_shop_orders_detail`
  MODIFY `orders_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jewellery_shop_product`
--
ALTER TABLE `jewellery_shop_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `jewellery_shop_users_registrations`
--
ALTER TABLE `jewellery_shop_users_registrations`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
