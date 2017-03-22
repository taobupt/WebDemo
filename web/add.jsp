<%--
  Created by IntelliJ IDEA.
  User: Tao
  Date: 3/21/2017
  Time: 7:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3 align="center">add customer</h3>
<form action="<c:url value="/CustomerServlet"/>"method="post">
    <input type="hidden" name="method" value="add">
    <table border="0" align="center" width="40%" style="margin-left: 100px">
        <tr>
            <td width="100px">customer name</td>
            <td width="40%">
                <input type="text" name="name"/>
            </td>
            <td align="left">
                <label id="nameError" class="error">&nbsp;</label>
            </td>
        </tr>

        <tr>
            <td>Customer Sex</td>
            <td>
                <input type="radio" name="gender" value="male" id="male"/>
                <label for="male">Male</label>
                <input type="radio" name="gender" value="female" id="female"/>
                <label for="female">Female</label>
            </td>
            <td>
                <label id="genderError" class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td>
                <input type="text" name="phone" id="phone"/>
            </td>
            <td>
                <label id="phoneError" class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <input type="text" name="email" id="email"/>
            </td>
            <td>
                <label id="emailError"class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <textarea rows="5" cols="30" name="description"></textarea>
            </td>
            <td>
                <label id="discriptionError"class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="submit"/>
                <input type="reset" name="reset"/>
            </td>
        </tr>

    </table>

</form>
</body>
</html>
