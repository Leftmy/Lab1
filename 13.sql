select distinct first_name, last_name
from employees e
inner join orders o on e.employee_id = o.employee_id
where o.ship_city like 'Madrid%';