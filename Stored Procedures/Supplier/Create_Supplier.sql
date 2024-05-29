DROP PROCEDURE Create_Supplier;
DELIMITER $$
CREATE PROCEDURE `Create_Supplier`(IN RUT_Supplier BIGINT, IN Name_Supplier VARCHAR(50), IN Email_Supplier VARCHAR(50), IN Address_Supplier VARCHAR(100), IN Phone_Supplier BIGINT)
BEGIN
    INSERT INTO Supplier (RUT_Supplier, Name_Supplier, Email_Supplier, Address_Supplier, Phone_Supplier)
    VALUES (RUT_Supplier, Name_Supplier, Email_Supplier, Address_Supplier, Phone_Supplier);
END $$
DELIMITER ;