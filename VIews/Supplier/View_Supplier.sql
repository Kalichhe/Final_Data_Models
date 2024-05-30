DROP VIEW View_All_Supplier;
CREATE VIEW `View_All_Supplier` AS
select
    `Supplier`.`RUT_Supplier` AS `RUT_Supplier`,
    `Supplier`.`Name_Supplier` AS `Name_Supplier`,
    `Supplier`.`Email_Supplier` AS `Email_Supplier`,
    `Supplier`.`Address_Supplier` AS `Address_Supplier`,
    `Supplier`.`Phone_Supplier` AS `Phone_Supplier`
from `Supplier`;