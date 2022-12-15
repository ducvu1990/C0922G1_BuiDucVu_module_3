create database if not exists QUAN_LY_SINH_VIEN;
use QUAN_LY_SINH_VIEN;

create table CLASS(
CLASS_ID int auto_increment primary key,
CLASS_NAME varchar(60) not null,
START_DATE datetime not null,
`STATUS` bit
);

create table STUDENT(
STUDENT_ID int auto_increment primary key,
STUDENT_NAME varchar(30) not null,
ADDRESS varchar (50),
PHONE varchar(20),
`STATUS` bit,
CLASS_ID int not null,
foreign key (CLASS_ID) references CLASS(CLASS_ID)
);

create table `SUBJECT`(
SUB_ID int auto_increment primary key,
SUB_NAME varchar(30) not null,
CREDIT tinyint not null default(1) check(CREDIT>1),
`STATUS` bit default(1)
);

create table MARK(
MARK_ID int auto_increment primary key,
SUB_ID int not null,
STUDENT_ID int not null,
MARK float default(0) check(MARK>0 and MARK <100),
EXAM_TIME tinyint default(1),
foreign key (SUB_ID) references `SUBJECT`(SUB_ID),
foreign key (STUDENT_ID) references STUDENT(STUDENT_ID)
);