use
quan_ly_sinh_vien;

insert into class(CLASS_NAME, START_DATE, STATUS)
values ('A1', '2008-12-20', 1),
       ('A2', '2008-12-22', 1),
       ('B3', current_date, 0);

insert into student(STUDENT_NAME, ADDRESS, PHONE, STATUS, CLASS_ID)
values ('Hung', 'Ha Noi', '0912113113', 1, 1),
       ('Hoa', 'Hai phong', null, 1, 1),
       ('Manh', 'HCM', '0123123123', 0, 2);

insert into quan_ly_sinh_vien.subject(SUB_NAME, CREDIT, STATUS)
values ('CF', 5, 1),
       ('C', 6, 1),
       ('HDJ', 5, 1),
       ('RDBMS', 10, 1);

insert into quan_ly_sinh_vien.mark(SUB_ID, STUDENT_ID, MARK, EXAM_TIME)
values (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select *
from student
where STUDENT_NAME like 'h%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select *
from class
where START_DATE like '%12%';

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select *
from subject
where CREDIT between 3 and 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
set
sql_safe_updates = 0;
update student
set CLASS_ID = 2
where STUDENT_NAME = 'hung';
set
sql_safe_updates = 1;

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select STUDENT_NAME, SUB_NAME, MARK
from mark m
         join student s on m.STUDENT_ID = s.STUDENT_ID
         join subject su on m.SUB_ID = su.SUB_ID
order by m.MARK desc, s.STUDENT_NAME;
