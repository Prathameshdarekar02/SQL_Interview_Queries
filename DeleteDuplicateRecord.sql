--Question : How do you identify and remove duplicate records from a table named "Customers"?

-- To Identify duplicate records 
SELECT Name, Email, COUNT(*) AS DuplicateCount
FROM Customers
GROUP BY Name, Email
HAVING COUNT(*) > 1;

--To identify and delete duplicate records
DELETE FROM customers
WHERE customerid IN (
    SELECT customerid
    FROM (
        SELECT customerid,
               ROW_NUMBER() OVER (PARTITION BY name, email ORDER BY customerid) AS RowNumber
        FROM customers
    ) AS duplicates
    WHERE RowNumber > 1
);
