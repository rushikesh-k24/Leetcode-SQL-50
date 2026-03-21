# Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits

SELECT project_id, Round(AVG(e.experience_years),2) as average_years
From Project p left join Employee e
on p.employee_id = e.employee_id
Group by project_id
