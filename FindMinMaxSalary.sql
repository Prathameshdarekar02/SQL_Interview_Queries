--Question : How do you find the maximum and minimum salaries from an “Employees” table in a single query?

-- Select the maximum and minimum salaries from the Employees table
SELECT 
    MAX(Salary) AS MaximumSalary, -- Step 1: Find the maximum salary
    MIN(Salary) AS MinimumSalary  -- Step 2: Find the minimum salary
FROM Employees;
