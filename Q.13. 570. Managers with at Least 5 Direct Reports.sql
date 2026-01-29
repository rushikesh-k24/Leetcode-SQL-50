-- Write a solution to find managers with at least five direct reports.

select e1.name
from Employee as e1 INNER JOIN
Employee as e2 
on e1.id = e2.managerId 
group by e2.managerId
having count(e2.managerId) >= 5
