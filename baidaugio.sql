create database ShopManager;
use ShopManager;

create table Categories(
   category_id int primary key auto_increment,
   category_name varchar(100)
);

create table Products(
   product_id int primary key auto_increment,
   product_name varchar(100),
   price decimal(18, 2) check(price >0),
   stock int check(stock >0),
   category_id int,
   foreign key (category_id) references Categories (category_id)
);

insert into Categories (category_name)
values 
('Điện tử'),
('Thời trang');

insert into Products (product_name, price, stock, category_id)
values
('iPhone 15', 25000000, 10, 1),
('Samsung S23', 20000000, 5, 1),
('Áo sơ mi nam', 500000, 50, 2),
('Giày thể thao', 12000000, 20,2);

set SQL_SAFE_UPDATES =0;

update Products set price = 26000000
where product_name = 'iPhone 15';

update Products set stock = stock + 10;

delete from Products
where product_id = 4;

delete from Products
where price < 1000000;

select * from Products;

select * from Products 
where stock > 15;

select * from Products 
where price < 1000000 and price >25000000;

select * from Products
where product_name <> 'iPhone 15' and stock > 0;

select * from Products
where category_id <> 1 and price > 500000;