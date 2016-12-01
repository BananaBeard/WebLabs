<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 3</title>
    <style type="text/css">
        <%@include file="/resources/css/style.css" %>
    </style>
</head>
<body>
TASK 1.1 <br>
<c:forEach begin="0" end="200" step="2" var="i">
    <c:out value="${i}"/>
</c:forEach>
</body>
</html>
