# Write your MySQL query statement below
select d.name as Department,
e.name as Employee,
e.salary as Salary
from Employee e inner join Department d
on e.departmentId = d.id 
where 3 > ( -- 0 1 2 therefore 3 > as 3>3 wrong count stop
    select count(distinct e1.salary) 
    from Employee e1 
    where e1.departmentId = e.departmentId
    and e1.salary > e.salary); 
