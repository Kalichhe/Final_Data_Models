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