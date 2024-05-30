USE Supermarket_Kalichhe;

# Structure to add clients
CALL `Create_Client`(Name_Client VARCHAR(50), Last_Name_Client VARCHAR(50), Type_Document_Client VARCHAR(10), Number_Document_Client INT, Email_Client VARCHAR(50), Phone_Client BIGINT, Address_Client VARCHAR(100), Status_Client BOOLEAN);


CALL `Create_Client`('Carlos', 'Lopez', 'CC', 1001154064, 'carloslopez@example.com', 3216044006, 'Cra 50 # 97a - 32', TRUE);

CALL `Create_Client`('Maria', 'Gomez', 'CC', 1002154065, 'mariagomez@example.com', 3203045007, 'Av 68 # 34 - 56', TRUE);

CALL `Create_Client`('Juan', 'Martinez', 'CC', 1003154066, 'juanmartinez@example.com', 3102046008, 'Calle 10 # 20 - 30', TRUE);

CALL `Create_Client`('Ana', 'Ramirez', 'CC', 1004154067, 'anaramirez@example.com', 3195047009, 'Carrera 7 # 45 - 60', TRUE);



# Structure to view clients
SELECT * FROM `View_All_Client`;


# Structure to update clients
CALL `Update_Client`(Id_Client INT, Name_Client VARCHAR(50), Last_Name_Client VARCHAR(50), Type_Document_Client VARCHAR(10), Number_Document_Client INT, Email_Client VARCHAR(50), Phone_Client BIGINT, Address_Client VARCHAR(100), Status_Client BOOLEAN);

CALL `Update_Client`(1, 'Carlos', 'Lopez', 'CC', 1001154064, 'carloslopez@example.com', 3216044006, 'Cra 50 # 97a - 32', TRUE);


# Structure to delete clients
CALL `Delete_Client`(Number_Document_Client INT);

CALL `Delete_Client`(1001154064);