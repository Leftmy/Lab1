select first_name, last_name, birth_date
from employees
where extract(month from now()) = extract(month from birth_date);