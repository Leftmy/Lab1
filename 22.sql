select distinct cu.contact_name
from customers cu
left join orders o on cu.customer_id = o.customer_id
inner join order_details od on o.order_id = od.order_id
inner join products pr on pr.product_id = od.product_id
inner join suppliers s on pr.supplier_id = s.supplier_id
where cu.country like 'France%' and s.country not like 'France%';