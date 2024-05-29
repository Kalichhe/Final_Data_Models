DROP PROCEDURE Delete_Client;
DELIMITER $$
CREATE PROCEDURE `Delete_Client`(IN ID_Client INT)
BEGIN
    UPDATE 
        `Client`
    SET 
        Status_Client = FALSE
    WHERE 
        ID_Client = ID_Client;
END $$
DELIMITER ;