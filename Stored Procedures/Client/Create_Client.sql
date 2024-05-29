DROP PROCEDURE Create_Client;
DELIMITER $$
CREATE PROCEDURE `Create_Client`(IN Name_Client VARCHAR(50), IN Last_Name_Client VARCHAR(50), IN Type_Document_Client VARCHAR(10), IN Number_Document_Client INT, IN Email_Client VARCHAR(50), IN Phone_Client BIGINT, IN Address_Client VARCHAR(100), IN Status_Client BOOLEAN)
BEGIN
    INSERT INTO Client (Name_Client, Last_Name_Client, Type_Document_Client, Number_Document_Client, Email_Client, Phone_Client, Address_Client, Status_Client)
    VALUES (Name_Client, Last_Name_Client, Type_Document_Client, Number_Document_Client, Email_Client, Phone_Client, Address_Client, Status_Client);
END $$
DELIMITER ;