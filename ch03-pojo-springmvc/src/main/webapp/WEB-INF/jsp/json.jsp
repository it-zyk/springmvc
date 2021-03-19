<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/3/16
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javaScript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

</head>
<body>
<body>
<form action="">
    用户名：<input type="text" name="pname" id="pname" /><br>
    密码：<input type="password" name="password" id="password" /> <br>
    年龄：<input type="text" name="page" id="page"><br>
    <input type="button" value="测试" onclick="testJson()" />
</form>
</body>
<script type="text/javaScript">
    function testJson() {
        //获取输入的值pname为id
        alert($("#pname").val());
        var pname = $("#pname").val();
        var password = $("#password").val();
        var page = $("#page").val();
        $.ajax({
            //请求路径
            url : "${pageContext.request.contextPath }/testJson",
            //请求类型
            type : "post",
            //data表示发送的数据
            data : JSON.stringify({
                pname : pname,
                password : password,
                page : page
            }), //定义发送请求的数据格式为JSON字符串
            contentType : "application/json;charset=utf-8",
            //定义回调响应的数据格式为JSON字符串，该属性可以省略
            dataType : "json",
            //成功响应的结果
            success : function(data) {
                if (data != null) {
                    alert("输入的用户名：" + data.pname + "，密码：" + data.password
                        + "， 年龄：" + data.page);
                }
            }
        });
    }
</script>
</html>
