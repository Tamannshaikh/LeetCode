# Write your MySQL query statement below
select score, 
dense_rank() over(order by score desc) as 'rank' 
from Scores;

-- rank() : use hota hai jab skip hua to cahlega 
-- eg: 1 2 2 4 4 6  (3 and 5 is skip because 2 and 4 are repeated)

-- dense_rank() : use hota hai taki koi rank skip na ho 
-- eg: 1 2 2 3 4 4 5 