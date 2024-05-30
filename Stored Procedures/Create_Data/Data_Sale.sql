# Data for sales

# Structure to sell products

SELECT Sell_Product(2, '2022-10-10', 1, 3) AS Total_Sale;

SELECT Sell_Product(3, '2022-10-11', 2, 2) AS Total_Sale;

SELECT Sell_Product(4, '2022-10-12', 3, 3) AS Total_Sale;

SELECT Sell_Product(5, '2022-10-13', 4, 4) AS Total_Sale;

SELECT Sell_Product(1, '2022-10-14', 5, 5) AS Total_Sale;

SELECT Sell_Product(2, '2022-10-15', 2, 1) AS Total_Sale;

SELECT Sell_Product(3, '2022-10-15', 3, 1) AS Total_Sale;


SELECT Sell_Product(89, '2022-10-10', 1, 1) AS Total_Sale;


# Structure to view sales
SELECT * FROM `View_All_Sale`;

# Structure to update sales
CALL `Update_Sale`(ID_Sale, ID_Product, Date_Sale, Quantity_Sale, ID_Supplier);

CALL `Update_Sale`(1, 1, '2022-10-14', 5, 5);

# Structure to delete sales
CALL `Delete_Sale`(ID_Sale);

CALL `Delete_Sale`(1);