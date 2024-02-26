select one.first_name, one.last_name, two.first_name, two.last_name
from employees one 
left join employees two on two.employee_id = one.reports_to