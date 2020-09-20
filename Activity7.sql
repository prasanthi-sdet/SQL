use Prasanthi_activities;

desc orders;

select * from orders;

select sum(purchase_amount) as total from orders;

select avg(purchase_amount) as average from orders;

select max(purchase_amount) as max_purchase_amount from orders;

select min(purchase_amount) as min_purchase_amount from orders;

select count(distinct salesman_id) as count from orders;
