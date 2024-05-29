DROP VIEW View_All_Category;
CREATE VIEW `View_All_Category` AS
select
    `Category`.`Name_Category` AS `Name_Category`,
    `Category`.`Description_Category` AS `Description_Category`
from `Category`