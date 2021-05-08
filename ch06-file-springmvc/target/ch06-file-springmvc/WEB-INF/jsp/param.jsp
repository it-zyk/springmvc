<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/5/6
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

 <%request.setCharacterEncoding("GBK");%>
<body>
<h2>EL隐含对象param、paramValues</h2>
姓名：${param.username}</br>
兴趣：
${paramValues.habit[0]}
${paramValues.habit[1]}
${paramValues.habit[2]}
</body>
</html>
