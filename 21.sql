select contact_name, count(o.order_id) as total_amount, pr.unit_price * count(o.order_id) as tota_sum
from customers cu
inner join orders o on cu.customer_id = o.customer_id
inner join order_details od on o.order_id = od.order_id
inner join products pr on pr.product_id = od.product_id
where pr.product_name like 'Tofu%'
group by contact_name, pr.unit_price;