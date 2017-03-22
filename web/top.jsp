<%--
  Created by IntelliJ IDEA.
  User: Tao
  Date: 3/21/2017
  Time: 7:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <base target="main">
    <title>My JSP 'top.jsp' starting page</title>
</head>
<body style="text-align: center">
<h1>customer relation management system</h1>
<a href="<c:url value="/add.jsp"/>">add customer</a>
<a href="<c:url value="/CustomerServlet?method=findAll"/>">query customer</a>
<a href="<c:url value="/query.jsp"/>">advance search</a>
</body>
</html>
