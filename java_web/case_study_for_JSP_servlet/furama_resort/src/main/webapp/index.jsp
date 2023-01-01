<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 01/01/2023
  Time: 8:43 CH
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
        <h1 class="text-white" style="font-family: 'Lucida Handwriting'">Bui Duc Vu</h1>
    </div>
</div>

<div class="row bg-success">
    <div class="col-md-2"></div>
    <div class="col-md-8 bg-">
        <c:import url="view/furamaResortnNavbar.jsp"></c:import>
    </div>
    <div class="col-md-2"></div>
</div>

<div class="row">
    <div class="col-md-3 justify-content-center d-flex" style="background-color: #a3cfbb; top: auto">
        <ul class="list-group">
            <li class="list-group-item disabled" style="font-size: x-large; background-color: #a3cfbb">A disabled item
            </li>
            <li class="list-group-item" style="font-size: x-large; background-color: #a3cfbb">A second item</li>
            <li class="list-group-item" style="font-size: x-large; background-color: #a3cfbb">A third item</li>
            <li class="list-group-item" style="font-size: x-large; background-color: #a3cfbb">A fourth item</li>
            <li class="list-group-item" style="font-size: x-large; background-color: #a3cfbb">And a fifth one</li>
        </ul>
    </div>
    <div class="col-md-9 justify-content-center align-items-center d-flex">
        <div class="card text-bg-dark px-0 justify-content-center align-items-center d-flex w-100 h-100">
            <img src="https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/07_2019/mua-he.jpg" class="card-img"
                 alt="img">
            <div class="card-img-overlay px-0">
                <h5 class="card-title" style="font-size: xxx-large; color: coral">Body</h5>
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
