CREATE TABLE Two_wheeler (
  TW_id SERIAL PRIMARY KEY,
  bike_model VARCHAR(50),
   Engine_type VARCHAR(50),
   model_type varchar (50),
   color VARCHAR(50),
   model_year INT,
   mileage_KM INT,
   price INT,
   stock INT,
   discount INT
  )

	INSERT INTO Two_wheeler (bike_model, Engine_type, model_type, color, model_year, mileage_KM, price, stock, discount) 
VALUES 
('Honda Activa', 'Petrol', 'Scooter', 'Red', 2023, 50, 75000, 10, 5),
('Bajaj Pulsar', 'Petrol', 'Sports', 'Blue', 2022, 45, 90000, 15, 10),
('Suzuki Access', 'Petrol', 'Scooter', 'White', 2024, 55, 80000, 8, 8),
('Royal Enfield Classic', 'Petrol', 'Cruiser', 'Black', 2023, 40, 150000, 5, 15),
('TVS Apache', 'Petrol', 'Sports', 'Black', 2024, 48, 95000, 12, 10),
('Hero Splendor', 'Petrol', 'Commute', 'Blue', 2022, 60, 65000, 20, 5),
('Yamaha FZ', 'Petrol', 'Sports', 'Red', 2023, 52, 100000, 10, 10),
('KTM Duke', 'Petrol', 'Sports', 'Orange', 2024, 47, 110000, 15, 10),
('Harley Davidson Street', 'Petrol', 'Cruiser', 'Black', 2023, 35, 200000, 5, 20),
('Vespa SXL', 'Petrol', 'Scooter', 'White', 2022, 55, 85000, 10, 5),
('BMW S1000RR', 'Petrol', 'Sports', 'Blue', 2024, 45, 180000, 8, 15),
('Aprilia SR 150', 'Petrol', 'Scooter', 'Red', 2023, 50, 95000, 12, 10),
('Ducati Panigale V4', 'Petrol', 'Sports', 'Black', 2022, 40, 220000, 5, 20),
('Kawasaki Ninja', 'Petrol', 'Sports', 'Green', 2024, 48, 200000, 10, 15),
('Benelli TNT 600i', 'Petrol', 'Sports', 'White', 2023, 45, 150000, 15, 10),
('Triumph Bonneville', 'Petrol', 'Cruiser', 'Black', 2022, 38, 180000, 8, 20),
('Moto Guzzi V85', 'Petrol', 'Cruiser', 'Red', 2024, 42, 190000, 10, 15),
('Indian Scout', 'Petrol', 'Cruiser', 'Blue', 2023, 37, 210000, 12, 10),
('Kymco Agility', 'Electric', 'Scooter', 'White', 2024, 65, 80000, 8, 10),
('Zero SR', 'Electric', 'Sports', 'Black', 2023, 70, 120000, 5, 15)

select * from Two_wheeler



CREATE TABLE customer (
   cus_id SERIAL PRIMARY KEY,
   customer_name VARCHAR(50),
   gender CHAR(1),
   city VARCHAR(50),
   state VARCHAR(50),
   pincode VARCHAR(50),
   TW_id int,
   FOREIGN KEY (TW_id) REFERENCES Two_wheeler(Tw_id)
   )

	INSERT INTO customer (customer_name, gender, city, state, pincode, TW_id)
VALUES
('John Doe', 'M', 'New York', 'NY', '10001', 1),
('Jane Smith', 'F', 'Los Angeles', 'CA', '90001', 2),
('Michael Johnson', 'M', 'Chicago', 'IL', '60601', 3),
('Emily Williams', 'F', 'Houston', 'TX', '77001', 4),
('William Brown', 'M', 'Phoenix', 'AZ', '85001', 5),
('Emma Jones', 'F', 'Philadelphia', 'PA', '19101', 6),
('James Miller', 'M', 'San Antonio', 'TX', '78201', 7),
('Olivia Davis', 'F', 'San Diego', 'CA', '92101', 8),
('Alexander Wilson', 'M', 'Dallas', 'TX', '75201', 9),
('Sophia Martinez', 'F', 'San Jose', 'CA', '95101', 10),
('Daniel Anderson', 'M', 'Austin', 'TX', '78701', 11),
('Ava Taylor', 'F', 'Jacksonville', 'FL', '32201', 12),
('Matthew Thomas', 'M', 'Fort Worth', 'TX', '76101', 13),
('Isabella Hernandez', 'F', 'Columbus', 'OH', '43201', 14),
('Ethan Moore', 'M', 'San Francisco', 'CA', '94101', 15),
('Mia Martin', 'F', 'Charlotte', 'NC', '28201', 16),
('David Lee', 'M', 'Indianapolis', 'IN', '46201', 17),
('Charlotte Clark', 'F', 'Seattle', 'WA', '98101', 18),
('Christopher Rodriguez', 'M', 'Denver', 'CO', '80201', 19),
('Sofia Lewis', 'F', 'Washington', 'DC', '20001', 20)

select * from customer
  


CREATE TABLE company (
  com_id SERIAL PRIMARY KEY,
  bike_manufacture_company VARCHAR(50),
   bike_maker VARCHAR(50),
   bike_model VARCHAR(50),
  TW_id int,
   FOREIGN KEY (TW_id) REFERENCES Two_wheeler(Tw_id)
  )
INSERT INTO company (bike_manufacture_company, bike_maker, bike_model, Tw_id)
VALUES
('Honda', 'Honda', 'Honda Activa', 1),
('Bajaj', 'Bajaj', 'Bajaj Pulsar', 2),
('Suzuki', 'Suzuki', 'Suzuki Access', 3),
('Royal Enfield', 'Royal Enfield', 'Royal Enfield Classic', 4),
('TVS', 'TVS', 'TVS Apache', 5),
('Hero', 'Hero', 'Hero Splendor', 6),
('Yamaha', 'Yamaha', 'Yamaha FZ', 7),
('KTM', 'KTM', 'KTM Duke', 8),
('Harley Davidson', 'Harley Davidson', 'Harley Davidson Street', 9),
('Vespa', 'Vespa', 'Vespa SXL', 10),
('BMW', 'BMW', 'BMW S1000RR', 11),
('Aprilia', 'Aprilia', 'Aprilia SR 150', 12),
('Ducati', 'Ducati', 'Ducati Panigale V4', 13),
('Kawasaki', 'Kawasaki', 'Kawasaki Ninja', 14),
('Benelli', 'Benelli', 'Benelli TNT',15)

select * from company
select * from customer
select * from Two_wheeler


1)----using  having, group by, order by

select  bike_model,sum(price) as " sum of price" from Two_wheeler
group by bike_model

select  bike_model,sum(price) as " sum of price" from Two_wheeler
group by bike_model
order by sum(price)

select  bike_model,sum(price) as " sum of price" from Two_wheeler
group by bike_model
having  sum(price)>200000
order by sum(price)
	
2)---- using join,having,group by
	
select * from Two_wheeler
inner join customer
on Two_wheeler.tw_id = customer.cus_id
group by city
having sum(price)>20

3)----Window Function 

select bike_model,model_type, sum(price)
over()
as sum_window, price,stock,discount
from Two_wheeler

select bike_model,model_type, avg(price)
over()
as avg_window ,model_year,mileage_km
from Two_wheeler 

select model_type,color,avg(price)
over( partition by color
)
as avg_window,price,discount,stock
from Two_wheeler

4)-----Subquery

select * from Two_wheeler
select * from customer
select * from company

select * from Two_wheeler where price >100000

select * from Two_wheeler where tw_id in (
select distinct tw_id from Two_wheeler where price > 100000
)

select * from customer as c
left join Two_wheeler as t
on c.cus_id = t.tw_id

select * from Two_wheeler where 
model_year = '2024'
and
engine_type = 'Petrol'

5)-----Join with Where 

select * from customer as c
left join Two_wheeler as t
on c.cus_id = t.tw_id
where 
model_year = '2024'
and
engine_type = 'Petrol'

select * from customer where cus_id in(
	select tw_id from Two_wheeler where
	model_year = '2023'
	and 
	model_type = 'Sports'
	and
	stock > 5
)

6)----- 3 Table join

select * from customer as c
inner join Two_wheeler as t
on c.cus_id = t.tw_id
inner join company as m
on c.cus_id = m.com_id

7)----- Create a new table using select query

1)CREATE TABLE Two_wheeler (
  TW_id SERIAL PRIMARY KEY,
  bike_model VARCHAR(50),
   Engine_type VARCHAR(50),
   model_type varchar (50),
   color VARCHAR(50),
   model_year INT,
   mileage_KM INT,
   price INT,
   stock INT,
   discount INT
  )

2)CREATE TABLE customer (
   cus_id SERIAL PRIMARY KEY,
   customer_name VARCHAR(50),
   gender CHAR(1),
   city VARCHAR(50),
   state VARCHAR(50),
   pincode VARCHAR(50),
   TW_id int,
   FOREIGN KEY (TW_id) REFERENCES Two_wheeler(Tw_id)
   )

3) CREATE TABLE company (
  com_id SERIAL PRIMARY KEY,
  bike_manufacture_company VARCHAR(50),
   bike_maker VARCHAR(50),
   bike_model VARCHAR(50),
  TW_id int,
   FOREIGN KEY (TW_id) REFERENCES Two_wheeler(Tw_id)
  )









 


