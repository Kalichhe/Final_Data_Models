# Data for products

# Structure to create products

CALL `Create_Product`(Name_Product, Description_Product, Price_Product, Stock_Product, Expiration_Product, Status_Product, RUT_Supplier, ID_Category);

CALL `Create_Product`('Manzanas', 'Manzanas frescas', 2.50, 100, '2024-05-05', TRUE, '123456789', 1);

CALL `Create_Product`('Tomates', 'Tomates orgánicos', 1.80, 200, '2024-06-10', TRUE, '987654321', 2);

CALL `Create_Product`('Leche', 'Leche entera', 1.20, 300, '2024-07-15', TRUE, '112233445', 3);

CALL `Create_Product`('Pollo', 'Pollo fresco', 5.00, 150, '2024-08-20', TRUE, '556677889', 4);

CALL `Create_Product`('Jugo de Naranja', 'Jugo de naranja natural', 2.00, 250, '2024-09-25', TRUE, '223344556', 5);


# Structure to view products
SELECT * FROM `View_All_Product`;

# Structure to update products
CALL `Update_Product`(ID_Product, Name_Product, Description_Product, Price_Product, Stock_Product, Expiration_Product, Status_Product, RUT_Supplier, ID_Category);

CALL `Update_Product`(1, 'Manzanas', 'Manzanas frescas', 2.50, 100, '2024-05-05', TRUE, '123456789', 1);

# Structure to delete products
CALL `Delete_Product`(ID_Product);

CALL `Delete_Product`(1);