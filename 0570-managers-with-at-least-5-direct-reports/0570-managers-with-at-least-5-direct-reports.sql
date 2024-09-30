# Write your MySQL query statement below

select e.name 
from Employee as e 
join Employee as p
on e.id = p.managerId
group by e.id, e.name
having count(p.id) >= 5;