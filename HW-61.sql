--task 1
SELECT * FROM Employees e
WHERE NOT EXISTS (SELECT 1 FROM Departments d WHERE e.id = d.manager_id);
--task 2
SELECT a.id
FROM test_a a
LEFT JOIN test_b b ON a.id = b.id
WHERE b.id IS NULL;
--task 3
select user_id, name, training_date, count(training_date) 
from training_details
join users on user_id = id
group by user_id, training_date, name 
having count(training_date) > 1
order by training_date desc; 
--task 4
select id 
from users
order by id desc
limit 1;
--task 5
select sum(positive.x) as "positive sum", 
sum(negative.x) as "negative sum" 
from (select * from "A" where x > 0) positive
full join (select * from "A" where x < 0) negative
on positive.x = negative.x;
--task 6
select customer_id, order_date, max(purchase_amount) as highest_purchase_amount
from orders group by customer_id, order_date
order by order_date;