# Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.


select EmployeeUNI.unique_id, Employees.name
from Employees left join EmployeeUNI
on Employees.id = EmployeeUNI.id
