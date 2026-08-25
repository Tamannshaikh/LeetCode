# Write your MySQL query statement below
select p.product_id, 
round( 
    COALESCE( -- Agar value NULL hai, toh alternative value do.
      -- (5×100)+(20×15)=800      100+15 =115, 200+30=230
      sum(p.price*u.units) / sum(u.units),0
      
    ), 2 -- round up numbers after points into 2 numbers only
 ) as average_price
from Prices p left join UnitsSold u
on p.product_id = u.product_id
and u.purchase_date 
-- purchase date should be between start and and end date of perticular price 
-- of a product
between p.start_date and p.end_date 
group by p.product_id; 


-- FROM
-- ↓
-- LEFT JOIN + ON UnitsSold + ON condition
-- ↓
-- GROUP BY product_id
-- ↓
-- SUM calculations
-- ↓
-- COALESCE
-- ↓
-- ROUND
-- ↓
-- OUTPUT