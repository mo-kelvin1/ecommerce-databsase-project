-- this sql query contains basic query examples on the previously created tables

-- showing the total sales by products
select products.product_name, sum(order_items.quantity* order_items.price) as total_sales
from order_items 
join products on order_items.product_id=products.product_id
group by products.product_name;

-- showing the number of orders by customers
select customers.customer_name, count(orders.order_id) as total_orders
from orders
join customers on orders.customer_id=customers.customer_id
group by customers.customer_name;

-- showing the payments received by each order
select  orders.order_id, sum(payments.amount) as total_payments
from payments
join orders on payments.order_id=orders.order_id
group by orders.order_id;

-- showing unpaid orders by customers
select customers.customer_name,orders.order_date, orders.order_id,orders.status
from orders
join customers on customers.customer_id=orders.customer_id
where orders.status='Unpaid';

-- showing the revenue by category
select category.category_name,sum(order_items.quantity*order_items.price) as total_revenue
from order_items
join products on products.product_id=order_items.product_id
join category on category.category_id=products.category_id
group by category.category_name;
