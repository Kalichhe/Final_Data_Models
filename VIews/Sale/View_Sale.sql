DROP VIEW View_All_Sale;
CREATE VIEW `View_All_Sale` AS
select
    `Sale`.`Date_Sale` AS `Date_Sale`,
    `Sale`.`Total_Sale` AS `Total_Sale`,
    `Sale`.`ID_Client` AS `ID_Client`
from `Sale`