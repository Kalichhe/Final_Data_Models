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