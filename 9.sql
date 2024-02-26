select first_name, last_name
from employees
where extract(year from now()) - extract(year from birth_date) = 
(
	select max(extract(year from now()) - extract(year from birth_date))
	from employees
);