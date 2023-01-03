<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 03/01/2023
  Time: 11:50 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Search Product</title>
</head>
<body>
<h1>Search Product</h1>
<p>
    <a href="/Products">Back to Product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Search Product</legend>
        <tr>
            <td>Id: </td>
            <td><input type="text" name="searchId"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Search"></td>
        </tr>
    </fieldset>
</form>

<c:if test='${requestScope["product"] != null}'>
    <table>
        <tr>
            <td>Name: </td>
            <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
            <td>Color: </td>
            <td>${requestScope["product"].getColor()}</td>
        </tr>
        <tr>
            <td>Price: </td>
            <td>${requestScope["product"].getPrice()}</td>
        </tr>
    </table>
</c:if>
</body>
</html>
