create database if not exists sales_manager;
use sales_manager;

create table customer (
  customer_id int auto_increment primary key, 
  customer_name varchar(40), 
  age int
);

create table `order`(
  order_id int auto_increment primary key, 
  customer_id int, 
  order_date datetime, 
  order_total_price double, 
  foreign key (customer_id) references customer(customer_id)
);

create table product(
  product_id int auto_increment primary key, 
  product_name varchar(40), 
  product_price double
);

create table orderdetail (
  product_id int, 
  order_id int,
  orderdetail_QTY int,
  foreign key (product_id) references product(product_id), 
  foreign key (order_id) references `order`(order_id)
);