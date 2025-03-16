create table products(
	product_id int primary key,
    product_name varchar(50) not null,
    price decimal(10,2) not null,
    category_id int,
    foreign key(category_id) references category(category_id)
);