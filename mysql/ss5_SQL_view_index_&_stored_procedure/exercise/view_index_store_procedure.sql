create
database if not exists demo;

use
demo;

create table products
(
    id                  int auto_increment primary key,
    product_code        varchar(10),
    product_name        varchar(50),
    product_price       double,
    product_amount      int,
    product_description varchar(50),
    product_status      tinyint
);

insert into products(product_code, product_name, product_price, product_amount, product_description, product_status)
values (001, 'iphone 5', 15000000, 100, 'sản phẩm của aple', 1),
       (002, 'iphone 6', 13000000, 20, 'sản phẩm của aple', 1),
       (003, 'iphone 7', 13500000, 40, 'sản phẩm của aple', 1),
       (003, 'iphone 8', 14700000, 110, 'sản phẩm của aple', 0),
       (004, 'iphone 9', 15600000, 50, 'sản phẩm của aple', 1),
       (005, 'iphone x', 16800000, 23, 'sản phẩm của aple', 1),
       (006, 'iphone 11', 1800000, 27, 'sản phẩm của aple', 0),
       (007, 'iphone 12', 19000000, 70, 'sản phẩm của aple', 1),
       (008, 'iphone 13', 20000000, 60, 'sản phẩm của aple', 1),
       (01, 'samsung 1', 20000000, 20, 'sản phẩm của samsung', 1),
       (01, 'samsung 15', 20000000, 10, 'sản phẩm của samsung', 1),
       (01, 'samsung 1', 20000000, 30, 'sản phẩm của samsung', 1),
       (013, 'samsung 12', 20000000, 40, 'sản phẩm của samsung', 1),
       (01, 'samsung 13', 20000000, 60, 'sản phẩm của samsung', 1),
       (017, 'samsung 12', 20000000, 70, 'sản phẩm của samsung', 1),
       (018, 'samsung 7', 20000000, 90, 'sản phẩm của samsung', 1),
       (019, 'sony x', 20000000, 10, 'sản phẩm của sony', 1),
       (020, 'sony y', 20000000, 620, 'sản phẩm của sony', 1),
       (021, 'sony z', 20000000, 603, 'sản phẩm của sony', 1),
       (022, 'sony a', 20000000, 604, 'sản phẩm của sony', 1),
       (023, 'sony b', 20000000, 605, 'sản phẩm của sony', 1),
       (024, 'sony c', 20000000, 605, 'sản phẩm của sony', 1),
       (025, 'sony d', 20000000, 60, 'sản phẩm của sony', 1),
       (009, 'iphone 14', 25000000, 101, 'sản phẩm của aple', 1);

-- Bước 3:

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)

create index i_product_code on products (product_code);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

alter table products
    add index i_name_price(product_name,product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào

explain
select product_code
from products
where product_name = 'samsung 1';

-- So sánh câu truy vấn trước và sau khi tạo index

explain
select *
from products
where product_code = '01';
create index i_product_code on products (product_code);
drop index i_product_code on products;

-- Bước 4:

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.

create view v_product as
select product_code, product_name, product_price, product_status
from products;
select *
from v_product;

-- Tiến hành sửa đổi view
set
sql_safe_updates = 0;
update v_product
set product_price = 100000
where product_name = 'iphone 14';
create
or replace view v_product as
select product_code, product_name, product_price, product_status
from products
where product_name = 'iphone 14';
select *
from v_product;

-- Tiến hành xoá view

drop view v_product;

-- Bước 5:

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

delimiter //
create procedure get_products()
begin
select *
from products;
end //
delimiter ;
call get_products();

-- Tạo store procedure thêm một sản phẩm mới

delimiter //
create procedure set_products(in productCode varchar (10), productName varchar (50), productPrice double,
                              productAmount int, productDescription varchar (50), productStatus tinyint)
begin
insert into products(product_code, product_name, product_price, product_amount, product_description, product_status)
values (productCode, productName, productPrice, productAmount, productDescription, productStatus);
end //
delimiter ;
call set_products('054','iphone 15 promax', 5000000, 35,'sản mới phẩm của Aple',1);
call get_products();

-- Tạo store procedure sửa thông tin sản phẩm theo id

delimiter //
create procedure set_products_by_id(in enterId int, productCode varchar (10), productName varchar (50),
                                    productPrice double,
                                    productAmount int, productDescription varchar (50), productStatus tinyint)
begin
update products
set product_code       = productCode,
    product_name=productName,
    product_price      = productPrice,
    product_amount     = productAmount,
    product_description= productDescription,
    product_status     = productStatus
where id = enterId;
end //
delimiter ;
call set_products_by_id(1,'1111','super phone',50000000, 1,'sản phẩm đặc biết của Aple',1);
call get_products();

-- Tạo store procedure xoá sản phẩm theo id

delimiter //
create procedure delete_products_by_id(in enterId int)
begin
delete
from products
where id = enterId;
end //
delimiter ;
call delete_products_by_id(1);
call get_products();
set
sql_safe_updates = 0;