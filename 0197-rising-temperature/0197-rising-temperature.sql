# Write your MySQL query statement below
select w.id from Weather w inner join Weather w1
on datediff(w.recordDate, w1.recordDate) = 1 
where w.temperature > w1.temperature;

-- datediff() this funcation is use to kept difference between date 
-- = 1 mean 1 day difference