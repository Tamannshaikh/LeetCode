# Write your MySQL query statement below

-- Triangle Inequality Rules or Property
-- where l+𝑏>h , l+h>b, h+b>l can make a triangle
-- if (l + b = h) or (l+b<h) then Fails to make a triangle

select x,y,z, 
case
when x+y>z and x+z>y and y+z>x
then 'Yes'
else 'No'
end as triangle
from Triangle;