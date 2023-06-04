-- query for obtaining all electric model names
SELECT model
FROM model
WHERE EngineType = 'Electric';

-- model names are also added to the table so the info can be verified easily

SELECT s.soldDate, s.salesAmount, inv.colour, inv.year, mdl.model
FROM sales s
INNER JOIN inventory inv
  ON s.inventoryId = inv.inventoryId
INNER JOIN model mdl
  ON mdl.modelId = inv.modelId
WHERE inv.modelId IN (
  SELECT modelId
  FROM model
  WHERE EngineType = 'Electric'
)