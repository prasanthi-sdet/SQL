use Prasanthi_activities;


select * from customers;
select * from salesman;
select * from orders;


select customer_id, customer_name from customers a
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id)
UNION
SELECT salesman_id, name FROM salesman a
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id)
ORDER BY customer_name;

select s.salesman_id, s.name, o.order_no, o.order_date, 'highest on' from salesman s, orders o where s.salesman_id=o.salesman_id and o.purchase_amount=(select max(purchase_amount) from orders where order_date=o.order_date)
UNION
select s.salesman_id, s.name, o.order_no, o.order_date, 'lowest on' from salesman s, orders o where s.salesman_id=o.salesman_id and o.purchase_amount=(select min(purchase_amount) from orders where order_date=o.order_date);
