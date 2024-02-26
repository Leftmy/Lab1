select max(extract(year from now()) - extract(year from birth_date)) as max_age,
min(extract(year from now()) - extract(year from birth_date)) as min_age,
round(avg(extract(year from now()) - extract(year from birth_date)),0) as avg_age
from employees
where city like 'London%';