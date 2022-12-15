create database if not exists quan_ly_kho;
use quan_ly_kho;

create table phieu_xuat(
  so_px int auto_increment primary key, 
  ngay_xuat datetime
);

create table vat_tu(
  ma_vt int auto_increment primary key, 
  ten_vt varchar(50)
);

create table chi_tiet_phieu_xuat(
  so_px int, 
  ma_vt int, 
  dg_xuat double, 
  sl_xuat int, 
  foreign key (so_px) references phieu_xuat(so_px), 
  foreign key (ma_vt) references vat_tu(ma_vt)
);

create table phieu_nhap(
  so_pn int auto_increment primary key, 
  ngay_nhap datetime
);

create table chi_tiet_phieu_nhap(
  so_pn int, 
  ma_vt int, 
  dg_nhap double, 
  sl_nhap int, 
  foreign key (so_pn) references phieu_nhap(so_pn), 
  foreign key (ma_vt) references vat_tu(ma_vt)
);

create table nha_cc(
  ma_ncc int auto_increment primary key, 
  ten_ncc varchar(40), 
  dia_chi varchar(50)
);

create table sdt(
  ma_ncc int, 
  sdt varchar(20), 
  foreign key (ma_ncc) references nha_cc(ma_ncc)
);

create table don_dh(
  so_dh int auto_increment primary key, 
  ngay_dh datetime
);

create table cung_cap(
  ma_ncc int, 
  so_dh int, 
  foreign key (ma_ncc) references nha_cc(ma_ncc), 
  foreign key (so_dh) references don_dh(so_dh)
);

create table chi_tiet_don_dat_hang(
  ma_vt int, 
  so_dh int, 
  foreign key (ma_vt) references vat_tu(ma_vt), 
  foreign key (so_dh) references don_dh(so_dh)
);
