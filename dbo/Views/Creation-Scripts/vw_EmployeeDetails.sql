CREATE VIEW vw_EmployeeDetails
AS
SELECT 
    EmployeeID,
    FirstName + ' ' + LastName AS FullName,
    Department,
    HireDate,
    (CASE 
        WHEN Department = 'HR' THEN 'Human Resources'
        ELSE 'Other Department'
    END) AS DepartmentName
FROM Employees;