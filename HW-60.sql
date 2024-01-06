-- task 1
select distinct model_name from cars
where owner_id in (select id from car_owners
where extract(year from age(birth_date)) > 
1.1 * (select avg(extract(year from age(birth_date))) from car_owners)
);
-- task 2
select name from car_owners where id in(select owner_id from cars where model_name in 
(select name from models where engine_capacity = 
(select max(engine_capacity) from models)));
-- task 3
select model_name, count(*) as models_count
from cars group by model_name order by models_count desc limit 2; 
-- task 4
select model_name, count(distinct color) from cars group by model_name having count(*)>=2;
-- task 5
SELECT
    (FLOOR(EXTRACT(YEAR FROM AGE(NOW(), birth_date)) / 10) * 10) AS min_interval,
    (FLOOR(EXTRACT(YEAR FROM AGE(NOW(), birth_date)) / 10) * 10 + 10) AS max_interval,
    COUNT(*) AS amount
FROM car_owners
GROUP BY min_interval, max_interval
ORDER BY min_interval;
