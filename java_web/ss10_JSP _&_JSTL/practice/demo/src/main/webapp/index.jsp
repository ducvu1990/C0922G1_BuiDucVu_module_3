<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">

    </script>
</head>
<body>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4" style="background-color: coral">
        <div class="row justify-content-center align-items-center d-flex">
            <h1>Simple Calculator</h1>
        </div>
        <div class="row justify-content-center align-items-center d-flex">
            <form action="/calculator1" method="post">
                <table style="border: 1px sienna solid; margin: 5px; font-size: xx-large">Calculator
                    <tr>
                        <td>First operand</td>
                        <td><input type="text" value="0" name="firstOperand"></td>
                    </tr>
                    <tr>
                        <td>Operator</td>
                        <td>
                            <input list="browsers" name="browser">
                            <datalist id="browsers">
                                <option value="+">summation</option>
                                <option value="-">Subtraction</option>
                                <option value="*">multiplication</option>
                                <option value="/">division</option>
                            </datalist>
                        </td>
                    </tr>
                    <tr>
                        <td>Second operand</td>
                        <td><input type="text" value="0" name="secondOperand"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="calculate" name="calculate"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>