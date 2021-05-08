<%--
  Created by IntelliJ IDEA.
  User: It-zy
  Date: 2021/5/7
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="userController/userLogin" method="post">
    <div>
        <p>测试登录</p>
        <p>账号*</p>
        <p><input type="text" name="userName" required placeholder="请输入账号"/></p>
        <div id="login_password">
            <p>密码*</p>
            <p><input type="text" name="userPassword" required placeholder="请输入密码"/></p>
        </div>
        <p><input type="submit" name="login" value="登陆"/></p>
    </div>
</form>
<button type="button" value="测试ajax" id="btn">测试ajax</button>
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script>
    $(function () {
        $("#btn").click(function () {
            $.ajax({
                url: "userController/testAjax",
                type: "POST",
                data:
                    {userName: "张三", userPassword: "1234"},
                dataType: "json",
                success: function (res) {
                    var data = JSON.parse(res);
                    alert(res);
                    alert(data);
                    for (var key in data) {
                        alert(data[key].userName);
                    }
                }
            })
        })
    })
</script>
</body>
</html>