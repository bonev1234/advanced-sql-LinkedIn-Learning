SELECT e.firstName, e.lastName, e.title, e.startDate, s.salesId
FROM employee e
INNER JOIN sales s 
  ON e.employeeId = s.employeeId
  WHERE e.title = 'Sales Person'
  AND s.salesId IS NULL