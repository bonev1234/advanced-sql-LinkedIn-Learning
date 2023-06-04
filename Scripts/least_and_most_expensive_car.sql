Select e.employeeId, e.firstName, e.lastName,
MAX(salesAmount)as mostExpensive, MIN(salesAmount) as leastExpensive
FROM  sales s 
INNER JOIN employee e
    ON s.employeeId=e.employeeId
WHERE s.soldDate >= date('now','start of year')
GROUP BY e.employeeId, e.firstName, e.lastName
