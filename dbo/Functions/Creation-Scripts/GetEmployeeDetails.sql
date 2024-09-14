SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION dbo.GetEmployeeDetails(@EmployeeID INT)
RETURNS NVARCHAR(150)
AS
BEGIN
    DECLARE @Details NVARCHAR(150);
    SELECT @Details = FirstName + ' ' + LastName + ', Department: ' + Department 
    FROM Employees 
    WHERE EmployeeID = @EmployeeID;
    RETURN @Details;
END;
GO
