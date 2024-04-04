--Question : Create Stored Procedure to retrieve all employee information from the "employees" table

CREATE PROCEDURE GetAllEmployees
AS
BEGIN
    SELECT *
    FROM employees;
END;
