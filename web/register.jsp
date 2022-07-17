<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/7/17
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        $(function () {
            $("#username").blur(function () {
                // 获取用户名
                var name = $(this).val();

                if (name != null && name != "") {
                    // 向后台发送请求
                    $.ajax({
                        url: "${pageContext.request.contextPath}" + "/checkName",
                        type: "GET",
                        data: {username: name},
                        dataType: "json",
                        success: function (data) {
                            // 设置span的内容
                            if (data.flag) {
                                $("#spanMsg").html("<font color='red'>" + data.msg + "</font>");
                            } else {
                                $("#spanMsg").html("<font color='green'>" + data.msg + "</font>");
                            }
                        },
                        error: function (data) {
                            alert("请求处理失败" + data.msg)
                        }
                    });
                }

            })
        });

    </script>
</head>
<body>

<form action="#" method="post">
    用户名：<input type="text" name="username" id="username" placeholder="请输入用户名"><br>
    <span id="spanMsg" style="color: red"></span><br>
    密码：<input type="password" name="password" placeholder="请输入密码"><br>
    <input type="submit" value="注册">
</form>
</body>
</html>
