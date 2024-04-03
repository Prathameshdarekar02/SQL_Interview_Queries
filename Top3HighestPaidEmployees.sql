--Question: How do you retrieve the top 5 highest-paid employees from a table named "Salary"?

-- Step 1: Define a common table expression (CTE) to rank employees based on their salary
WITH RankedEmployees AS (
    SELECT Employee_ID, first_Name, Salary,
           RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
    FROM employees
)
-- Step 2: Select employee ID, name, and salary from the CTE
SELECT Employee_ID, first_Name, Salary
-- Step 3: Filter the results to include only employees with a salary rank less than or equal to 3
FROM RankedEmployees
WHERE SalaryRank <= 3;
