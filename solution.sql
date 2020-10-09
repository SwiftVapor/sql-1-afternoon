1
create table person (
  person_id serial primary key,
  name text,
  age integer,
  height integer,
  city text,
  favorite_color text
  );

2
insert into person(name, age, height, city, favorite_color) values
('Jeff', 12, 75, 'New york', 'Bue'),
('Kevin', 20, 150, 'Salt Lake', 'Red'),
('Jimmy', 30, 170, 'Denver', 'White'),
('Bubby', 35, 130, 'Tokyo', 'Green'),
('Spubby', 50, 150, 'San Fransico', 'Yellow');

3
select * from person order by height desc;

4
select * from person order by height asc;

5
select * from person order by age desc;

6
select * from person 
where age > 20;

7
select * from person 
where age = 18;

8
select * from person 
where age < 20 or age > 30;

9
select * from person 
where age != 27;

10
select * from person 
where favorite_color != 'Red';

11
select * from person 
where favorite_color != 'Red' and favorite_color != 'Blue';

12
select * from person 
where favorite_color = 'Orange' or favorite_color = 'Green';

13
select * from person 
where favorite_color = 'Orange' 
or favorite_color = 'Green' 
or favorite_color = 'Blue';
-- using in
select * from person 
where favorite_color in ('Orange','Green','Blue');

14
select * from person 
where favorite_color in ('Yellow', 'Purple');

Table Orders

1
create table orders (
  order_id serial primary key,
  person_id integer,
  product_name text,
  product_price integer,
  quantity integer);

2
insert into orders (person_id, product_name, product_price, quantity) 
values
  (1, 'Mcdouble', 2.00, 3),
  (1, 'Large Drink', 1.00, 2),
  (2, 'Quarter Pounder', 3.00, 1),
  (3, 'Mc Flurry', 2.00, 2),
  (4, 'Mcdouble', 2.00, 2);

3
select * from orders;

4
select sum(quantity) from orders;

5
select sum(quantity * product_price) from orders;

6
select sum(quantity * product_price) from orders 
where person_id = 1;

Table - 

1
insert into artist (name) values
('Jeff'),
('Kevein'),
('Geoff');

2
select * from artist
order by name desc limit 10;

3
select * from artist
order by name asc limit 5;

4
select * from artist
where name like 'Black%';

5
select * from artist
where name like '%Black%';

Table employee

1
select first_name, last_name from employee
where city = 'Calgary';

2
select max(birth_date) from employee;

3
select min(birth_date) from employee;

4
-- To find Nancy's id
select * from employee
where first_name = 'Nancy' and last_name = 'Edwards';
-- To find all her underlings
select * from employee
where reports_to = 2;

5
select count(*) from employee
where city = 'Lethbridge';

Table- invoice

1
select count(*) from invoice
where billing_country = 'USA'

2
select max(total) from invoice

3
select min(total) from invoice

4
select * from invoice 
where total > 5;

5
select count(*) from invoice 
where total < 5;

6
select count(*) from invoice
where billing_state in ('CA', 'TX', 'AZ');

7
select avg(total) from invoice;

8
select sum(total) from invoice;