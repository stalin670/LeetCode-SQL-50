# Write your MySQL query statement below



SELECT 
    round(sum(if(order_date = customer_pref_delivery_date, 1, 0)) / count(*) * 100, 2) as immediate_percentage
from 
    (select customer_id, order_date, customer_pref_delivery_date
     from Delivery
     where (customer_id, order_date) IN 
           (select customer_id, min(order_date)
            from Delivery
            group by customer_id)
    ) as first_orders;
