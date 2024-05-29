DROP FUNCTION Sell_Product;
CREATE FUNCTION `Sell_Product`(Quantity_Product INT, Date_Sale DATE, ID_Client INT, ID_Product INT) RETURNS VARCHAR(50)
    DETERMINISTIC 
BEGIN
    DECLARE Price_Product DECIMAL(10,2);
    DECLARE Total DECIMAL(10,2);
    SELECT p.Price_Product INTO Price_Product
    FROM `Product` p 
        WHERE p.ID_Product = ID_Product;
    SET Total = Price_Product * Quantity_Product;
    INSERT INTO `Sale` (Quantity_Product, Total_Sale, Date_Sale, ID_Client, ID_Product)
    VALUES (Quantity_Product, Total, Date_Sale, ID_Client, ID_Product);
    RETURN Total;
END