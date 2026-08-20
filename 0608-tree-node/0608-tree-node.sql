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
 when id in(select p_id from tree) then 'Inner' -- jab id kise p_id ke undar ho 
 else 'Leaf'                                    -- eg: id = 1 is p_id of id 2
end as type
from Tree;