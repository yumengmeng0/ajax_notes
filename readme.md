

# Ajax （Asynchronous JavaScript And XML）异步的JavaScript和XML

## 1. 什么是Ajax
    Ajax是客户端与服务器进行交互时，可以不必刷新整个浏览器的情况下，与服务器进行异步通信的技术。

## 2. Ajax的作用
   Ajax可以使网页实现异步更新，在不重新加载整个网页的情况下，对网页进行更新（局部更新）。
   
## 3. Ajax好处
    1.减轻服务器负担，按需获取数据
    2.无刷新更新页面，减少用户实际和心理的等待时间
    3.只更新部分页面，有效利用带宽
    4.主流浏览器都支持Ajax
    
## 4. 浏览器访问服务器的方式
    同步访问：客户端必须等待服务器端的响应，在等待过程中不能进行其他操作。
    异步访问：客户端不需要等待服务器端的响应，在等待过程中浏览器可以进行其他操作。
    
    
## XMLHttpRequest 对象方法

<table class="dataintable">
<tbody><tr>
<th style="width:40%;">方法</th>
<th>描述</th>
</tr>

<tr>
<td>new XMLHttpRequest()</td>
<td>创建新的 XMLHttpRequest 对象</td>
</tr>

<tr>
<td>abort()</td>
<td>取消当前请求</td>
</tr>

<tr>
<td>getAllResponseHeaders()</td>
<td>返回头部信息</td>
</tr>

<tr>
<td>getResponseHeader()</td>
<td>返回特定的头部信息</td>
</tr>

<tr>
<td>open(<i>method</i>, <i>url</i>, <i>async</i>, <i>user</i>, <i>psw</i>)</td>
<td>
    <p>规定请求</p>
    <ul class="listintable">
    <li>method：请求类型 GET 或 POST</li>
    <li>url：文件位置</li>
    <li>async：true（异步）或 false（同步）</li>
    <li>user：可选的用户名称</li>
    <li>psw：可选的密码</li>
    </ul>
</td>
</tr>

<tr>
<td>send()</td>
<td>将请求发送到服务器，用于 GET 请求</td>
</tr>

<tr>
<td>send(<i>string</i>)</td>
<td>将请求发送到服务器，用于 POST 请求</td>
</tr>

<tr>
<td>setRequestHeader()</td>
<td>向要发送的报头添加标签/值对</td>
</tr>
</tbody></table>

## XMLHttpRequest 对象属性

<table class="dataintable">
<tbody><tr>
<th style="width:40%;">属性</th>
<th>描述</th>
</tr>

<tr>
<td>onreadystatechange</td>
<td>定义当 readyState 属性发生变化时被调用的函数</td>
</tr>

<tr>
<td>readyState</td>
<td>
    <p>保存 XMLHttpRequest 的状态。</p>
    <ul class="listintable">
    <li>0：请求未初始化</li>
    <li>1：服务器连接已建立</li>
    <li>2：请求已收到</li>
    <li>3：正在处理请求</li>
    <li>4：请求已完成且响应已就绪</li>
    </ul>
</td>
</tr>


<tr>
<td>responseText</td>
<td>以字符串返回响应数据</td>
</tr>

<tr>
<td>responseXML</td>
<td>以 XML 数据返回响应数据</td>
</tr>

<tr>
<td>status</td>
<td>
<p>返回请求的状态号</p>

<ul class="listintable">
<li>200: "OK"</li>
<li>403: "Forbidden"</li>
<li>404: "Not Found"</li>
</ul>

<p>如需完整列表请访问 <a href="/tags/html_ref_httpmessages.asp" title="HTTP 状态消息">Http 消息参考手册</a></p>
</td>
</tr>

<tr>
<td>statusText</td>
<td>返回状态文本（比如 "OK" 或 "Not Found"）</td>
</tr>
</tbody></table>


# IDEA中项目报ClassNotFoundException异常的解决方案
   
   https://wenku.baidu.com/view/f1f552af87868762caaedd3383c4bb4cf7ecb7e5.html