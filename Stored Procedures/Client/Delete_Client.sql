DROP PROCEDURE Delete_Client;
DELIMITER $$
CREATE PROCEDURE `Delete_Client`(IN Number_Document_Client INT)
BEGIN
    UPDATE 
        `Client`
    SET 
        Status_Client = FALSE
    WHERE 
        Number_Document_Client = Number_Document_Client;
END $$
DELIMITER ;