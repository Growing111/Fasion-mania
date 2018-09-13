<%--
  Created by IntelliJ IDEA.
  User: yuan
  Date: 18-8-15
  Time: 下午3:00
  To change this template use File | Settings | File Templates.
--%>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>Account</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Fashion Mania Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- start menu -->
    <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/memenu.js"></script>
    <script>$(document).ready(function(){$(".memenu").memenu();});</script>
    <script src="js/simpleCart.min.js"> </script>
    <style type="text/css">
        #passwordcheck{
            color: red;
            font-size: 15px;
        }
        #emailcheck{
            color: red;
            font-size: 15px;
        }
    </style>
    <script>
        var check1;
        var check2;
        $(document).ready(function () {
            $("#email").change(function () {
                var email=$("#email").val();
                if(email.length==0){
                    $("#emailcheck").html("邮箱不能为空");
                }else{
                    $("#emailcheck").html("");
                    check1=1;
                }
            });

            $("#password").change(function () {
                $.ajax({
                    url:'/login',
                    data:{email:$("#email").val(),password:$("#password").val()},
                    success:function (result) {
                        if(result=="error"){
                            $("#passwordcheck").html("密码或用户名错误");
                        }else {
                            $("#passwordcheck").html("");
                            check2=1;
                        }
                    },
                    error:function () {
                      alert("error")
                    }
                });
            })
        });
        function check() {
            if(check1==1&&check2==1){
                return true;
                }else {
                    return false;
                }
        }
    </script>
    <!-- slide -->
</head>
<body>
<!--header-->
<div class="header">
    <div class="header-top">
        <div class="container">
            <div class="col-sm-4 world">
            </div>
            <div class="col-sm-4 logo">
                <a href="index.html"><img src="images/logo.png" alt=""></a>
            </div>
            <div class="col-sm-4 header-left">
                <c:choose>
                    <c:when test="${!empty user}">
                        <p class="log"><a href="/findAllOrder?u_id=${user.id}">${user.nickname}</a>
                            <span>|</span><a href="/exit">退出</a></p>
                    </c:when>
                    <c:otherwise>
                        <p class="log"><a href="account.jsp">登录</a>
                            <span>|</span><a  href="register.jsp">注册</a></p>
                    </c:otherwise>
                </c:choose>
                <div class="cart box_1">
                    <c:if test="${not empty user}">
                    <a href="/displaycar?u_id=${user.id}">
                        </c:if>
                        <h3> <div class="total">
                            <span class="simpleCart_total"></span></div>
                            <img src="images/cart.png" alt=""/></h3>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">空购物车</a></p>

                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="container">
        <div class="head-top">
            <div class="col-sm-2 number">
                <span><i class="glyphicon glyphicon-phone"></i>151-1234-5678</span>
            </div>
            <div class="col-sm-8 h_menu4">
                <ul class="memenu skyblue">
                    <li class=" grid"><a  href="index.html">主页</a></li>
                    <li><a  href="#">男装</a>
                        <div class="mepanel">
                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>所有的衣服</h4>
                                        <ul>
                                            <li><a href="/findAll?sex=男&leixing=T恤">T恤</a></li>
                                            <li><a href="/findAll?sex=男&leixing=运动服">运动服</a></li>
                                            <li><a href="/findAll?sex=男&leixing=衬衫">衬衫</a></li>
                                            <li><a href="/findAll?sex=男&leixing=牛仔裤">牛仔裤</a></li>
                                            <li><a href="/findAll?sex=男&leixing=小西装">小西装</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col1">
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>鞋类</h4>
                                        <ul>
                                            <li><a href="/findAll?sex=男&leixing=篮球鞋">篮球鞋</a></li>
                                            <li><a href="/findAll?sex=男&leixing=皮鞋">皮鞋</a></li>
                                            <li><a href="/findAll?sex=男&leixing=运动鞋">运动鞋</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="grid"><a href="#">女装</a>
                        <div class="mepanel">
                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>所有的衣服</h4>
                                        <ul>
                                            <li><a href="/findAll?sex=女&leixing=T恤">T恤</a></li>
                                            <li><a href="/findAll?sex=女&leixing=运动服">运动服</a></li>
                                            <li><a href="/findAll?sex=女&leixing=衬衫">衬衫</a></li>
                                            <li><a href="/findAll?sex=女&leixing=运动裤">运动裤</a></li>
                                            <li><a href="/findAll?sex=女&leixing=牛仔裤">牛仔裤</a></li>
                                            <li><a href="/findAll?sex=女&leixing=裙子">裙子</a></li>
                                            <li><a href="/findAll?sex=女&leixing=连衣裙">连衣裙</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col1">
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>鞋类</h4>
                                        <ul>
                                            <li><a href="/findAll?sex=女&leixing=帆布鞋">帆布鞋</a></li>
                                            <li><a href="/findAll?sex=女&leixing=高跟鞋">高跟鞋</a></li>
                                            <li><a href="/findAll?sex=女&leixing=运动鞋">运动鞋</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li><a  href="typo.html">推送</a></li>
                    <li><a class="color6" href="contact.jsp">联系我们</a></li>
                </ul>
            </div>
            <div class="col-sm-2 search">
                <a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a>
            </div>
            <div class="clearfix"> </div>
            <!---pop-up-box---->
            <script type="text/javascript" src="js/modernizr.custom.min.js"></script>
            <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
            <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
            <!---//pop-up-box---->
            <div id="small-dialog" class="mfp-hide">
                <div class="search-top">
                    <div class="login">
                        <input type="submit" value="">
                        <input type="text" value="Type something..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}">
                    </div>
                    <p>	Shopping</p>
                </div>
            </div>
            <script>
                $(document).ready(function() {
                    $('.popup-with-zoom-anim').magnificPopup({
                        type: 'inline',
                        fixedContentPos: false,
                        fixedBgPos: true,
                        overflowY: 'auto',
                        closeBtnInside: true,
                        preloader: false,
                        midClick: true,
                        removalDelay: 300,
                        mainClass: 'my-mfp-zoom-in'
                    });

                });
            </script>
            <!---->
        </div>
    </div>
</div>
<!--//header-->
<div class="account">
    <div class="container">
        <h1>登录</h1>
        <div class="account_grid">
            <div class="col-md-6 login-right">
                <form action="/index" method="post">
                    <span>电子邮箱</span>
                    <input type="text" name="email" id="email">
                    <span id="emailcheck"></span>
                    <span>密码</span>
                    <input type="password" name="password" id="password">
                    <span id="passwordcheck"></span>
                    <div class="word-in">
                        <a class="forgot" href="#">忘记密码?</a>
                        <input type="submit" value="登录" onclick="return check()">
                    </div>
                </form>
            </div>
            <div class="col-md-6 login-left">
                <h4>新客户</h4>
                <p>通过在我们的商店中创建帐户，您可以更快地完成结帐流程，存储多个送货地址，查看和跟踪您帐户中的订单等。</p>
                <a class="acount-btn" href="register.jsp">创建新用户</a>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--footer-->
<div class="footer">
    <div class="footer-bottom">
        <div class="clearfix"> </div>
        <p class="footer-class">Copyright &copy; 2015.Company name All rights reserved.</p>
    </div>
</div>
<!--//footer-->
</body>
</html>
