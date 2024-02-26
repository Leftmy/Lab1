select first_name, last_name, count(*)
from employees e
left join orders o on e.employee_id = o.employee_id
where extract(year from o.order_date) = 1997
group by first_name, last_name;