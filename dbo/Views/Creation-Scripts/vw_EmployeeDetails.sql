CREATE VIEW vw_EmployeeDetails
AS
SELECT 
    EmployeeID,
    FirstName + ' ' + LastName AS FullName,
    Department,
    HireDate
FROM Employees;