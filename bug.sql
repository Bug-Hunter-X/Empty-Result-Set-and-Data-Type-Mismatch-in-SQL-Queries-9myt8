```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might seem correct, but it has a subtle issue.  If there are no employees in the Sales department with a salary greater than 100000, it won't necessarily raise an error, but it will return an empty result set.  This can be problematic if the calling application doesn't handle the empty result gracefully and assumes data will always be present.  A more robust solution involves checking the number of rows returned before processing.

Another subtle error could stem from data type mismatches. For example, if the 'salary' column is stored as a VARCHAR and you're comparing it directly with a numeric value, the comparison may not yield expected results, leading to incorrect filtering.