# Write your MySQL query statement below

select * from Cinema 
where id%2!=0  -- odd numbers id's are 1, 3 and 5
and description != "boring" -- but 3 is boring that's why we remove it
order by rating desc; -- and we want id's in descending order of ratings 

