<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 02/01/2023
  Time: 9:54 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Furama Resort Customer</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>
    <%--  <style>--%>
    <%--    body{--%>
    <%--      background-image: url("https://pix10.agoda.net/hotelImages/109/10953/10953_16030216470040397599.jpg?ca=6&ce=1&s=1024x768");--%>
    <%--    }--%>
    <%--  </style>--%>
</head>
<body>
<div class="row bg-info">
    <div class="col-md-3 justify-content-center d-flex ">
        <img src="https://ib.vib.com.vn/banners/Promotion/20220621154454120_furama.png" alt="logo" style="width: 60%">
    </div>

    <div class="col-md-6 justify-content-center align-items-center">
        <h1 class="text-white" style="font-family: Playfair Display">Customer</h1><br>
        <h3 style="color: red">${requestScope["message"]}</h3>
    </div>

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
                            <a class="nav-link active text-white" aria-current="page" href="/Customers">List of
                                customers</a>
                        </li>
                        <li class="nav-link active text-white" aria-current="page">|</li>
                        <%--Customer button--%>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="#">Add new customers</a>
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
    <div class="col-md-11 vh-100">
        <form action="/Customers?action=create" method="post">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Name</th>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <th scope="col">Birthday</th>
                    <td><input type="date" name="birthday"></td>
                </tr>
                <tr>
                    <th scope="col">Gender</th>
                    <td>
                        <select name="gender" id="gender"  value="${customer.isGender()}">
                            <c:choose>
                                <c:when test="${customer.isGender() == true}">
                                    <option value="true" selected="selected">Male</option>
                                    <option value="false">Female</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="true" >Male</option>
                                    <option value="false"selected="selected">Female</option>
                                </c:otherwise>
                            </c:choose>
                        </select>
<%--                        <input name="gender" type="radio" value="Nam"/>Nam--%>
<%--                        <input name="gender" type="radio" value="Nữ"/>Nữ--%>
                    </td>
                </tr>
                <tr>
                    <th scope="col">Id Card</th>
                    <td><input type="text" name="idCard"></td>
                </tr>
                <tr>
                    <th scope="col">Phone</th>
                    <td><input type="text" name="phone"></td>
                </tr>
                <tr>
                    <th scope="col">Email</th>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <th scope="col">Customer Type</th>
                    <td>
                        <select name="customerType">
                            <option value="Diamond">Diamond</option>
                            <option value="Platinium">Platinium</option>
                            <option value="Gold">Gold</option>
                            <option value="Silver">Silver</option>
                            <option value="Member">Member</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th scope="col">Address</th>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <th scope="col"></th>
                    <td><input type="submit" value="Add new customers"></td>
                </tr>
                </thead>
            </table>
        </form>
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
