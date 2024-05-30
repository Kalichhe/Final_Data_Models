DROP PROCEDURE Create_Supplier;
DELIMITER $$
CREATE PROCEDURE `Create_Supplier`(IN RUT_Supplier BIGINT, IN Name_Supplier VARCHAR(50), IN Email_Supplier VARCHAR(50), IN Address_Supplier VARCHAR(100), IN Phone_Supplier BIGINT)
BEGIN
    INSERT INTO Supplier (RUT_Supplier, Name_Supplier, Email_Supplier, Address_Supplier, Phone_Supplier)
    VALUES (RUT_Supplier, Name_Supplier, Email_Supplier, Address_Supplier, Phone_Supplier);
END $$
DELIMITER ;


DROP VIEW View_All_Supplier;
CREATE VIEW `View_All_Supplier` AS
select
    `Supplier`.`RUT_Supplier` AS `RUT_Supplier`,
    `Supplier`.`Name_Supplier` AS `Name_Supplier`,
    `Supplier`.`Email_Supplier` AS `Email_Supplier`,
    `Supplier`.`Address_Supplier` AS `Address_Supplier`,
    `Supplier`.`Phone_Supplier` AS `Phone_Supplier`
from `Supplier`;


DROP PROCEDURE Update_Supplier;
DELIMITER $$
CREATE PROCEDURE `Update_Supplier`(IN ID_Supplier BIGINT, IN RUT_Supplier BIGINT, IN Name_Supplier VARCHAR(50), IN Email_Supplier VARCHAR(50), IN Address_Supplier VARCHAR(100), IN Phone_Supplier BIGINT)
BEGIN
    UPDATE
        `Supplier`
    SET
        RUT_Supplier = RUT_Supplier,
        Name_Supplier = Name_Supplier,
        Email_Supplier = Email_Supplier,
        Address_Supplier = Address_Supplier,
        Phone_Supplier = Phone_Supplier
    WHERE
        `Supplier`.ID_Supplier = RUT_Supplier;
END $$
DELIMITER ;


DROP PROCEDURE Delete_Supplier;
DELIMITER $$
CREATE PROCEDURE `Delete_Supplier`(IN RUT_Supplier BIGINT)
BEGIN
    DELETE FROM `Supplier`
        WHERE RUT_Supplier = RUT_Supplier;
END $$
DELIMITER ;