select e.city,
round(avg(extract(year from now()) - extract(year from birth_date)),0) as avg_age
from employees e
group by e.city
having avg(extract(year from now()) - extract(year from birth_date)) > 60;