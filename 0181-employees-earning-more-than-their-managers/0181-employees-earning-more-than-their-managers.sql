# Write your MySQL query statement below
select e1.name as Employee 
from Employee e1 inner join Employee e2 
on e1.managerId = e2.id 
where e1.salary > e2.salary;

-- e1 employee
-- e2 manager
-- employee.managerId = manager.id
-- employee.salary > manager.salary