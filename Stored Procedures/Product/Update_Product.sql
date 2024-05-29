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
        ID_Product = ID_Product;
END $$
DELIMITER ;