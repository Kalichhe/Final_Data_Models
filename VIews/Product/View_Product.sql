DROP VIEW View_All_Products;
CREATE VIEW `View_All_Products` AS
select
    `Product`.`ID_Product` AS `ID_Product`,
    `Product`.`Name_Product` AS `Name_Product`,
    `Product`.`Description_Product` AS `Description_Product`,
    `Product`.`Price_Product` AS `Price_Product`,
    `Product`.`Stock_Product` AS `Stock_Product`,
    `Product`.`Expiration_Date` AS `Expiration_Date`,
    `Product`.`RUT_Supplier` AS `RUT_Supplier`,
    `Product`.`ID_Category` AS `ID_Category`
from `Product`