<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/7/17
  Time: 7:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>原生角色发送ajax请求</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>

        // 原生js方式发送ajax请求
        function run() {
            // 1.核心对象
            var xmlhttp;

            // 2.判断浏览器尅下
            if (window.XMLHttpRequest) {
                // 用于现代浏览器的代码
                xmlhttp = new XMLHttpRequest();
            } else {
                // 应对老版本 IE 浏览器的代码
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }

            // 3.建立连接
            xmlhttp.open("GET"," ${pageContext.request.contextPath}" +"/ajax?username=tom", true);
            // 4.发送请求
            xmlhttp.send();

            // 5.获取响应结果
            xmlhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    var text = xmlhttp.responseText;
                    alert("响应结果：" + text);
                }
            };
        }


        // jQuery GET方式
        function run_jquery() {
            // 1.url
            var url = "${pageContext.request.contextPath}" +"/ajax";

            // 2.数据
            var data = {username: "jack"};

            // 3.发送get请求
            $.get(url, data, function (param) {
                alert("响应结果：" + param);
            }, "text");

        }

        // jQuery POST方式
        function run_jquery2() {
            // 1.url
            var url = "${pageContext.request.contextPath}" +"/ajax";

            // 2.数据
            var data = {username: "jack"};

            // 3.发送get请求
            $.post(url, data, function (param) {
                alert("响应结果：" + param);
            }, "text");

        }

        // jQuery Ajax方式
        function run_jquery3() {
            // 1.url
            var url = "${pageContext.request.contextPath}" +"/ajax";

            // 2.数据
            var data = {username: "jack"};

            // 3.发送get请求
            $.ajax({
                url: "${pageContext.request.contextPath}" +"/ajax",
                async: true,
                type: "POST",
                dataType: "text",
                data: {username1: "jerry"},
                success: function (param) {
                    alert("响应成功：" + param);
                },
                error: function (param) {
                    alert("响应失败：" + param); // param null
                }

            });
        }

    </script>
</head>
<body>

<input type="button" value="原生JS发送异步请求" onclick="run()"><br>
<input type="button" value="jQuery的GET方式发送异步请求" onclick="run_jquery()"><br>
<input type="button" value="jQuery的POST方式发送异步请求" onclick="run_jquery2()"><br>
<input type="button" value="jQuery的Ajax方式发送异步请求" onclick="run_jquery3()"><br>
局部刷新<input type="text">

</body>
</html>
