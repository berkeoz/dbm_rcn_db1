CREATE PROCEDURE AddEmployee
@FirstName NVARCHAR(50),
@LastName NVARCHAR(50),
@Department NVARCHAR(50)
AS
BEGIN
    INSERT INTO Employees (FirstName, LastName, Department)
    VALUES (@FirstName, @LastName, @Department);
END;