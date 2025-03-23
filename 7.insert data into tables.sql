use ecommerce;
-- inserting data into the tables created in the previous sql queries

insert into category
values(1,'Electronics','Device and gadgets'),
	(2,'Books', 'Printed and digital books'),
    (3, 'Clothing','Apparel and accessories');

insert into products
values(1,'Laptop',1000.00,1),
	(2,'Smartphone',500.00,1),
    (3,'T-Shirt',20.00,3),
    (4,'Novel',15.00,2);
    
insert into customers
values(1,'John Doe', 'john@example.com'),
	(2,'Jane Smith', 'jane@example.com');
    
insert into orders
values(1,1,'2025-01-15','Paid'),
	(2,2,'2025-01-20','Unpaid');
    
insert into order_items
values(1,1,1,1,1000.00),
	(2,1,4,2,30.00),
    (3,1,2,2,500.00);
    
insert into payments
values(1,1,'2025-02-15',1060.00);






