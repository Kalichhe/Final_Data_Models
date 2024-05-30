DROP VIEW View_All_Sale;
CREATE VIEW `View_All_Sale` AS
select
    `Sale`.`ID_Sale` AS `ID_Sale`,
    `Sale`.`Quantity_Product` AS `Quantity_Product`,
    `Sale`.`Total_Sale` AS `Total_Sale`,
    `Sale`.`Date_Sale` AS `Date_Sale`,
    `Sale`.`ID_Client` AS `ID_Client`,
    `Sale`.`ID_Product` AS `ID_Product`
from `Sale`;