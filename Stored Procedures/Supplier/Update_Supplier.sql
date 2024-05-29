DROP PROCEDURE Update_Supplier;
DELIMITER $$
CREATE PROCEDURE `Update_Supplier`(IN ID_Supplier BIGINT, IN RUT_Supplier BIGINT, IN Name_Supplier VARCHAR(50), IN Email_Supplier VARCHAR(50), IN Address_Supplier VARCHAR(100), IN Phone_Supplier BIGINT)
BEGIN
    UPDATE
        `Supplier`
    SET
        RUT_Supplier = RUT_Supplier,
        Name_Supplier = Name_Supplier,
        Email_Supplier = Email_Supplier,
        Address_Supplier = Address_Supplier,
        Phone_Supplier = Phone_Supplier
    WHERE
        ID_Supplier = RUT_Supplier;
END $$
DELIMITER ;