<%--
  Created by IntelliJ IDEA.
  User: yuan
  Date: 18-7-16
  Time: 下午4:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="layui-v2.3.0/layui/css/layui.css" media="all">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="layui-v2.3.0/layui/layui.js"></script>
    <script src="js/checkuser.js"></script>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/reset.css">
</head>
<body>
    <div class="title">
        <h1>Fashionmania购物网站</h1>
    </div>
<div id="window" style="">

    <div class="page page-front">
        <h1>管理员登录</h1>
        <br>
        <br>
        <form class="layui-form" action="" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input type="text" name="username" required lay-verify="username" placeholder="请输入用户名" autocomplete="off" class="layui-input username">
                    <%--<br>--%>
                    <%--<span id="ud">请输入用户名</span>--%>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block">
                    <input type="password" name="password" required lay-verify="password" placeholder="请输入密码" autocomplete="off" class="layui-input password">
                    <br>
                    <span id="pd">请输入密码</span>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button id="loginsubimt" class="layui-btn" lay-submit lay-filter="formDemo" lay-verify="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    <%--<button type="button" onclick="selectRole()" class="layui-btn layui-btn-primary layui-btn-radius">注册用户?</button>--%>
                </div>
            </div>
        </form>
    </div>
</div>
<%--<div class="layui-row" id="popSearchRoleTest" style="display:none;">--%>
    <%--/regist.jsp--%>
<%--</div>--%>
<%--<script>--%>
    <%--function selectRole(){--%>
        <%--layer.open({--%>
            <%--//layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）--%>
            <%--type:2,--%>
            <%--title:"注册用户",--%>
            <%--area: ['35%','85%'],--%>
            <%--content:$("#popSearchRoleTest").html()--%>
        <%--});--%>
    <%--}--%>
<%--</script>--%>
</body>
</html>
