<%--
  Created by IntelliJ IDEA.
  User: cubin
  Date: 05/01/2023
  Time: 10:47 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<h1>Edit USer</h1>
<p>${requestScope["message"]}</p>
<a href="/Users">Back to User list</a>
<form method="post">
  <fieldset>
    <legend>Create User</legend>
    <table>
      <tr>
        <th>Name:</th>
        <td><input type="text" name="name" value="abc abc"></td>
      </tr>
      <tr>
        <th>email:</th>
        <td><input type="text" name="email" value="abc@abc.com"></td>
      </tr>
      <tr>
        <th>Country:</th>
        <td><input type="text" name="country" value="abc"></td>
      </tr>
      <tr>
        <th></th>
        <td><input type="submit" value="Crest User"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>
