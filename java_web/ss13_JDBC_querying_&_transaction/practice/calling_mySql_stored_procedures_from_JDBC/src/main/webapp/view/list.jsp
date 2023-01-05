<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 04/01/2023
  Time: 11:16 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List User</title>
</head>
<body>
<h1>List User</h1>
<p>
    <a href="/Users?action=create">Create User</a>
</p>
<div>
    <table>
        <tr>
            <td>
            <td>Search User Coutry Name</td>
            </td>

            <td>
                <form action="/Users?action=searchCountry" method="post">
                    <input type="text" value="country" name="country">
                    <button type="submit" value="Search User Country">Search User Country</button>
                </form>
            </td>
            <td>
                <form action="/Users?action=sort" method="post">
                    <button type="submit" value="Search User Country">List User Sort</button>
                </form>
            </td>
        </tr>
    </table>
</div>

<table border="1">
    <tr>
        <th>ID</th>
        <th>name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items='${requestScope["users"]}' var="user">
        <tr>
            <th>${user.getId()}</th>
            <th>${user.getName()}</th>
            <th>${user.getEmail()}</th>
            <th>${user.getCountry()}</th>
            <th><a href="/Users?action=edit&id=${user.getId()}">Edit</a></th>
            <th><a href="/Users?action=delete&id=${user.getId()}">Delete</a></th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
