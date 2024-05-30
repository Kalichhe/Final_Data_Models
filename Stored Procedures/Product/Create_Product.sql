DROP PROCEDURE Create_Product;
DELIMITER $$
CREATE PROCEDURE `Create_Product`(IN Name_Product VARCHAR(50), IN Description_Product VARCHAR(100), IN Price_Product DECIMAL(10,2), IN Stock_Product INT, IN Expiration_Date DATE, IN Status_Product BOOLEAN, IN RUT_Supplier BIGINT, IN ID_Category INT)
BEGIN
    INSERT INTO Product (Name_Product, Description_Product, Price_Product, Stock_Product, Expiration_Date, Status_Product, RUT_Supplier, ID_Category)
    VALUES (Name_Product, Description_Product, Price_Product, Stock_Product, Expiration_Date, Status_Product, RUT_Supplier, ID_Category);
END $$
DELIMITER ;