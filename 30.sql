select distinct city
from employees
where city in
(
	select city
	from customers
	where city in
	(
		select ship_city
		from orders
	)
)