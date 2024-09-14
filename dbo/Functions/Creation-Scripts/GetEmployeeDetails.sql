SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION dbo.GetEmployeeDetails(@EmployeeID INT = NULL)
RETURNS NVARCHAR(150)
AS
BEGIN
    DECLARE @Details NVARCHAR(150);

    IF @EmployeeID IS NULL
    BEGIN
        SET @Details = 'No Employee ID provided.';
    END
    ELSE
    BEGIN
        SELECT @Details = COALESCE(FirstName + ' ' + LastName + ', Department: ' + Department, 'Employee Not Found')
        FROM Employees 
        WHERE EmployeeID = @EmployeeID;
    END

    RETURN @Details;
END;
GO
