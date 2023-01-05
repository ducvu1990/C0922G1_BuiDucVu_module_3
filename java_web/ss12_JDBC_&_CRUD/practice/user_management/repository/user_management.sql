create database if not exists user_management;
use user_management;

create table users(
id int(3) auto_increment primary key,
name varchar(120) not null,
email varchar(220) not null,
country varchar(120)
);
create table permision(
id int(11) auto_increment primary key,
name varchar(50)
);

create table user_permision(
user_id int(11),
permision_id int(11),
foreign key (user_id) references users(id),
foreign key (permision_id) references permision(id)
);

insert into users(name,email,country)
values('Ngọc Hậu', 'hau@abc.com','Việt Nam'),
('Ngọc Vũ', 'vu@abc.com','Trung Quốc'),
('Đức Vũ', 'ducvu@abc.com','Việt Nam'),
('Tiến Đạt', 'dat@abc.com','Lào');

select * from users where country = 'lao';
select * from users order by substring(name,-1);

DELIMITER $$

CREATE PROCEDURE get_user_by_id(IN user_id INT)

BEGIN

    SELECT users.name, users.email, users.country

    FROM users

    where users.id = user_id;

    END$$

DELIMITER ;

  

DELIMITER $$

CREATE PROCEDURE insert_user(

IN user_name varchar(50),

IN user_email varchar(50),

IN user_country varchar(50)

)

BEGIN

    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);

    END$$

DELIMITER ;