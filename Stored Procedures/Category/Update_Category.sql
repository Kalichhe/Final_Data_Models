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