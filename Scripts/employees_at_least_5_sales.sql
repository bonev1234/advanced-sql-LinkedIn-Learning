Select e.employeeId, e.firstName, e.lastName,
    count(*) AS NumCarsSold  
FROM  sales s 
INNER JOIN employee e
    ON s.employeeId=e.employeeId
GROUP BY e.employeeId
HAVING count(*) >= 5