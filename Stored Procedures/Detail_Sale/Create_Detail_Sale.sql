DROP PROCEDURE Create_Detail_Sale;
DELIMITER $$
CREATE PROCEDURE `Create_Detail_Sale`(IN Quantity_Product INT, IN ID_Product INT, IN ID_Sale INT)
BEGIN
    INSERT INTO Detail_Sale (Quantity_Product, ID_Product, ID_Sale)
    VALUES (Quantity_Product, ID_Product, ID_Sale);
END $$
DELIMITER ;