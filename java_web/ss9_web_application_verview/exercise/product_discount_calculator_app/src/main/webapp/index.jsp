<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h1>Product Discount Calculator</h1>
<form action="/display-discount" method="post">
    <label>Product Description: </label><br>
    <input type="text" name="product_description" size="30"><br>

    <label>List Price: </label><br>
    <input type="text" name="list_price" size="30"><br>

    <label>Discount Percent: </label><br>
    <input type="text" name="discount_percent">

    <input type="submit" value="Calculate Discount">
</form>
</body>
</html>