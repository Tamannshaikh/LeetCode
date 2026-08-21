# Write your MySQL query statement below
select player_id, min(event_date) as first_login
from Activity 
group by player_id;

-- automaticall take fisrt login in min funcation
-- group by clause will take only one time player_id one each player to group