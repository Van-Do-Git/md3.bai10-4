<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 8/21/2021
  Time: 11:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Result: </h1>
<c:catch var="mes">
    ${caculate.first} ${exprestion} ${caculate.second} =
    ${caculate.tinh(Integer.parseInt(requestScope["chose"]))}
    <br/>
</c:catch>
<c:if test="${mes != null}">
    Exception : ${mes}
    <br/>
    Message: ${mes.message}
</c:if>
</body>
</html>
