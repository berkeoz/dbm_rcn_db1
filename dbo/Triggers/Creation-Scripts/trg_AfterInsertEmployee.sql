CREATE TRIGGER trg_AfterInsertEmployee
ON Employees
AFTER INSERT
AS
BEGIN
    PRINT 'A new employee has been added';
END;