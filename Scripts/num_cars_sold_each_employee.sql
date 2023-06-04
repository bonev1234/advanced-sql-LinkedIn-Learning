Select e.employeeId, e.firstName, e.lastName, count() as nCarsSold
FROM  sales s 
INNER JOIN employee e
    ON s.employeeId=e.employeeId
GROUP BY e.employeeId, e.firstName, e.lastName
ORDER BY nCarsSold;

