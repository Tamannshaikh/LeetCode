-- with is keyword create a vertual table named as daily 
-- In which "one row" is for "one date" and it's total amount earn in that day
-- eg: 10 jan = 130+150=280
with daily as ( 
    select visited_on, 
          sum(amount) as amount
    from Customer
    group by visited_on
)
select d1.visited_on, -- d1 se date
       sum(d2.amount) as amount, -- d2 se amount
       round(sum(d2.amount)/7,2) as average_amount -- formula of avg under round() 2 is ko rounding up numbers after point till 2 digits
from daily d1 inner join daily d2
on d2.visited_on between date_sub(d1.visited_on, interval 6 day ) and d1.visited_on
-- eg:d2.vo=(1,2,3,4,5,6,7)dates     7 jan - 6 days =(1 jan)         d1.vo= 7 jan
group by d1.visited_on -- group by dates from daily d1 table jaha sari dates hai
having count(*)=7 -- only 7 days
order by d1.visited_on; -- dates should be in proper asc oredr