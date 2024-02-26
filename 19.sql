select contact_name,
(
	select count(*)
	from orders o
	where cst.customer_id = o.customer_id
	group by o.customer_id	
	having count(*) > 1
)
from customers cst
where country like 'France%';