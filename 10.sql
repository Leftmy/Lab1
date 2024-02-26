select first_name, last_name, extract(year from now()) - extract(year from birth_date)
from employees
order by extract(year from now()) - extract(year from birth_date) desc
limit 3;