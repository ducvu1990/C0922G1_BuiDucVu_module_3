create database if not exists QUAN_LY_KHO;
use QUAN_LY_KHO;

create table PHIEU_XUAT(
SO_PX int auto_increment primary key,
NGAY_XUAT datetime
);

create table VAT_TU(
MA_VT int auto_increment primary key,
TEN_VT varchar(50)
);

create table CHI_TIET_PHIEU_XUAT(
SO_PX int,
MA_VT int,
DG_XUAT double,
SL_XUAT int,
foreign key (SO_PX) references PHIEU_XUAT(SO_PX),
foreign key (MA_VT) references VAT_TU(MA_VT)
);

create table PHIEU_NHAP(
SO_PN int auto_increment primary key,
NGAY_NHAP datetime
);

create table CHI_TIET_PHIEU_NHAP(
SO_PN int,
MA_VT int,
DG_NHAP double,
SL_NHAP int,
foreign key (SO_PN) references PHIEU_NHAP(SO_PN),
foreign key (MA_VT) references VAT_TU(MA_VT)
);

create table NHA_CC(
MA_NCC int auto_increment primary key,
TEN_NCC varchar(40),
DIA_CHI varchar(50)
);

create table SDT(
MA_NCC int,
SDT varchar(20),
foreign key (MA_NCC) references NHA_CC(MA_NCC)
);

create table DON_DH(
SO_DH int auto_increment primary key,
NGAY_DH datetime
);

create table CUNG_CAP(
MA_NCC int,
SO_DH int,
foreign key (MA_NCC) references NHA_CC(MA_NCC),
foreign key (SO_DH) references DON_DH(SO_DH)
);

create table CHI_TIET_DON_DAT_HANG(
MA_VT int,
SO_DH int,
foreign key (MA_VT) references VAT_TU(MA_VT),
foreign key (SO_DH) references DON_DH(SO_DH)
);