select ca.category_name,sum(od.quantity * od.unit_price) as total_sum
from categories ca
inner join products pr on ca.category_id = pr.category_id
inner join order_details od on pr.product_id = od.product_id
inner join orders o on od.order_id = o.order_id
where extract(year from order_date) = 1997
group by ca.category_name;