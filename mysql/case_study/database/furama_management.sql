create database FURAMA_MANAGEMENT;
use FURAMA_MANAGEMENT;

create table VI_TRI(
MA_VI_TRI int primary key,
TEN_VI_TRI varchar(45)
);

create table TRINH_DO(
MA_TRINH_DO int primary key,
TEN_TRINH_DO varchar(45)
);

create table BO_PHAN(
MA_BO_PHAN int primary key,
TEN_BO_PHAN varchar(45)
);

create table LOAI_KHACH(
MA_LOAI_KHACH int primary key,
TEN_LOAI_KHACH varchar(45)
);

create table LOAI_DICH_VU(
MA_LOAI_DICH_VU int primary key,
TEN_LAOI_DICH_VU varchar(45)
);

create table KIEU_THUE(
MA_KIEU_THUE int primary key,
TEN_KIEU_THUE varchar(45)
);

create table HOP_DONG_CHI_TIET(
MA_HOP_DONG_CHI_TIET int primary key,
MA_HOP_DONG int,
MA_DICH_VU_DI_KEM int,
SO_LUONG int
);

create table DICH_VU_DI_KEM(
MA_DICH_VU_DI_KEM int primary key,
TEN_DICH_VU_DI_KEM varchar(45),
GIA double,
DON_VI varchar(45),
TRANG_THAI varchar(45)
);

create table HOP_DONG(
MA_HOP_DONG int primary key,
NGAY_LAM_HOP_DONG datetime,
NGAY_KET_THUC datetime,
TIEN_DAT_COC double,
MA_NHAN_VIEN int,
MA_KHACH_HANG int,
MA_DICH_VU int
);

create table DICH_VU(
MA_DICH_VU int primary key,
TEN_DICH_VU varchar(45),
DIEN_TICH int,
CHI_PHI_THUE double,
SO_NGUOI_TOI_DA int,
MA_KIEU_THUE int,
MA_LOAI_DICH_VU int,
TIEU_CHUAN_PHONG varchar(45),
MO_TA_TIEN_NGHI_KHAC varchar(45),
DIEN_TICH_HO_BOI double,
SO_TANG int,
DICH_VU_MIEN_PHI_DI_KEM text
);

create table KHACH_HANG(
MA_KHACH_HANG int primary key,
MA_LOAI_KHACH int,
HO_TEN varchar(45),
NGAY_SINH date,
GIOI_TINH bit(1),
SO_CMND varchar(45),
SO_DIEN_THOAI varchar(45),
EMAIL varchar(45),
DIA_CHI varchar(45)
);

create table NHAN_VIEN(
MA_NHAN_VIEN int primary key,
HO_TEN varchar(45),
NGAY_SINH date,
SO_CMND varchar(45),
LUONG double,
SO_DIEN_THOAI varchar(45),
EMAIL varchar(45),
DIA_CHI varchar(45),
MA_VI_TRI int,
MA_TRINH_DO int,
MA_BO_PHAN int
);