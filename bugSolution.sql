```sql
-- Check for row count before processing
SELECT COUNT(*) FROM employees WHERE department = 'Sales' AND salary > 100000;
IF @@ROWCOUNT > 0
BEGIN
    SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
END
ELSE
BEGIN
    -- Handle case where no rows are found
    PRINT 'No matching employees found';
END;

-- Explicitly cast data types for comparisons
SELECT * FROM employees WHERE department = 'Sales' AND CAST(salary AS DECIMAL(10,2)) > 100000; 
```