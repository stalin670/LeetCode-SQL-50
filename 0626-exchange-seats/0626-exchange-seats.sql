# Write your MySQL query statement below


select if(id = (select max(id) from Seat) and id mod 2 = 1, id, 
if(id mod 2 = 1, id + 1, id - 1))
as id, student
from Seat
order by id;