-- Write a solution to report the name and bonus amount of each employee who satisfies either of the following:
-- The employee has a bonus less than 1000.
-- The employee did not get any bonus.

select Employee.name, Bonus.bonus 
from Employee left join Bonus
on Employee.empId = Bonus.empId
where Bonus < 1000 or Bonus is null
