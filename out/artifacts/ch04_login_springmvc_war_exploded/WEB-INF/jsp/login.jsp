<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/2/28
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
${msg }
<form action="${pageContext.request.contextPath }/login" method="post">
    用户名：<input type="text" name="uname" /><br>
    密码：<input type="password" name="upwd" /><br>
    <input type="submit" value="登录" />
</form>
</body>
</html>