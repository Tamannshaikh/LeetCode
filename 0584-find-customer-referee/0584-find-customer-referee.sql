# Write your MySQL query statement below
select c.name from Customer c left join Customer c1
on c.id = c1.id
where c1.referee_id != 2 
or c1.referee_id is null;