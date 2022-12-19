use
quan_ly_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *
from subject
where CREDIT in (select max(CREDIT) from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.

select s.*
from subject s
         join mark m on s.SUB_ID = m.SUB_ID
where MARK in (select max(MARK) from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

select st.*, avg(MARK) as avg_mark
from student st
         join mark m on st.STUDENT_ID = m.STUDENT_ID
group by STUDENT_ID
order by avg_mark;