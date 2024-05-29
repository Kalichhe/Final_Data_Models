DROP PROCEDURE Delete_Category;
DELIMITER $$
CREATE PROCEDURE `Delete_Category`(IN ID_Category INT)
BEGIN
    DELETE FROM `Category`
        WHERE ID_Category = ID_Category;
END $$
DELIMITER ;