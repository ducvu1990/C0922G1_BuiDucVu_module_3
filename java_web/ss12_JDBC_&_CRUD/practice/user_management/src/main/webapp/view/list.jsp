<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 04/01/2023
  Time: 5:00 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User List</title>
</head>
<body>
<h1>User</h1>
<p>
  <a href="/Users?action=create">Create new User</a>
</p>
<table border="1">
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Email</th>
    <th>Country</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach items='${requestScope["users"]}' var="user">
    <tr>
      <td>${user.getId()}</td>
      <td>${user.getName()}</td>
      <td>${user.getEmail()}</td>
      <td>${user.getCountry()}</td>
      <td><a href="/Users?action=edit&id=${user.getId()}">Edit</a></td>
      <td><a href="/Users?action=delete&id=${user.getId()}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
