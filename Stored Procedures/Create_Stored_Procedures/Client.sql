DROP PROCEDURE Create_Client;
DELIMITER $$
CREATE PROCEDURE `Create_Client`(IN Name_Client VARCHAR(50), IN Last_Name_Client VARCHAR(50), IN Type_Document_Client VARCHAR(10), IN Number_Document_Client INT, IN Email_Client VARCHAR(50), IN Phone_Client BIGINT, IN Address_Client VARCHAR(100), IN Status_Client BOOLEAN)
BEGIN
    INSERT INTO Client (Name_Client, Last_Name_Client, Type_Document_Client, Number_Document_Client, Email_Client, Phone_Client, Address_Client, Status_Client)
    VALUES (Name_Client, Last_Name_Client, Type_Document_Client, Number_Document_Client, Email_Client, Phone_Client, Address_Client, Status_Client);
END $$
DELIMITER ;


DROP VIEW View_All_Client;
CREATE VIEW `View_All_Client` AS
select
    `Client`.`Name_Client` AS `Name_Client`,
    `Client`.`Last_Name_Client` AS `Last_Name_Client`,
    `Client`.`Type_Document_Client` AS `Type_Document_Client`,
    `Client`.`Number_Document_Client` AS `Number_Document_Client`,
    `Client`.`Email_Client` AS `Email_Client`,
    `Client`.`Phone_Client` AS `Phone_Client`,
    `Client`.`Address_Client` AS `Address_Client`,
    `Client`.`Status_Client` AS `Status_Client`
from `Client`;


DROP PROCEDURE Update_Client;
DELIMITER $$
CREATE PROCEDURE `Update_Client`(IN ID_Client INT, IN Name_Client VARCHAR(50), IN Last_Name_Client VARCHAR(50), IN Type_Document_Client VARCHAR(10), IN Number_Document_Client INT, IN Email_Client VARCHAR(50), IN Phone_Client BIGINT, IN Address_Client VARCHAR(100), IN Status_Client BOOLEAN)
BEGIN
    UPDATE
        `Supermarket_Kalichhe`.`Client`
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
        `Client`.ID_Client = ID_Client;
END $$
DELIMITER ;


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