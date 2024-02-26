select first_name, last_name,
(
	select count(*)
	from orders o
	where o.employee_id = employees.employee_id and extract(year from order_date) = 1997
)
from employees;