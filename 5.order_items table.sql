create table order_items(
	order_item_id integer primary key,
    order_id int,
    product_id int,
    quantity int not null,
    price decimal(10,2) not null,
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references products(product_id)
);