Select e.firstName,
      e.lastName,
      e.title,
      mng.firstName AS managerFName,
      mng.lastName AS managerLName
FROM employee e
INNER JOIN employee mng
    ON e.managerId = mng.employeeId
