DROP PROCEDURE Update_Client;
DELIMITER $$
CREATE PROCEDURE `Update_Client`(IN ID_Client INT, IN Name_Client VARCHAR(50), IN Last_Name_Client VARCHAR(50), IN Type_Document_Client VARCHAR(10), IN Number_Document_Client INT, IN Email_Client VARCHAR(50), IN Phone_Client BIGINT, IN Address_Client VARCHAR(100), IN Status_Client BOOLEAN)
BEGIN
    UPDATE
        `Client`
    SET
        Name_Client = Name_Client,
        Last_Name_Client = Last_Name_Client,
        Type_Document_Client = Type_Document_Client,
        Number_Document_Client = Number_Document_Client,
        Email_Client = Email_Client,
        Phone_Client = Phone_Client,
        Address_Client = Address_Client,
        Status_Client = Status_Client
    WHERE
        ID_Client = ID_Client;
END $$
DELIMITER ;