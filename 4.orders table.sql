use ecommerce;
create table orders(
	order_id int primary key,
    customer_id int,
    order_date date not null,
    status varchar(20) not null,
    constraint or_customerid foreign key(customer_id) references customers(customer_id)
);