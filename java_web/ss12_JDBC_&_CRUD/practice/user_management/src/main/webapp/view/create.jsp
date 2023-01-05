<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 04/01/2023
  Time: 7:59 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create User</title>
</head>
<body>
<h1>Create User</h1>

    <c:if test='${requestScope["message"] != null}'>
        <span>${message}</span>
    </c:if>

<p>
  <a href="/Users">Back to User list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Create User</legend>
        <table>
            <tr>
                <th>Name: </th>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <th>Email: </th>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <th>Country: </th>
                <td><input type="text" name="country"></td>
            </tr>
            <tr>
                <th></th>
                <td><input type="submit" value="Create User"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
