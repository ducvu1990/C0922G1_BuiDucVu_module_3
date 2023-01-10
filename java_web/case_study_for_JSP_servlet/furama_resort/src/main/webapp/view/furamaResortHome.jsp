<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 02/01/2023
  Time: 9:49 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Furama Resort Home</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>

</head>
<body>
<div class="row bg-info">
    <div class="col-md-3 justify-content-center d-flex ">
        <img src="https://ib.vib.com.vn/banners/Promotion/20220621154454120_furama.png" alt="logo" style="width: 60%">
    </div>
    <div class="col-md-6"></div>
    <div class="col-md-3 justify-content-center align-items-center d-flex">
        <h1 class="text-white" style="font-family: Magneto">Bui Duc Vu</h1>
    </div>
</div>

<div class="row bg-success">
    <div class="col-md-2"></div>
    <div class="col-md-8 bg-">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand text-white" href="/index.jsp">Home</a>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">

                        <%--Employee button--%>
                        <li class="nav-item">
                            <a class="nav-link active text-white" aria-current="page"
                               href="/Employees">Employee</a>
                        </li>
                        <%--Customer button--%>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="/Customers">Customer</a>
                        </li>

                        <%--Service button--%>
                        <li class="nav-item dropdown">
                            <a class="nav-link text-white" href="/Facilitys">Service</a>
                        </li>

                        <%--Contrac button--%>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="/Contracts">Contrac</a>
                        </li>
                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn text-white" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
    <div class="col-md-2"></div>
</div>

<div class="row">
    <div class="col-md-1 justify-content-center d-flex" style="background-color: #a3cfbb; top: auto">
        <ul class="list-group">
            <li class="list-group-item disabled" style="font-size: x-large; background-color: #a3cfbb">item 0
            </li>
            <li class="list-group-item" style="font-size: x-large; background-color: #a3cfbb">item 1</li>
            <li class="list-group-item" style="font-size: x-large; background-color: #a3cfbb">item 2</li>
            <li class="list-group-item" style="font-size: x-large; background-color: #a3cfbb">item 3</li>
            <li class="list-group-item" style="font-size: x-large; background-color: #a3cfbb">item 4</li>
        </ul>
    </div>
    <div class="col-md-11 justify-content-center align-items-center d-flex">
        <div class="card text-bg-dark px-0 justify-content-center align-items-center d-flex w-100 h-100">
            <img src="https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/07_2019/mua-he.jpg" class="card-img"
                 alt="img">
            <div class="card-img-overlay px-0">
                <div class="row container-fluid">
                <h5 style="font-size: xxx-large; color: coral">KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI FURAMA ĐÀ NẴNG, TỰ HÀO LÀ KHU NGHỈ
                    DƯỠNG ẨM THỰC TẠI VIỆT NAM</h5>
                </div>
                <div class="row container-fluid">
                <p>Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản văn
                    hoá thế giới: Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70
                    căn biệt thự từ hai đến bốn phòng ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong cách
                    thiết kế truyền thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu nghỉ dưỡng
                    danh giá nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi tiếng, giới hoàng gia, chính khách,
                    ngôi sao điện ảnh và các nhà lãnh đạo kinh doanh quốc tế.</p><br>
                <p>Ẩm thực tại khu nghỉ dưỡng là trải nghiệm kết hợp giữa các món ăn Việt Nam, châu Á, Ý và châu Âu
                    cùng các món bít tết nhập khẩu hảo hạng. Khu nghỉ dưỡng mang đến cho quý khách những không gian ẩm
                    thực đa dạng bao gồm – quầy bar nhìn ra biển, hồ bơi Lagoon được bao quanh bởi khu vườn nhiệt đới,
                    ẩm thực truyền thống Ý tại nhà hàng Don Cipriani’s, chất Á Đông tại Café Indochine hay nhà hàng bít
                    tết “The Fan – Cái Quạt” nằm ngay trên bãi biển. Khu nghỉ dưỡng Furama Đà Nẵng còn gây ấn tượng và
                    tạo nhiều thích thú cho khách thông qua các chương trình vui chơi đầy thú vị như các chuyến du ngoạn,
                    thể thao trên nước, lặn biển và chơi golf cũng như các dịch vụ chăm sóc sức khoẻ và sắc đẹp.

                    Nằm tại vị trí đắc địa gần trung tâm Đà Nẵng và là nơi kết nối quốc tế thuận tiện đến Singapore,
                    Bangkok, Xiêm Riệp, Kuala Lumpur, Đài Loan, Tokyo, Osaka, Busan, Seoul, Tokyo, Osaka và
                    Hồng Kông – Ma Cao, Trung Quốc bao gồm: Bắc Kinh, Thượng Hải, Hàng Châu, Quảng Châu, Thành Đô bằng
                    các chuyến bay trực tiếp, khu nghỉ dưỡng Furama Đà Nẵng là điểm đến lý tưởng cho các đại lý du lịch,
                    doanh nghiệp, công ty tổ chức sự kiện. Cung Hội nghị có thể chứa tới 3000 người, cùng với 10 phòng
                    chức năng khác có sức chứa từ 50 đến 300 người. Cung hội nghị Ariyana Convention Centre (ACC) được
                    xây dựng để tổ chức sự kiện APEC 2017, kết nối với Cung hội nghị Furama (ICP) tạo thành quần thể MICE
                    lớn nhất Việt Nam có sức chứa lên tới 5,000 khách.

                    Một loạt các bữa tiệc theo chủ đề trên bãi biển hoặc xung quanh hồ Lagoon, trong phòng đại tiệc
                    hoặc bên ngoài khu nghỉ dưỡng, kết hợp các dịch vụ đặc biệt như VIP xuất hiện từ trực thăng đáp
                    xuống bãi đáp riêng của khu nghỉ dưỡng; Thêm vào đó là các hoạt động nhóm và thể thao trên nước,
                    “Trung tâm lặn” đạt tiêu chuẩn lặn biển quốc tế, 2 sân golf 18 lỗ, cũng như các dịch vụ chăm sóc
                    sức khoẻ và sắc đẹp đã khiến Furama Đà Nẵng trở thành địa điểm lý tưởng cho các nhóm MICE.
                </p>
                </div>
            </div>
        </div>


    </div>
</div>

<div class="card text-center bg-danger">
    <div class="card-header">
    </div>
    <div class="card-body">
        <h5 class="card-title"></h5>
        <p class="card-text" style="font-size: xx-large">Footer</p>
    </div>
    <div class="card-footer text-muted">
    </div>
</div>
</body>
</html>
</head>
<body>

</body>
</html>
