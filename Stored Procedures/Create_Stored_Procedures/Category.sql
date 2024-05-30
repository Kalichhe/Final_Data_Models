DROP PROCEDURE Create_Category;
DELIMITER $$
CREATE PROCEDURE `Create_Category`(IN Name_Category VARCHAR(50), IN Description_Category VARCHAR(100))
BEGIN
    INSERT INTO Category (Name_Category, Description_Category)
    VALUES (Name_Category, Description_Category);
END $$
DELIMITER ;


DROP VIEW View_All_Category;
CREATE VIEW `View_All_Category` AS
select
    `Category`.`Name_Category` AS `Name_Category`,
    `Category`.`Description_Category` AS `Description_Category`
from `Category`;


DROP PROCEDURE Update_Category;
DELIMITER $$
CREATE PROCEDURE `Update_Category`(IN ID_Category INT, IN Name_Category VARCHAR(50), IN Description_Category VARCHAR(100))
BEGIN
    UPDATE
        `Category`
    SET
        Name_Category = Name_Category,
        Description_Category = Description_Category
    WHERE
        `Category`.ID_Category = ID_Category;
END $$
DELIMITER ;


DROP PROCEDURE Delete_Category;
DELIMITER $$
CREATE PROCEDURE `Delete_Category`(IN ID_Category INT)
BEGIN
    DELETE FROM `Category`
        WHERE ID_Category = ID_Category;
END $$
DELIMITER ;