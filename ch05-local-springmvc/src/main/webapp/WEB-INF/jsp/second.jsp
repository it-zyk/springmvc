<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/4/28
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<spring:message code="second"/><br><br>
<a href="${pageContext.request.contextPath }/my/third">
    <spring:message code="third" arguments="888,999"/>
</a>
</body>
</html>