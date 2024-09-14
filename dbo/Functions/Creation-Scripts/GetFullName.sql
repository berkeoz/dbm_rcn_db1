SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION GetFullName(@EmployeeID INT)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @FullName NVARCHAR(100);
    SELECT @FullName = FirstName + ' ' + LastName 
    FROM Employees 
    WHERE EmployeeID = @EmployeeID;
    RETURN @FullName;
END;
GO
