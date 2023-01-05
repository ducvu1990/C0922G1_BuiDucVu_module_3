<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 05/01/2023
  Time: 11:53 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Delete User</title>
</head>
<body>
<h1>Delete User</h1>
<strong>${requestScope["message"]}${requestScope["users"].getName()}</strong><br>
<a href="/Users">Back to User list</a>
<form method="post">
    <fieldset>
        <legend>Delete User</legend>
        <table>
            <tr>
                <th>ID: </th>
                <td><input hidden type="text" value="${requestScope["users"].getId()}"></td>
            </tr>
            <tr>
                <th>ID: </th>
                <td><input type="text" value="${requestScope["users"].getName()}"></td>
            </tr>
            <tr>
                <th>ID: </th>
                <td><input type="text" value="${requestScope["users"].getEmail()}"></td>
            </tr>
            <tr>
                <th>ID: </th>
                <td><input type="text" value="${requestScope["users"].getCountry()}"></td>
            </tr>
            <tr>
                <th></th>
                <td><input type="submit" value="Delete User"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
