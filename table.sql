create table product(
product_id int primary key auto_increment,
product_name varchar(50),
category_id int,
foreign key (category_id) REFERENCES category(category_id),
price double,
supplier_id int,
foreign key (supplier_id) references supplier(supplier_id)
);
select * from product;
insert into product(product_name,category_id,price,supplier_id)
values('Tao',1,2000,1),('Cam',1,7000,1),('Le',1,20000,2),('Oi',1,8000,2),('Dua Hau',1,30000,3),('Dua le',1,12000,3),('Ca hoi',2,85000,4),('Tom',2,180000,4),('Ghe',2,200000,4),('Muc',2,250000,5),('Ca Ngu',2,120000,6),('Thit ga',3,12000,7),('Ba chi',3,15000,7),('Xuong suon',3,9000,8),('Xuc xich',3,10000,9),('Rau muong',4,5000,10),('Rau ngot',4,7000,11),('Rau cai',4,6000,10),('Rau mong toi',4,5000,11);



create table category(
category_id int primary key auto_increment,
category_name varchar(50)
);
select * from category;
insert into category(category_name)
values('hoa qua'),('do dong lanh'),('thuc an'),('rau cu');



create table supplier(
supplier_id int primary key auto_increment,
supplier_name varchar(50)
);
select * from supplier;
insert into supplier(supplier_name)
values('Nam Do'),('Van Phuoc'),('Ngoc Loan'),('San Ha'),('ViSSan'),('Zin Food'),('MeatDeli'),('Hapro'),('Sagrifood'),('Dung Ha'),('Dac san vung mien');




create table warehousing(
warehousing_id int primary key auto_increment,
product_id int,
foreign key (product_id) REFERENCES product(product_id),
supplier_id int,
foreign key (supplier_id) REFERENCES supplier(supplier_id),
importdate date,
quantily int
);
select * from warehousing;
insert into warehousing(product_id,supplier_id,importdate,quantily)
values(1,1,'2023-01-10',20),(2,1,'2023-01-10',30),(3,2,'2023-01-11',20),(4,2,'2023-01-10',20),(5,3,'2023-01-09',15),(6,3,'2023-01-10',20),(7,4,'2023-01-10',20),(8,4,'2023-01-14',40),(9,4,'2023-01-14',15),(9,4,'2023-01-16',20),(10,5,'2023-01-10',20),(11,6,'2023-01-10',10),(12,7,'2023-01-10',20),(13,7,'2023-01-10',20),(14,8,'2023-01-11',20),(15,9,'2023-01-14',20),(16,10,'2023-01-11',20),(17,11,'2023-01-10',20),(18,10,'2023-01-10',20),(19,11,'2023-01-10',7);



create table customer(
customer_id int primary key auto_increment,
customer_name varchar(50),
customer_phone varchar(10)
);
select*from customer;
insert into customer(customer_name,customer_phone)
values('Dung','0983533447'),('Trinh','0974633782'),('Hue','0894733818'),('Trung','0985755832'),('Ngoc','0984577832'),('Thu','0898378743');



create table orders(
orders_id int primary key auto_increment,
customer_id int,
foreign key (customer_id) references customer(customer_id),
orders_date date
);
select*from orders;
insert into orders(customer_id,orders_date)
values(1,'2024-01-12'),(1,'2024-01-13'),(1,'2024-01-13'),(1,'2024-01-14'),(2,'2024-01-12'),(2,'2024-01-12')
,(2,'2024-01-14'),(3,'2024-01-11'),(4,'2024-01-15'),(5,'2024-01-12'),(5,'2024-01-21'),(6,'2024-01-11');



create table OrderDetails(
order_detail_id int primary key auto_increment,
orders_id int,
foreign key (orders_id) references orders(orders_id),
product_id int,
foreign key (product_id) references product(product_id),
quantity int
);
select*from orderdetails;
insert into orderdetails(orders_id,product_id,quantity)
values(1,5,2),(2,3,4),(3,6,2),(4,10,1),(5,8,1),(6,3,6),(7,10,2),(8,3,2),(9,5,2),(10,4,1),
(11,8,1),(12,2,1);

create table rebates(
rebates_id int primary key auto_increment,
product_id int,
foreign key (product_id) references product(product_id),
rabate decimal(5,2),
day_start date,
day_end date
);
select*from rebates;
insert into rebates(product_id,rabate,day_start,day_end)
values(1,'10.00','2024-01-26','2024-01-30'),(2,'15.00','2024-01-26','2024-01-30'),(3,'10.00','2024-01-26','2024-01-30'),
(4,'15.00','2024-01-26','2024-01-30'),(5,'10.00','2024-01-26','2024-01-30'),(6,'10.00','2024-01-26','2024-01-30'),
(7,'20.00','2024-01-26','2024-01-30'),(8,'20.00','2024-01-26','2024-01-30'),(9,'10.00','2024-01-26','2024-01-30'),
(10,'15.00','2024-01-26','2024-01-30'),(11,'15.00','2024-01-26','2024-01-30'),(12,'10.00','2024-01-26','2024-01-30'),
(13,'15.00','2024-01-26','2024-01-30');



create table stock(
product_id int,
foreign key (product_id) references product(product_id),
quantily int
);
select*from stock;
insert into stock(product_id,quantily)
values(1,10),(2,10),(3,10),(4,20),(5,15),(6,15),(7,15),(8,10),(9,15),(10,15),
(11,20),(12,15),(13,15),(14,20),(15,10),(16,12),(17,13),(18,20),(19,20);



create table rating(
rating_id int primary key auto_increment,
product_id int,
foreign key (product_id) references product(product_id),
rate varchar(1)
);
select * from rating;
insert into rating(product_id,rate)
values(1,'A'),(2,'A'),(3,'A'),(4,'A'),(5,'B'),(6,'A'),(7,'A'),(8,'B'),(9,'C'),(10,'A'),
(11,'B'),(12,'A'),(13,'B'),(14,'A'),(15,'A'),(16,'B'),(17,'A'),(18,'A'),(19,'A');