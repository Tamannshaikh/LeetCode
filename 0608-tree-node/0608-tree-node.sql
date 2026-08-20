# Write your MySQL query statement below
-- leaf node = p_id(2)
-- inner node = p_id(1)
-- root node = p_id(null)

-- 1 root node
-- 2 inner node
-- 3,4,5 leaf node

select id, 
case
 when p_id is null then 'Root'
 when id in(select p_id from tree) then 'Inner'
 else 'Leaf'
end as type
from Tree;