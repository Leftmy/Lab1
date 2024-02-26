select distinct pr.product_name, pr.unit_price as hist_price, od.unit_price as current_price
from products pr
left join order_details od on pr.product_id = od.product_id;