# Write your MySQL query statement below
delete p1 from Person p1 join Person p2
on p1.email=p2.email 
and p1.id>p2.id; -- p1.3 > p2.1 delete 

-- compare p1 table with p2 table

-- p1 (1)email  = p2 (1)email 
-- p1 id =1 !> p2 id=1

-- p1 (2,email)  != p2 (1,email) 

-- p1 (3,email)  = p2 (1,email) 
-- p1 id =3 > p2 id=1  and means both sholud satisfied 