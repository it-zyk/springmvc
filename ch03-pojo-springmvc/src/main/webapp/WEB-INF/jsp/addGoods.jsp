<%--
  Created by IntelliJ IDEA.
  User: TCC
  Date: 2021-03-04
  Time: 8:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品信息</title>
</head>
<body>
<form action="addGoods" method="post">
    <table border=1 bgcolor="lightblue" align="center">
        <tr>
            <td>商品名称：</td>
            <td><input class="textSize" type="text" name="goodsname" /></td>
        </tr>
        <tr>
            <td>商品价格：</td>
            <td><input class="textSize" type="text" name="goodsprice" /></td>
        </tr>
        <tr>
            <td>商品数量：</td>
            <td><input class="textSize" type="text" name="goodsnumber" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交" />
            </td>
        </tr>
        </tab1e>
</form>
</body>
</html>
