# Write your MySQL query statement below

# Easy one
select * 
from Cinema as c
where c.id & 1 = 1 and c.description <> "boring"
order by c.rating desc;