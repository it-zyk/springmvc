<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/2/28
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/user/login" method="post">
    <table>
        <tr>
            <td colspan="2">
                <img src="${pageContext.request.contextPath }/images/login.gif">
            </td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td>
                <input type="text" name="uname" class="textSize">
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <input type="password" name="upass" class="textsize">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="image" src="${pageContext.request.contextPath }/images/ok.gif" onclick="gogo()">
                <input type="image" src="${pageContext.request.contextPath }/images/cancel.gif" onclick="cancel()">
            </td>
        </tr>
    </table>
    ${messageError }
</form>
</body>
</html>
