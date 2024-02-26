select customers.contact_name
from customers
inner join orders on orders.customer_id = customers.customer_id
inner join order_details on orders.order_id = order_details.order_id
inner join products on order_details.product_id = products.product_id
inner join suppliers on suppliers.supplier_id = products.supplier_id
where customers.country like 'France%' and suppliers.country not like 'France%'
group by customers.contact_name;