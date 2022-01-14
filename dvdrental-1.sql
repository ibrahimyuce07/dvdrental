--1:
    select title, description from film;
--2:
    select * from film where length between 60 and 75;
--3:
    select * from film where rental_rate = 0.99 and replacement_cost between 12.99 and 28.99;
--4:
    select last_name from customer where first_name = 'Mary';
--5:
    select * from film where length <= 50 and rental_rate not in (2.99, 4.99);
