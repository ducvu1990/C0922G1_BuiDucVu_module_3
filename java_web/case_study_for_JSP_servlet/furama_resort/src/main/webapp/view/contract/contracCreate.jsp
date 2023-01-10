<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 02/01/2023
  Time: 9:54 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Furama Resort Customer</title>

    <%--    Phân trang--%>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css" />
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css" />
</head>
<body>
<div class="row bg-info">
    <div class="col-md-3 justify-content-center d-flex ">
        <img src="https://ib.vib.com.vn/banners/Promotion/20220621154454120_furama.png" alt="logo" style="width: 60%">
    </div>

    <div class="col-md-6 justify-content-center align-items-center">
        <h1 class="text-white" style="font-family: Playfair Display">Contract</h1><br>
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
                                Contract</a>
                        </li>
                        <li class="nav-link active text-white" aria-current="page">|</li>
                        <%--Customer button--%>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="/Customers?action=create">Add new Contract</a>
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
        <table id="table123" class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th hidden scope="col">Id</th>
                <th scope="col">Name</th>
                <th scope="col">Birthday</th>
                <th scope="col">Gender</th>
                <th scope="col">Id Card</th>
                <th scope="col">Phone</th>
                <th scope="col">Email</th>
                <th scope="col">Customer Type Id</th>
                <th scope="col">Address</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="customer" items="${customers}" varStatus="status">
                <tr>
                    <td>${status.count}</td>
                    <td hidden>${customer.getId()}</td>
                    <td>${customer.getName()}</td>
                    <td>${customer.getBirthday()}</td>

                    <c:if test="${customer.isGender()}">
                        <td>Nam</td>
                    </c:if>
                    <c:if test="${!customer.isGender()}">
                        <td>Nữ</td>
                    </c:if>

                    <td>${customer.getIdCard()}</td>
                    <td>${customer.getPhone()}</td>
                    <td>${customer.getEmail()}</td>
                    <td>${customer.getCustomerType().getNameType()}</td>
                    <td>${customer.getAddress()}</td>
                    <td><a href="/Customers?action=edit&id=${customer.getId()}">Edit</a></td>
                    <td>
                        <button  onclick="infoDelete('${customer.getId()}','${customer.getName()}')" type="button" class="btn btn-danger"
                                 data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Delete
                        </button>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
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

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/Customers?action=delete" method="post">
                <div class="modal-body">
                    <input hidden type="text" id="deleteId" name="deleteId">
                    <span>Do you want to delete an Customer </span>
                    <span  style="color: red" id="deleteName"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-sm btn-primary">Delete</button>
                </div>
            </form>

        </div>
    </div>
</div>
<script>
    function infoDelete(id,name) {
        document.getElementById("deleteId").value=id;
        document.getElementById("deleteName").innerText=name;
    }
</script>
<script src="jquery/jquery-3.6.3.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#table123').dataTable({
                "dom": 'lrtip',
                "lengthChange": false,
                "pageLength": 5
            }
        )
    })
</script>
</body>
</html>
