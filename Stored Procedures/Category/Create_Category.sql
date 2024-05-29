DROP PROCEDURE Create_Category;
DELIMITER $$
CREATE PROCEDURE `Create_Category`(IN Name_Category VARCHAR(50), IN Description_Category VARCHAR(100))
BEGIN
    INSERT INTO Category (Name_Category, Description_Category)
    VALUES (Name_Category, Description_Category);
END $$
DELIMITER ;