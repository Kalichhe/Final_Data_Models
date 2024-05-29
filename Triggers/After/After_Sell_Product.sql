DROP TRIGGER IF EXISTS After_Sell_Product;
DELIMITER $$
CREATE TRIGGER After_Sell_Product
AFTER INSERT ON Sale
FOR EACH ROW
BEGIN
    UPDATE Product
    SET Stock_Product = Stock_Product - NEW.Quantity_Product
    WHERE ID_Product = NEW.ID_Product;
END $$
DELIMITER ; 