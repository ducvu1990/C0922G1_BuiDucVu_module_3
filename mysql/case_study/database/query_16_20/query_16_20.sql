use
furama_management;

select *
from nhan_vien;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.

delete
from nhan_vien nv
where nv.ma_nhan_vien not in (select hd.ma_nhan_vien
                              from hop_dong hd
                              where year (
    ngay_lam_hop_dong) in (2019
    , 2020
    , 2021));

-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.

set
sql_safe_updates = 0;
update khach_hang
set ma_loai_khach = 1
where khach_hang.ma_loai_khach = 2 and khach_hang.ma_khach_hang in ((select ma_khach_hang from v_tong_tien_thanh_toan_cua_khach_hang
where tong_tien_hoa_don > 1000000));

create view v_tong_tien_hoa_don as
select hd.*, (ifnull(dv.chi_phi_thue, 0) + sum(ifnull(hdct.so_luong, 0) * ifnull(dvdk.gia, 0))) as tong_tien_hoa_don
from hop_dong hd 
right join khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
left join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
where year(ngay_lam_hop_dong) = 2021
group by hd.ma_hop_dong;

create view v_tong_tien_thanh_toan_cua_khach_hang as(
select vtthd.ma_khach_hang, sum(vtthd.tong_tien_hoa_don ) as tong_tien_hoa_don
from v_tong_tien_hoa_don vtthd
group by vtthd.ma_khach_hang);

-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).

delete
from khach_hang kh
where kh.ma_khach_hang not in (select v_ma_khach_hang_can_xoa.ma_khach_hang from v_ma_khach_hang_can_xoa);

create view v_ma_khach_hang_can_xoa as
(
select hd.ma_khach_hang
from hop_dong hd
where year (ngay_lam_hop_dong) >= 2021);

-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.

update dich_vu_di_kem
set gia = gia * 2
where ma_dich_vu_di_kem in
      (select v_cap_nhat_gia_cho_dich_vu_di_kem.ma_dich_vu_di_kem from v_cap_nhat_gia_cho_dich_vu_di_kem);
create view v_cap_nhat_gia_cho_dich_vu_di_kem as
(
select hdct.ma_dich_vu_di_kem
from hop_dong_chi_tiet hdct
         join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
         join hop_dong hd on hdct.ma_hop_dong = hd.ma_hop_dong
where year (hd.ngay_lam_hop_dong) = 2020
group by hdct.ma_dich_vu_di_kem
having sum (so_luong) >= 10);

-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm id 
-- (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
select nv.ma_nhan_vien, nv.ho_ten, nv.email, nv.so_dien_thoai, nv.ngay_sinh, nv.dia_chi
from nhan_vien nv
union all
select kh.ma_khach_hang, kh.ho_ten, kh.email, kh.so_dien_thoai, kh.ngay_sinh, kh.dia_chi
from khach_hang kh;