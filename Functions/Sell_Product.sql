DROP FUNCTION Sell_Product;

CREATE FUNCTION `Sell_Product`(Quantity_Product INT, Date_Sale DATE, ID_Client INT, ID_Product INT) RETURNS DECIMAL(10,2)
DETERMINISTIC 
BEGIN
    DECLARE Price_Product DECIMAL(10,2);
    DECLARE Total DECIMAL(10,2);

    -- Obtener el precio del producto
    SELECT p.Price_Product INTO Price_Product
    FROM `Product` p
    WHERE ID_Product = ID_Product;

    -- Calcular el total de la venta
    SET Total = Price_Product * Quantity_Product;

    -- Insertar la nueva venta en la tabla Sale
    INSERT INTO `Sale` (Quantity_Product, Total_Sale, Date_Sale, ID_Client, ID_Product)
    VALUES (Quantity_Product, Total, Date_Sale, ID_Client, ID_Product);

    -- Devolver el total de la venta
    RETURN Total;
END;