<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 04/01/2023
  Time: 9:20 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<h1>Edit User</h1>
<c:if test='${requestScope["message"] != null}'>
  <span>${message}</span>
</c:if>
<p>
  <a href="/Users">Back to User list</a>
</p>
<form action="/Users?action=edit" method="post">
  <fieldset>
    <legend>Edit User</legend>
    <table>
      <tr>
        <th>ID: </th>
        <td><input hidden type="text" name="id" value="${requestScope["users"].getId()}"></td>
      </tr>
      <tr>
        <th>Name: </th>
        <td><input type="text" name="name" value="${requestScope["users"].getName()}"></td>
      </tr>
      <tr>
        <th>Email: </th>
        <td><input type="text" name="email" value="${requestScope["users"].getEmail()}"></td>
      </tr>
      <tr>
        <th>Country: </th>
        <td><input type="text" name="country" value="${requestScope["users"].getCountry()}"></td>
      </tr>
      <tr>
        <th></th>
        <td><input type="submit" value="Edit User"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>
