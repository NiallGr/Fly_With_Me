CREATE DATABASE adminstration;

CREATE TABLE `adminstration_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_login` varchar(200) NOT NULL,
  `admin_password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `adminstration_details` VALUES (1,'flywithme','password1'),(8,'Tom','Jerry');