# Write your MySQL query statement below
select ei.unique_id, e.name
from Employees as e
LEFT JOIN EmployeeUNI as ei
ON e.id = ei.id;