select contact_name, count(*)
from customers cstmr
inner join orders o on cstmr.customer_id = o.customer_id
where cstmr.country like 'France%'
group by contact_name;