DROP PROCEDURE Update_Sale;
DELIMITER $$
CREATE PROCEDURE `Update_Sale`(IN ID_Sale INT, IN Date_Sale Date, IN Total_Sale DECIMAL(10,2), IN ID_Client INT)
BEGIN
    UPDATE
        `Sale`
    SET
        Date_Sale = Date_Sale,
        Total_Sale = Total_Sale,
        ID_Client = ID_Client
    WHERE
        ID_Sale = ID_Sale;
END $$
DELIMITER ;