# Write your MySQL query statement below
select d.name as Department,
       e.name as Employee,
       e.salary as Salary
from  Employee e inner join Department d
on e.departmentId=d.id -- only join to get department name
where e.salary = (   -- hold max salary and keep compare with every one of same dpt
    select max(e2.salary) -- find max salary from one dept -- e self join with e2
    From Employee e2
    where e2.departmentId = e.departmentId  -- slect all emp from same departmnet
);


