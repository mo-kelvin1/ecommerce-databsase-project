use ecommerce;
create table payments(
	payment_id int primary key,
    order_id int,
    payment_date date not null,
    amount decimal(10,2),
    foreign key(order_id) references orders(order_id)
);