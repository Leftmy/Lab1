select cu.country as customer_country, sum(o.freight) as total_sum
from customers cu
inner join orders o on cu.customer_id = o.customer_id
group by cu.country
order by cu.country;