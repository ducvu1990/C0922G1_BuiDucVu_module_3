use
sales_manager;

insert into customer(customer_name, age)
values ('Minh Quan', 10),
       ('Ngoc Oanh', 20),
       ('Hong Ha', 50);

insert into `order`(customer_id, order_date, order_total_price)
values (1, '2006-03-21', null),
       (2, '2006-03-23', null),
       (1, '2006-03-16', null);

insert into product(product_name, product_price)
values ('May Giat', 3),
       ('Tu Lanh', 5),
       ('Dieu Hoa', 7),
       ('Quat', 1),
       ('Bep Dien', 2);

insert into orderdetail(order_id, product_id, orderdetail_QTY)
values (1, 1, 3),
       (1, 3, 7),
       (1, 4, 2),
       (2, 1, 1),
       (3, 1, 8),
       (2, 5, 4),
       (2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả 
-- các hóa đơn trong bảng Order

select order_id, order_date, order_total_price
from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách 
-- sản phẩm được mua bởi các khách

select customer_name, product_name
from orderdetail od
         join product p on od.product_id = p.product_id
         join `order` o on od.order_id = o.order_id
         join customer c on o.customer_id = c.customer_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào

select customer_name
from customer
where customer_id not in (select `order`.customer_id from `order`);

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá 
-- một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng 
-- xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)

select order_date, (orderdetail_QTY * product_price) asorder_total_price
from `order` o
         join orderdetail od on o.order_id = od.order_id
         join product p on od.product_id = p.product_id;