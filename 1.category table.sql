create database ecommerce;
use ecommerce;

create table category(
	category_id int primary key,
    category_name varchar(50) not null,
    category_description varchar(300) 
);
