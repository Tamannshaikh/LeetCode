# Write your MySQL query statement below
select customer_number 
    from Orders
    group by customer_number -- group karo customer numbers ko
    order by count(*) desc   -- count karo ek customer 
                               -- number kitne bar aya
    limit 1 ; -- top 1st ko slect karo
