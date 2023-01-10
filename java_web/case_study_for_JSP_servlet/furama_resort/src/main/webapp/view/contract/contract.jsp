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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>

    <%--    Phân trang--%>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css"/>
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
                <th scope="col">Customer Name</th>
                <th scope="col">Start Date</th>
                <th scope="col">End Date</th>
                <th scope="col">Deposit</th>
                <th scope="col">Total Money</th>
                <th scope="col">Accompanied service</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="contract" items="${contracts}" varStatus="status">
                <tr>
                    <td>${status.count}</td>
                    <td hidden>${contract.getId()}</td>
                    <td>${contract.getName()}</td>
                    <td>${contract.getCustomerName()}</td>
                    <td>${contract.getStart_date()}</td>
                    <td>${contract.getEnd_date()}</td>
                    <td>${contract.getDeposit()}</td>
                    <td>${contract.getTotal_money()}</td>
                    <td>
                        <button onclick="infoDelete('${contract.getId()}','${contract.getName()}',
                                '${contract.getStart_date()}','${contract.getEnd_date()}','${contract.getDeposit()}',
                                '${contract.getTotal_money()}',)" type="button" class="btn btn-primary"
                                data-bs-toggle="modal" data-bs-target="#create">
                            +
                        </button>
                        <button onclick="infoDelete('${contract.getId()}','${contract.getName()}',
                                '${contract.getStart_date()}','${contract.getEnd_date()}','${contract.getDeposit()}',
                                '${contract.getTotal_money()}',)" type="button" class="btn btn-primary"
                                data-bs-toggle="modal" data-bs-target="#exampleModal">
                            list of included services
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
<div class="modal fade" id="create" tabindex="-1" aria-labelledby="ModalLabelCreate" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalLabelCreate">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/Customers?action=delete" method="post">
                <div class="modal-body">
                    <table>
                        <tr>
                            <th>Start Date</th>
                            <td>
                            <input type="date" id="startDate" name="startDate">
                            </td>
                        </tr>
                        <tr>
                            <th>End Date</th>
                            <td>
                            <input type="date" id="endDate" name="endDate">
                            </td>
                        </tr>
                        <tr>
                            <th>Deposit</th>
                            <td>
                            <input type="text" id="Deposit" name="Deposit">
                            </td>
                        </tr>
                        <tr>
                            <th>Total Money</th>
                            <td>
                                <input type="text" id="totalMoney" name="totalMoney">
                            </td>
                        </tr>
                        <tr>
                            <th>Customer Name</th>
                            <td>
                            <input type="text" id="customerName" name="customerName">
                            </td>
                        </tr>
                        <tr>
                            <th>Facility Name</th>
                            <td>
                            <input type="text" id="facilityName" name="facilityName">
                            </td>
                        </tr>
                        <tr>
                            <th></th>
                            <td>
                            <input type="button" class="btn btn-primary" id="" name="deleteId" value="+">
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-sm btn-primary">Create Contrac</button>
                </div>
            </form>

        </div>
    </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/Customers?action=delete" method="post">
                <div class="modal-body">
                    <input hidden type="text" id="Id" name="deleteId">
                    <span>Do you want to delete an Customer </span>
                    <span style="color: red" id="Name"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-sm btn-primary">Create Contrac</button>
                </div>
            </form>

        </div>
    </div>
</div>
<script>

    function infoDelete(id, name) {
        document.getElementById("startDate").value = id;
        document.getElementById("endDate").innerText = name;
        document.getElementById("Deposit").innerText = name;
        document.getElementById("customerName").innerText = name;
        document.getElementById("totalMoney").innerText = name;
        document.getElementById("facilityName").innerText = name;
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
