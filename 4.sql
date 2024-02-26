select first_name, last_name, extract(year from now()) - extract(year from birth_date) as age
from employees
where extract(year from now()) - extract(year from birth_date) > 55;