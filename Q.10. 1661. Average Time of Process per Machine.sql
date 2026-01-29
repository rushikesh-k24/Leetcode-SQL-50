# There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.


select t1.machine_id, 
round(AVG(t2.timestamp - t1.timestamp), 3) as processing_time
from Activity as t1, Activity as t2
where t1.activity_type = "Start"
and t2.activity_type = "End"
and t1.machine_id = t2.machine_id

group by machine_id
