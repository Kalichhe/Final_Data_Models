DROP PROCEDURE Create_Product;
DELIMITER $$
CREATE PROCEDURE `Create_Product`(IN Name_Product VARCHAR(50), IN Description_Product VARCHAR(100), IN Price_Product DECIMAL(10,2), IN Stock_Product INT, IN Expiration_Date DATE, IN Status_Product BOOLEAN, IN RUT_Supplier BIGINT, IN ID_Category INT)
BEGIN
    INSERT INTO Product (Name_Product, Description_Product, Price_Product, Stock_Product, Expiration_Date, Status_Product, RUT_Supplier, ID_Category)
    VALUES (Name_Product, Description_Product, Price_Product, Stock_Product, Expiration_Date, Status_Product, RUT_Supplier, ID_Category);
END $$
DELIMITER ;


DROP VIEW View_All_Products;
CREATE VIEW `View_All_Products` AS
select
    `Product`.`ID_Product` AS `ID_Product`,
    `Product`.`Name_Product` AS `Name_Product`,
    `Product`.`Description_Product` AS `Description_Product`,
    `Product`.`Price_Product` AS `Price_Product`,
    `Product`.`Stock_Product` AS `Stock_Product`,
    `Product`.`Expiration_Date` AS `Expiration_Date`,
    `Product`.`RUT_Supplier` AS `RUT_Supplier`,
    `Product`.`ID_Category` AS `ID_Category`
from `Product`;


DROP PROCEDURE Update_Product;
DELIMITER $$
CREATE PROCEDURE `Update_Product`(IN ID_Product INT, IN Name_Product VARCHAR(50), IN Description_Product VARCHAR(100), IN Price_Product DECIMAL(10,2), IN Expiration_Date DATE, IN Status_Product BOOLEAN, IN RUT_Supplier BIGINT, IN ID_Category INT)
BEGIN
    UPDATE 
        `Product` 
    SET 
        Name_Product = Name_Product,
        Description_Product = Description_Product,
        Price_Product = Price_Product,
        Expiration_Date = Expiration_Date,
        Status_Product = Status_Product,
        RUT_Supplier = RUT_Supplier,
        ID_Category = ID_Category
    WHERE 
        `Product`.ID_Product = ID_Product;
END $$
DELIMITER ;


DROP PROCEDURE Delete_Product;
DELIMITER $$
CREATE PROCEDURE `Delete_Product`(IN ID_Product INT)
BEGIN
    UPDATE 
        `Product`
    SET 
        Status_Product = FALSE
    WHERE 
        ID_Product = ID_Product;
END $$
DELIMITER ;