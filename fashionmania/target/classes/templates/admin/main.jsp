<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <link rel="stylesheet" href="layui-v2.3.0/layui/css/layui.css">
    <link rel="stylesheet" href="css/main.css">
    <script src="js/jquery-3.2.1.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">Fashionmania购物网站</div>
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item fortab checked prepaids">
                <a class="changeuserinfo" href="#">所有商品</a>
            </li>
            <li class="layui-nav-item fortab prepaids">
                <a class="uploadphoto" href="#">查看所有的订单</a>
            </li>
            <li class="layui-nav-item fortab prepaids">
                <a class="updatepsw" href="#">查看所有留言</a>
            </li>
            <li class="layui-nav-item fortab prepaids">
                <a class="lookupall" href="#">查看所有的用户</a>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="/admin/images/heh1.jpg" height="100%" class="layui-nav-img">
                    ${admin.username}
                </a>
            </li>
            <li class="layui-nav-item">
                <a href="/adminexit" >退出登录</a>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">所有商品</a>
                    <%--<dl class="layui-nav-child">--%>
                        <%--<dd><a href="javascript:;">列表一</a></dd>--%>
                        <%--<dd><a href="javascript:;">列表二</a></dd>--%>
                        <%--<dd><a href="javascript:;">列表三</a></dd>--%>
                        <%--<dd><a href="">超链接</a></dd>--%>
                    <%--</dl>--%>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">查看所有的订单</a>

                </li>
                <li class="layui-nav-item"><a href="javascript:;">查看所有留言</a></li>
                <li class="layui-nav-item"><a href="javascript:;">查看所有的用户</a></li>
            </ul>
        </div>

    </div>
    <div class="layui-body">
        <div class="layui-carousel" id="test1">
            <div carousel-item>
                <div>
                    <img src="images/i4.jpg">
                </div>
                <div>
                    <img src="images/i1.jpg">
                </div>
                <div>
                    <img src="images/i2.jpg">
                </div>
                <div>
                    <img src="images/i3.jpg">
                </div>
            </div>
        </div>

        <div class="tablelist hidedomdiv">
            <iframe src="/admin/allshop.jsp"></iframe>
        </div>
        <div class="tablelist hidedomdiv">
            <iframe src="/admin/allorder.jsp"></iframe>
        </div>
        <div class="tablelist hidedomdiv">
            <iframe src="/admin/allliuyan.jsp"></iframe>
        </div>
        <div class="tablelist hidedomdiv">
            <%--<iframe src="/DoSelectAll"></iframe>--%>
            <iframe src="/admin/alluser.jsp"></iframe>
        </div>

    </div>
    <div class="layui-footer">
        fashion后台管理系统！！
    </div>
</div>
<script src="layui-v2.3.0/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;
    });
    $(".fortab").click(function () {
        var number = $(".fortab").index(this);
        $(this).addClass("checked");
        $(this).siblings().removeClass("checked");
        $(".tablelist:eq(" + number + ")").show();
        $(".tablelist:eq(" + number + ")").siblings().hide();
    });
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,height: '100%'
            ,arrow: 'hover' //始终显示箭头
        });
    });
</script>
</body>

</html>