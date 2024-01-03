select SUBSTRING(phone FROM 1 FOR 3) as prefixes from car_owners where city = 'city1';
select * from models where ((CAST(engine_power AS DECIMAL) / CAST(engine_capacity AS DECIMAL)) * 100) > 6;
select name, phone from car_owners where extract(month from birth_date) = 12;
select number, model_name,  model_year from cars where kilometers > 5000 and state = 'good';
select car_number, date from trade_deals where extract(month from date) > 2 and extract(month from date) < 6;