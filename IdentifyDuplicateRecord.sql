--Question : How do you identify duplicate records from a table named "Customers"?

-- Identify duplicate records 
SELECT Name, Email, COUNT(*) AS DuplicateCount
FROM Customers
GROUP BY Name, Email
HAVING COUNT(*) > 1;
