Select e.firstName, e.lastName, s.soldDate, s.salesAmount
FROM  sales s 
INNER JOIN employee e
    ON s.employeeId=e.employeeId
WHERE s.soldDate >=('2021-01-01')
AND s.soldDate < ('2022-01-01')

SELECT e.firstName, e.lastName,
  CASE WHEN strftime('%m', soldDate) = '01'
      THEN salesAmount END AS janSales,
  CASE 
      WHEN strftime('%m', soldDate) = '02'
      THEN salesAmount END AS febSales,
  CASE 
      WHEN strftime('%m', soldDate) = '03'
      THEN salesAmount END AS marSales,
  CASE 
      WHEN strftime('%m', soldDate) = '04'
      THEN salesAmount END AS aprSales,
  CASE 
      WHEN strftime('%m', soldDate) = '05'
      THEN salesAmount END AS maySales,
  CASE 
      WHEN strftime('%m', soldDate) = '06' 
      THEN salesAmount END AS junSales,
  CASE 
      WHEN strftime('%m', soldDate) = '07' 
      THEN salesAmount END AS julSales,
  CASE 
      WHEN strftime('%m', soldDate) = '08' 
      THEN salesAmount END AS augSales,
  CASE 
      WHEN strftime('%m', soldDate) = '09' 
      THEN salesAmount END AS sepSales,
  CASE 
      WHEN strftime('%m', soldDate) = '10' 
      THEN salesAmount END AS octSales,
  CASE 
      WHEN strftime('%m', soldDate) = '11' 
      THEN salesAmount END AS novSales,
  CASE 
      WHEN strftime('%m', soldDate) = '12' 
      THEN salesAmount END AS decSales
FROM sales s
INNER JOIN employee e
  ON s.employeeId = e.employeeId
WHERE s.soldDate >= '2021-01-01'
  AND s.soldDate < '2022-01-01'
ORDER BY e.lastName, e.firstName

SELECT e.firstName, e.lastName,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '01' 
        THEN salesAmount END) AS janSales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '02' 
        THEN salesAmount END) AS febSales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '03' 
        THEN salesAmount END) AS marSales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '04' 
        THEN salesAmount END) AS aprSales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '05' 
        THEN salesAmount END) AS maySales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '06' 
        THEN salesAmount END) AS junSales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '07' 
        THEN salesAmount END) AS julSales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '08' 
        THEN salesAmount END) AS augSales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '09' 
        THEN salesAmount END) AS sepSales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '10' 
        THEN salesAmount END) AS octSales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '11' 
        THEN salesAmount END) AS novSales,
  SUM(CASE 
        WHEN strftime('%m', soldDate) = '12' 
        THEN salesAmount END) AS decSales
FROM sales s
INNER JOIN employee e
  ON s.employeeId = e.employeeId
WHERE s.soldDate >= '2021-01-01'
  AND s.soldDate < '2022-01-01'
GROUP BY e.firstName, e.lastName
ORDER BY e.lastName, e.firstName
