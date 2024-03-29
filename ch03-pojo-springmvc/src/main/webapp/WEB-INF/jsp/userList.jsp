<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/3/15
  Time: 8:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>用户列表</h1>
<a href="<c:url value="${pageContext.request.contextPath }/user/input"/>">继续添加</a>
<table>
    <tr>
        <th>用户名</th>
        <th>兴趣爱好</th>
        <th>朋友</th>
        <th>职业</th>
        <th>户籍</th>
        <th>个人描述</th>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.userName }</td>
            <td>
                <c:forEach items="${user.hobby }" var="hobby">
                    ${hobby }&nbsp;
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${user.friends}" var="friend">
                    ${friend }&nbsp;
                </c:forEach>
            </td>
            <td>${user.carrer }</td>
            <td>${user.houseRegister }</td>
            <td>${user.remark }</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
