DROP PROCEDURE Create_Sale;
DELIMITER $$
CREATE PROCEDURE `Create_Sale`(IN Date_Sale DATE, IN Total_Sale DECIMAL(10,2), IN ID_Client INT)
BEGIN   
    INSERT INTO Sale (Date_Sale, Total_Sale, ID_Client)
    VALUES (Date_Sale, Total_Sale, ID_Client);
END $$
DELIMITER ;