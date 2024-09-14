CREATE TRIGGER trg_AfterInsertEmployee
ON Employees
AFTER INSERT
AS
BEGIN
    INSERT INTO EmployeeLog (EmployeeID, InsertedAt)
    SELECT EmployeeID, GETDATE() FROM inserted;
    
    PRINT 'A new employee has been added and logged';
END;