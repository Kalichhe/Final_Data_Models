-- Active: 1716093420781@@127.0.0.1@3306@Supermarket_Kalichhe
CREATE DATABASE `Supermarket_Kalichhe`;

USE `Supermarket_Kalichhe`;

CREATE TABLE `Client` (
    ID_Client INT AUTO_INCREMENT,
    Name_Client VARCHAR(50) NOT NULL,
    Last_Name_Client VARCHAR(50) NOT NULL,
    Type_Document_Client VARCHAR(10) NOT NULL,
    Number_Document_Client INT NOT NULL,
    Email_Client VARCHAR(50) NOT NULL UNIQUE,
    Phone_Client BIGINT NOT NULL UNIQUE,
    Address_Client VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_Client, Number_Document_Client)
); 

CREATE TABLE `Supplier` (
    RUT_Supplier BIGINT NOT NULL,
    Name_Supplier VARCHAR(50) NOT NULL,
    Email_Supplier VARCHAR(50) NOT NULL UNIQUE,
    Address_Supplier VARCHAR(100) NOT NULL,
    Phone_Supplier BIGINT NOT NULL UNIQUE,
    PRIMARY KEY (RUT_Supplier)
);

CREATE TABLE `Category` (
    ID_Category INT AUTO_INCREMENT,
    Name_Category VARCHAR(50) NOT NULL UNIQUE,
    Description_Category VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_Category)
);

CREATE TABLE `Sale` (
    ID_Sale INT AUTO_INCREMENT,
    Date_Sale DATE NOT NULL,
    Total_Sale DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ID_Sale)
);

CREATE TABLE `Product` (
    ID_Product INT AUTO_INCREMENT,
    Name_Product VARCHAR(50) NOT NULL UNIQUE,
    Description_Product VARCHAR(100) NOT NULL,
    Price_Product DECIMAL(10,2) NOT NULL,
    Stock_Product INT NOT NULL,
    Expiration_Date DATE NOT NULL,
    ID_Client INT,
    Number_Document_Client INT,
    RUT_Supplier BIGINT,
    ID_Category INT,
    ID_Sale INT,
    PRIMARY KEY (ID_Product),
    FOREIGN KEY (ID_Client, Number_Document_Client) 
    REFERENCES `Supermarket_Kalichhe`.`Client` (ID_Client, Number_Document_Client),
    FOREIGN KEY (RUT_Supplier) 
    REFERENCES `Supermarket_Kalichhe`.`Supplier` (RUT_Supplier),
    FOREIGN KEY (ID_Category)
    REFERENCES `Supermarket_Kalichhe`.`Category` (ID_Category)
);

CREATE TABLE `Detail_Sale` (
    ID_Detail_Sale INT AUTO_INCREMENT,
    Quantity_Product INT NOT NULL,
    Subtotal DECIMAL(10,2) NOT NULL,
    ID_Product INT,
    ID_Sale INT,
    PRIMARY KEY (ID_Detail_Sale),
    FOREIGN KEY (ID_Product)
    REFERENCES `Supermarket_Kalichhe`.`Product` (ID_Product),
    FOREIGN KEY (ID_Sale)
    REFERENCES `Supermarket_Kalichhe`.`Sale` (ID_Sale)
);

