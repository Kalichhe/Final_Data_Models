DROP VIEW View_All_Detail_Sale;
CREATE VIEW `View_All_Detail_Sale` AS
select
    `Detail_Sale`.`Quantity_Product` AS `Quantity_Product`,
    `Detail_Sale`.`ID_Product` AS `ID_Product`,
    `Detail_Sale`.`ID_Sale` AS `ID_Sale`
from `Detail_Sale`