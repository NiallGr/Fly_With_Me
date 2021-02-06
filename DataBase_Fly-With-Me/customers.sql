CREATE DATABASE customers;

CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `User_password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `customer` VALUES (1,'Mike','Foley','123MikeFoley','mikefoley@gmail.com'),
(2,'Mike','Jones','Password1','mikeJones@gmail.com'),
(3,'Lisa','Kite','Password1','LisaK@gmail.com'),
(4,'Pete','Dowler','password1','PeteD@gmail.com');