<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/4/28
  Time: 10:58
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
<a href="${pageContext.request.contextPath }/i18nTest?locale=zh_ CN">
    <spring:message code="language.cn" /> </a> --
<a href="${pageContext.request.contextPath }/i18nTest?locale=en_US">
    <spring:message code="language.en" /> </a>
<br>
<br>
<spring:message code="first" />
<br>
<br>
<a href="${pageContext.request.contextPath }/my/second">
    <spring:message code="second" /> </a>
</body>
</html>