CREATE PROCEDURE AddEmployee
@FirstName NVARCHAR(50),
@LastName NVARCHAR(50),
@Department NVARCHAR(50)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Employees WHERE FirstName = @FirstName AND LastName = @LastName)
    BEGIN
        PRINT 'Employee already exists';
        RETURN;
    END

    INSERT INTO Employees (FirstName, LastName, Department)
    VALUES (@FirstName, @LastName, @Department);
END;