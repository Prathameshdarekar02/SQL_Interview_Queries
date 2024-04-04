--Question : Create Parameterized Stored Procedure to retrieves employees from the "employees" table based on the specified salary.

CREATE PROCEDURE GetEmployeesBySalary
    @Salary DECIMAL(10, 2)
AS
BEGIN
    SELECT *
    FROM employees
    WHERE salary = @Salary;
END;

EXEC GetEmployeesBySalary @Salary = 50000;
