DROP PROCEDURE Update_Detail_Sale;
DELIMITER $$
CREATE PROCEDURE `Update_Detail_Sale`(IN ID_Detail_Sale INT, IN Quantity_Product INT, IN ID_Product INT, IN ID_Sale INT)
BEGIN
    UPDATE
        `Detail_Sale`
    SET
        Quantity_Product = Quantity_Product,
        ID_Product = ID_Product,
        ID_Sale = ID_Sale
    WHERE
        ID_Detail_Sale = ID_Detail_Sale;
END $$
DELIMITER ;