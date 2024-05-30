# Data for suppliers

# Structure of the table Supplier

CALL `Create_Supplier`(RUT_Supplier, Name_Supplier, Email_Supplier, Address_Supplier, Phone_Supplier);

CALL `Create_Supplier`('123456789', 'Distribuidora ABC', 'info@distribuidoraabc.com', 'Calle 10 # 20-30', '1234567890');

CALL `Create_Supplier`('987654321', 'Comercial XYZ', 'contacto@comercialxyz.com', 'Avenida 5 # 45-67', '0987654321');

CALL `Create_Supplier`('112233445', 'Proveedor LMN', 'ventas@proveedorlmn.com', 'Carrera 8 # 12-34', '1122334455');

CALL `Create_Supplier`('556677889', 'Suministros OPQ', 'admin@suministrosopq.com', 'Calle 15 # 78-90', '5566778899');

CALL `Create_Supplier`('223344556', 'Empresa RST', 'info@empresarst.com', 'Avenida 9 # 56-78', '2233445566');


# Structure to view suppliers
SELECT * FROM `View_All_Supplier`;

# Structure to update suppliers
CALL `Update_Supplier`(ID_Supplier, RUT_Supplier, Name_Supplier, Email_Supplier, Address_Supplier, Phone_Supplier);

CALL `Update_Supplier`('123456789', 'Distribuidora ABC', 'info@distribuidoraabc.com', 'Calle 10 # 20-30', '1234567890');

# Structure to delete suppliers
CALL `Delete_Supplier`(RUT_Supplier);

CALL `Delete_Supplier`('112233445');