CREATE DATABASE flight_data;

CREATE TABLE `flights` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Departure_Airport` varchar(60) NOT NULL,
  `Country` varchar(60) NOT NULL,
  `Departure_Date` char(10) NOT NULL,
  `Destination_airport` varchar(50) NOT NULL,
  `Destination_Country` varchar(60) NOT NULL,
  `Return_Date` char(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `flights` VALUES
(1,'Atlanta International Airport','United States','12-04-2021','Atlanta International Airport','China','28-04-2021','2119$'),
(2,'Los Angeles International Airport','United States','03-10-2021','Dubai International Airport','United Arab Emirates','03-11-2021','2780$'),
(3,'Tokyo Haneda Airport','Japan','07-05-2021','OHare International Airport','United States','05-08-2021','2559$'),
(4,'London Heathrow Airport','United Kingdom','02-08-2021','Shanghai Pudong International Airport','China','24-08-2021','2627$'),
(5,'Charles de Gaulle Airportt','France','01-03-2021','Dallas/Fort Worth International Airport','United States','26-03-2021','2177$'),
(6,'Guangzhou Baiyun International Airport','China','07-07-2021','Amsterdam Airport Schiphol','Netherlands','28-07-2021','3078$'),
(7,'Atlanta International Airport','United States','02-04-2021','Beijing Capital-International-Airport','China','20-04-2021','2930$'),
(8,'Hong Kong International Airport','China','09-04-2021','Seoul Incheon International Airport','South Korea','11-05-2021','1948$'),
(9,'Frankfurt Airport','	Germany','15-09-2021','Denver International Airport','United States','07-10-2021','2457$'),
(10,'Indira Gandhi International Airport','India','01-02-2021','Singapore Changi Airport','Singapore','28-02-2021','3029$'),
(11,'Suvarnabhumi Airport','Thailand','08-11-2021','John F. Kennedy International Airport','United States','24-11-2021','2266$'),
(12,'San Francisco International Airport','United States','20-07-2021','Madrid Barajas Airport','Spain','15-08-2021','2487$'),
(13,'Chengdu Shuangliu International Airport','China','11-01-2021','Chengdu Shuangliu International Airport','Indonesia','21-01-2021','1518$'),
(14,'Shenzhen Baoan International Airport','China','24-06-2021','Shenzhen Baoan International Airport','Spain','24-07-2021','2859$'),
(15,'Istanbul Airport','Turkey','11-12-2021','Seattle-Tacoma International Airport','United States','02-12-2021','2461$'),
(16,'Toronto Pearson International Airport','Canada','17-02-2021','Benito Juárez International Airport','Mexico','28-03-2021','1248$'),
(18,'Taiwan Taoyuan International Airport','Taiwan','18-08-2021','Kunming Changshui International Airport','China','28-08-2021','1410$'),
(19,'Xian Xianyang International Airport','China','11-02-2021','Chhatrapati Shivaji Maharaj International Airport','India','28-02-2021','2135$'),
(20,'London Gatwick Airport','United Kingdom','12-10-2021','London Gatwick Airport','United States','20-10-2021','2147$'),
(21,'Phoenix Sky Harbor International Airport','United States','05-08-2021','Miami International Airport','United States','25-08-2021','723$'),
(22,'Shanghai Hongqiao International Airportt','China','27-03-2021',' George Bush Intercontinental Airport','United States','11-04-2021','2347$'),
(23,'Chongqing Jiangbei International Airport','China','05-11-2021','Sydney Airport','Australia','01-12-2021','2970$'),
(24,'Dublin Airport','Ireland','26-03-2021','Dublin Airport','United Kingdom','04-04-2021','800$'),
(25,'Seoul Incheon International Airport','South Korea','07-05-2021','Seoul Incheon International Airport','France','22-08-2021','1548$'),
(26,'Benito Juárez International Airport','Mexico','12-02-2021','Benito Juárez International Airport','United States','04-03-2021','2559$'),
(27,'Dublin Airport','Ireland','26-03-2021','Dublin Airport','France','04-04-2021','560$');