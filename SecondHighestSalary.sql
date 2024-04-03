--Question : Write a SQL query to find the second highest salary from an “Employees” table.

-- Step 1: Select the maximum salary from the Employees table
SELECT MAX(Salary) AS SecondHighestSalary
-- Step 2: Find all salaries less than the maximum salary
FROM Employees
WHERE Salary < (SELECT MAX(Salary) FROM Employees);
