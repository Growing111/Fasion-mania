<%--
  Created by IntelliJ IDEA.
  User: yuan
  Date: 18-8-21
  Time: 下午3:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>buy</title>
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
    <script>
        $(document).ready(function () {
            $(".ring-in img").attr("src","images/shop/${shop.picture.split(";")[0]}");
            $(".sed h5").html("${shop.name}");
            $(".sed p").html("${shop.descrip}");
            $("#table .A1>td:nth-child(4)").html("尺寸：${shop.size}<br>颜色:${shop.color}");
            $("#table .A1>td:nth-child(5)").html("￥${shop.price}");
            $("#table .A1>td:nth-child(6)").html("${shop.count}");
            $("#table .A1>td:nth-child(7)").html("${user.nickname}");
            $("#table .A1>td:nth-child(8)").html("￥${shop.price*shop.count}");
            $("#table .A3>td:nth-child(6)").html("店铺合计(含运费):￥${shop.price*shop.count}");
            $(".check-out span").html("￥${shop.price*shop.count}");

            $(".to-buy").click(function () {
                var address=$("#address").val();
                if(address!=""&&address!=" "){
                   window.location.href="/dopay?u_id=${user.id}&address="+address+"&count=${shop.count}&s_id=${shop.id}&color=${shop.color}&size=${shop.size}&price=${shop.price}";
                }else {
                    alert("请输入收货地址");
                }
            })
        });

    </script>
    <!-- slide -->
</head>
<body>
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

</div>
<div class="container">
    <div class="check-out">
        <h1>确认订单</h1>
        <table id="table" border rules=rows cellspacing=0 align=right>
            <tr>
                <th>订单</th>
                <th>商品</th>
                <th>收货地址</th>
                <th>参数</th>
                <th>单价</th>
                <th>数量</th>
                <th>收件人</th>
                <th>总价</th>
            </tr>
            <tr class="A1">
                <td>1</td>
                <td class="ring-in">
                    <a href="#" class="at-in">
                        <img src="" class="img-responsive" alt=""></a>
                    <div class="sed">
                        <h5></h5>
                        <p></p>
                    </div>
                    <div class="clearfix"></div>
                </td>
                <td><input type="text" name="address" id="address"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td colspan="2" height="80px">运费：￥0</td>
            </tr>
            <tr class="A3">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td colspan="3" height="80px"></td>
            </tr>
        </table>
        实付款：<span style="color: red;font-size: 30px"></span><br>
        <a href="javascript:0" class="to-buy">提交订单</a>
        <!--footer-->
        <div class="footer">
            <div class="footer-bottom">
                <br>
                <br>
                <hr>
                <p class="footer-class">Copyright &copy; 2015.Company name All rights reserved.</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
