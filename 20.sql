select contact_name
from customers cu
where cu.customer_id in (
	select distinct  customers.customer_id
	from customers
	inner join orders o on customers.customer_id = o.customer_id
	inner join order_details od on o.order_id = od.order_id
	inner join products pr on pr.product_id = od.product_id
	where pr.product_name like 'Tofu%'
);