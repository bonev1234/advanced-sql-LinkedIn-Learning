WITH cte AS (
SELECT strftime('%Y', soldDate) AS yearSold, 
  salesAmount
FROM sales
)
SELECT yearSold, 
  FORMAT("$%.2f", sum(salesAmount)) AS totalSales
FROM cte
GROUP BY yearSold
ORDER BY yearSold
