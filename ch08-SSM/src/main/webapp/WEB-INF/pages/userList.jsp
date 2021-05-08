<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/5/8
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
用户信息<br>
<c:forEach items="${userList}" var="user">
    ${user.uid}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    ${user.uname}&nbsp;&nbsp;&
    ${user.usex}&nbsp;&nbsp;&
</c:forEach>
</body>
</html>
