<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/2/27
  Time: 7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<body>
未注册的用户，请<a href="${pageContext.request.contextPath }/register"> 注册</a>！
<br/>
已注册的用户，去<a href="${pageContext.request.contextPath }/login"> 登录</a>！
<br/>
商品录入(converter)<a href="${pageContext.request.contextPath }/index/input"> 录入</a>！
<br/>
商品录入(formatter)<a href="${pageContext.request.contextPath }/index/inputb"> 录入</a>！
<br/>
JSON 数据转换(json)<a href="${pageContext.request.contextPath }/json"> JSON</a>！
</body>
</html>
