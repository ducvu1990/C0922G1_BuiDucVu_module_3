create database if not exists QUAN_LY_DIEM_THI;
use QUAN_LY_DIEM_THI;

create table HOC_SINH(
MA_HOC_SINH varchar(20) primary key,
TEN_HOC_SINH varchar(50),
NGAY_SINH datetime,
LOP varchar(20),
GIOI_TINH varchar(20)
);

create table MON_HOC(
MA_MON_HOC varchar(20) PRIMARY KEY,
TEN_MONhOC varchar(50)
);

create table BANG_DIEM(
MA_HOC_SINH varchar(20),
MA_MON_HOC varchar(20),
DIEM_THI int,
NGAY_KIEM_TRA datetime,
primary key(MA_HOC_SINH, MA_MON_HOC),
foreign key(MA_HOC_SINH) references HOC_SINH(MA_HOC_SINH),
foreign key(MA_MON_HOC) references MON_HOC(MA_MON_HOC)
);

create table GIAO_VIEN(
MA_GIAO_VIEN varchar(20) primary key,
TEN_GIAO_VIEN varchar(20),
SO_DIEN_THOAI varchar(10)
);

alter table MON_HOC add MA_GIAO_VIEN varchar(20);
alter table MON_HOC add constraint FK_MA_GIAO_VIEN foreign key (MA_GIAO_VIEN)references GIAO_VIEN(MA_GIAO_VIEN);