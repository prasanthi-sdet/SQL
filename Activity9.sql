use Prasanthi_activities;

-- Create the customers table
create table customers (
    customer_id int primary key, customer_name varchar(32),
    city varchar(20), grade int, salesman_id int);

-- Insert values into it
insert into customers values 
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

select s.name,c.customer_name from salesman s inner join customers c on s.salesman_id=c.salesman_id;
select * from customers;
select * from salesman;
select * from orders;

select c.customer_name, c.grade, s.name as Salesman from customers c left outer join salesman s on s.salesman_id=c.salesman_id and c.grade<300 order by c.grade asc;

select s.name as Salesman,c.customer_name,s.commission from salesman s inner join customers c on s.salesman_id=c.salesman_id and s.commission>12;

select o.order_no, o.order_date, o.purchase_amount, s.name as Salesman,c.customer_name,s.commission from salesman s inner join customers c inner join orders o on s.salesman_id=c.salesman_id and s.salesman_id=o.salesman_id and c.customer_id=o.customer_id;
