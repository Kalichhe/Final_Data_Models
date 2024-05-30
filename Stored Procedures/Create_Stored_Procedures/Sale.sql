DROP VIEW View_All_Sale;
CREATE VIEW `View_All_Sale` AS
SELECT
    `Sale`.`ID_Sale` AS `ID_Sale`,
    `Sale`.`Quantity_Product` AS `Quantity_Product`,
    `Sale`.`Total_Sale` AS `Total_Sale`,
    `Sale`.`Date_Sale` AS `Date_Sale`,
    `Sale`.`ID_Client` AS `ID_Client`,
    `Sale`.`ID_Product` AS `ID_Product`
FROM `Sale`;


DROP PROCEDURE Update_Sale;
DELIMITER $$
CREATE PROCEDURE `Update_Sale`(IN ID_Sale INT, IN Quantity_Product INT, IN Total_Sale DECIMAL(10,2), IN Date_Sale DATE, IN ID_Client INT, IN ID_Product INT)
BEGIN
    UPDATE
        `Sale`
    SET
        `Quantity_Product` = Quantity_Product,
        `Total_Sale` = Total_Sale,
        `Date_Sale` = Date_Sale,
        `ID_Client` = ID_Client,
        `ID_Product` = ID_Product
    WHERE
        `Sale`.ID_Sale = ID_Sale;
END $$
DELIMITER ;