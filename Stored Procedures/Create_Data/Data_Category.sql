# Data for categories

# Structure to create categories
CALL `Create_Category`(Name_Category, Description_Category);

CALL `Create_Category`('Frutas', 'Variedad de frutas frescas.');

CALL `Create_Category`('Verduras', 'Diferentes tipos de verduras frescas.');

CALL `Create_Category`('Lácteos', 'Productos lácteos como leche, queso y yogur.');

CALL `Create_Category`('Carnes', 'Carnes frescas de res, cerdo y pollo.');

CALL `Create_Category`('Bebidas', 'Diversas bebidas incluyendo jugos, refrescos y aguas.');


# Structure to view categories
SELECT * FROM `View_All_Category`;

# Structure to update categories
CALL `Update_Category`(ID_Category, Name_Category, Description_Category);

CALL `Update_Category`(1, 'Frutas', 'Variedad de frutas frescas.');


# Structure to delete categories
CALL `Delete_Category`(ID_Category);

CALL `Delete_Category`(1);