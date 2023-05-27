SELECT cust.firstName, cust.lastName, cust.email, s.salesAmount, s.soldDate
FROM customer cust
INNER JOIN sales s
    ON cust.customerId = s.customerId
UNION

SELECT cust.firstName, cust.lastName, cust.email, s.salesAmount, s.soldDate
FROM customer cust
LEFT JOIN sales s
    ON cust.customerId = s.customerId
WHERE s.salesId IS NULL
UNION

SELECT cust.firstName, cust.lastName, cust.email, s.salesAmount, s.soldDate
FROM sales s
LEFT JOIN customer cust
    ON cust.customerId = s.customerId
WHERE cust.customerId IS NULL;