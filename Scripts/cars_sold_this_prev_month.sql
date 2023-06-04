SELECT strftime('%m', soldDate) AS soldMonth,
  COUNT(*) AS numCarsSold,
  LAG (COUNT(*), 1, 0 ) OVER calcMonth AS LastMonthCarsSold
FROM sales
GROUP BY strftime('%m', soldDate)
WINDOW calcMonth AS (ORDER BY strftime('%m', soldDate))
ORDER BY strftime('%m', soldDate)