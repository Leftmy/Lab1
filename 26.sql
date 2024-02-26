select cu.company_name as customer_name, cu.country as customer_country,
(
	select sum(od.unit_price * od.quantity)
	from order_details od, orders o, products pr, suppliers s
	where cu.customer_id = o.customer_id
	and o.order_id = od.order_id
	and od.product_id =  pr.product_id
	and pr.supplier_id = s.supplier_id
	and cu.country = s.country
) as domestic_sum,
s.country as supplier_country,
(
	select sum(od.unit_price * od.quantity)
	from order_details od, orders o, products pr, suppliers s
	where cu.customer_id = o.customer_id
	and o.order_id = od.order_id
	and od.product_id =  pr.product_id
	and pr.supplier_id = s.supplier_id
	and cu.country <> s.country
) as non_domestic_sum
from customers cu, suppliers s
order by cu.company_name;
