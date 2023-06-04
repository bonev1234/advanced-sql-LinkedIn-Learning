SELECT e.firstName, e.lastName, mdl.model, s.salesId
FROM sales s
INNER JOIN employee e
  ON s.employeeId = e.employeeId
INNER JOIN model mdl
  ON mdl.modelId = inv.modelId
INNER JOIN inventory inv
  ON inv.inventoryId = s.inventoryId

SELECT e.firstName, e.lastName, mdl.model,
  count(model) AS numberSold
FROM sales s
INNER JOIN employee e
  ON s.employeeId = e.employeeId
INNER JOIN inventory inv
  ON inv.inventoryId = s.inventoryId
INNER JOIN model mdl
  ON mdl.modelId = inv.modelId
GROUP BY e.firstName, e.lastName, mdl.model

SELECT e.firstName, e.lastName, mdl.model,
  count(model) AS numberSold,
  rank() OVER (PARTITION BY s.employeeId 
              ORDER BY count(model)desc) AS Rank
FROM sales s
INNER JOIN employee e
  ON s.employeeId = e.employeeId
INNER JOIN inventory inv
  ON inv.inventoryId = s.inventoryId
INNER JOIN model mdl
  ON mdl.modelId = inv.modelId
GROUP BY e.firstName, e.lastName, mdl.model
