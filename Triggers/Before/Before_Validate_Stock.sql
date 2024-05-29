DROP TRIGGER IF EXISTS Before_Validate_Stock;
DELIMITER $$
CREATE TRIGGER Before_Validate_Stock
BEFORE INSERT ON Sale 
FOR EACH ROW 
BEGIN
    DECLARE Stock_Product INT;

    SELECT p.Stock_Product INTO Stock_Product
    FROM `Product` p 
    WHERE p.ID_Product = NEW.ID_Product;

    IF Stock_Product < NEW.Quantity_Product THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient stock for the product';
    END IF;
END $$
DELIMITER ;