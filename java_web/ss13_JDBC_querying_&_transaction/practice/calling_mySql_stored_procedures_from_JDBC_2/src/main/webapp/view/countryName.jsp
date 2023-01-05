<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 05/01/2023
  Time: 3:59 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Country Name of User</title>
</head>
<body>
<h1>Country Name of User</h1>
<a href="/Users">Back to User list</a>
<p>${message}</p>
<table border="1">
    <tr>
        <th>ID</th>
        <th>name</th>
        <th>Email</th>
        <th>Country</th>
    </tr>
    <c:forEach items='${requestScope["users"]}' var="user">
        <tr>
            <th>${user.getId()}</th>
            <th>${user.getName()}</th>
            <th>${user.getEmail()}</th>
            <th>${user.getCountry()}</th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
