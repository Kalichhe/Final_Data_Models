DROP PROCEDURE Delete_Supplier;
DELIMITER $$
CREATE PROCEDURE `Delete_Supplier`(IN RUT_Supplier BIGINT)
BEGIN
    DELETE FROM `Supplier`
        WHERE RUT_Supplier = RUT_Supplier;
END $$
DELIMITER ;