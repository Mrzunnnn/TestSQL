-- lấy ra loại hàng được đặt nhiều nhất

select product_name,sum(orderdetails.quantily) as total_quantily
from product
inner join orderdetails on product.product_id = orderdetails.product_id
group by product_name
order by total_quantily desc
limit 1;

-- lấy ra người mua hàng nhiều nhất

select customer_name,count(orders.orders_id) as Luot_mua
from customer
inner join orders on customer.customer_id = orders.customer_id
group by customer_name
order by Luot_mua desc
limit 1;


-- lấy ra mặt hàng có rating A

select product_name
from product
inner join rating on product.product_id = rating.product_id
where rate = 'A';

-- lấy ra các mặt hàng được nhập cụ thể ở 1 ngày

select product_name,warehousing.importdate
from product
inner join warehousing on product.product_id = warehousing.product_id
where importdate = '2023-01-10';

-- lấy ra mặt hàng đắt nhất 

select product_name, product.price
from product
order by price desc
limit 1;

