<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="#">Home</a>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">

                <%--Employee button--%>
                <li class="nav-item">
                    <a class="nav-link active text-white" aria-current="page" href="#">Employee</a>
                </li>
                <%--Customer button--%>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Customer</a>
                </li>

                <%--Service button--%>
                <li class="nav-item dropdown">
                    <div class="btn-group ">
                        <button class="btn btn-secondary dropdown-toggle" type="button"
                                data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                            Service
                        </button>

                        <ul class="dropdown-menu">
                            <li>
                                <button type="button" class="btn btn-secondary"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                    Service List
                                </button>
                            </li>
                            <li>
                                <div class="btn-group dropend">
                                    <button type="button" class="btn btn-secondary dropdown-toggle"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                        Add new service
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Villa</a></li>
                                        <li><a class="dropdown-item" href="#">House</a></li>
                                        <li><a class="dropdown-item" href="#">Room</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <div class="btn-group dropend">
                                    <button type="button" class="btn btn-secondary dropdown-toggle"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                        Edit service
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Villa</a></li>
                                        <li><a class="dropdown-item" href="#">House</a></li>
                                        <li><a class="dropdown-item" href="#">Room</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <button type="button" class="btn btn-secondary"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                    Modal deletes the service
                                </button>
                        </ul>
                    </div>
                </li>

                <%--Contrac button--%>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Contrac</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn text-white" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
