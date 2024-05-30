DROP FUNCTION Return_Phone_Client;
CREATE FUNCTION `Return_Phone_Client`(Number_Document_Client int) RETURNS varchar(50)
    DETERMINISTIC
BEGIN

    DECLARE Phone_Number VARCHAR(50);
    SELECT GROUP_CONCAT('The phone number of client, ', C.`Name_Client`, ' is: ', C.`Phone_Client`) INTO Phone_Number
        FROM `Client` C
        WHERE C.Number_Document_Client = Number_Document_Client;
        IF Phone_Number IS NULL THEN
            SET Phone_Number = 'The client does not exist';
        END IF;
    return Phone_Number;
END