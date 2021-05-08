<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/5/8
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/select" method="post">
    <div>
        <p>测试登录</p>
        <p><input type="text" name="uname" required placeholder="请输入账号"/></p>
        <p><input type="submit" value="提交"/></p>
    </div>
</form>
</body>
</html>
