<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/5/6
  Time: 16:54
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
从Controller转发过来的request内置对象的数据如下：
<br> ${requestScope.name[0]}
<br> ${requestScope.name[1]}
<br> ${requestScope.name[2]}
<br> ${requestScope.name[3]}
<br>
<hr>
从Controller转发过来的Model对象的数据如下：
<br> ${address[0]}
<br> ${address[1]}
<br> ${address[2]}
<br>
</body>
</html>