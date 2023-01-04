create database if not exists user_management;
use user_management;

create table users(
id int(3) auto_increment primary key,
name varchar(120) not null,
email varchar(220) not null,
country varchar(120)
);

insert into users(name,email,country)
values('Ngọc Hậu', 'hau@abc.com','Việt Nam'),
('Ngọc Vũ', 'vu@abc.com','Trung Quốc'),
('Đức Vũ', 'ducvu@abc.com','Việt Nam'),
('Tiến Đạt', 'dat@abc.com','Lào');