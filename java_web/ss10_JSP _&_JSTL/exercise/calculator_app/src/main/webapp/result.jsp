<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 31/12/2022
  Time: 8:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">

</script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4" style="background-color: coral">
        <div class="row justify-content-center align-items-center d-flex">
            <h1>Simple Calculator</h1>
        </div>
        <div class="row justify-content-center align-items-center d-flex">
            <h1>${resultString}</h1>
        </div>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>
