<%--
  Created by IntelliJ IDEA.
  User: yuan
  Date: 18-8-19
  Time: 上午10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Products</title>
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
        h3 a{
            font-size: 15px;
        }
    </style>
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
<!--content-->
<div class="products">
    <div class="container">
        <h1>产品列表</h1>
        <div class="col-md-9">
            <div class="content-top1">
                <div class="col-md-4 col-md3">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="/findshop?id=${lists[0].id}">
                            <img class="img-responsive" src="images/shop${lists[0].picture.split(";")[0]}" alt="" />
                        </a>
                        <h3><a href="/findshop?id=${lists[0].id}">${lists[0].name}</a></h3>
                        <div class="price">
                            <h5 class="item_price">￥${lists[0].price}</h5>
                            <a href="#" class="item_add">加入购物车</a>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <c:if test="${not empty lists[1].name}">
                <div class="col-md-4 col-md3">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="/findshop?id=${lists[1].id}">
                            <img class="img-responsive" src="images/shop${lists[1].picture.split(";")[0]}" alt="" />
                        </a>
                        <h3><a href="/findshop?id=${lists[1].id}">${lists[1].name}</a></h3>
                        <div class="price">
                            <h5 class="item_price">￥${lists[1].price}</h5>
                            <a href="#" class="item_add">加入购物车</a>
                            <div class="clearfix"> </div>
                        </div>

                    </div>
                </div>
                </c:if>
                <c:if test="${not empty lists[2].name}">
                    <div class="col-md-4 col-md3">
                        <div class="col-md1 simpleCart_shelfItem">
                            <a href="/findshop?id=${lists[2].id}">
                                <img class="img-responsive" src="images/shop${lists[2].picture.split(";")[0]}" alt="" />
                            </a>
                            <h3><a href="/findshop?id=${lists[2].id}">${lists[2].name}</a></h3>
                            <div class="price">
                                <h5 class="item_price">￥${lists[2].price}</h5>
                                <a href="#" class="item_add">加入购物车</a>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <div class="clearfix"> </div>
            </div>
            <div class="content-top1">
                <c:if test="${not empty lists[3].name}">
                    <div class="col-md-4 col-md3">
                        <div class="col-md1 simpleCart_shelfItem">
                            <a href="/findshop?id=${lists[3].id}">
                                <img class="img-responsive" src="images/shop${lists[3].picture.split(";")[0]}" alt="" />
                            </a>
                            <h3><a href="/findshop?id=${lists[3].id}">${lists[3].name}</a></h3>
                            <div class="price">
                                <h5 class="item_price">￥${lists[3].price}</h5>
                                <a href="#" class="item_add">加入购物车</a>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${not empty lists[4].name}">
                    <div class="col-md-4 col-md3">
                        <div class="col-md1 simpleCart_shelfItem">
                            <a href="/findshop?id=${lists[4].id}">
                                <img class="img-responsive" src="images/shop${lists[4].picture.split(";")[0]}" alt="" />
                            </a>
                            <h3><a href="/findshop?id=${lists[4].id}">${lists[4].name}</a></h3>
                            <div class="price">
                                <h5 class="item_price">￥${lists[4].price}</h5>
                                <a href="#" class="item_add">加入购物车</a>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${not empty lists[5].name}">
                    <div class="col-md-4 col-md3">
                        <div class="col-md1 simpleCart_shelfItem">
                            <a href="/findshop?id=${lists[5].id}">
                                <img class="img-responsive" src="images/shop${lists[5].picture.split(";")[0]}" alt="" />
                            </a>
                            <h3><a href="/findshop?id=${lists[5].id}">${lists[5].name}</a></h3>
                            <div class="price">
                                <h5 class="item_price">￥${lists[5].price}</h5>
                                <a href="#" class="item_add">加入购物车</a>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                </c:if>
                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="col-md-3 product-bottom">
            <!--categories-->
            <div class=" rsidebar span_1_of_left">
                <h3 class="cate">Categories</h3>
                <ul class="menu-drop">
                    <li class="item1"><a href="#">Men </a>
                        <ul class="cute">
                            <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="single.html">Automatic Fails </a></li>
                        </ul>
                    </li>
                    <li class="item2"><a href="#">Women </a>
                        <ul class="cute">
                            <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="single.html">Automatic Fails </a></li>
                        </ul>
                    </li>
                    <li class="item3"><a href="#">Kids</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="single.html">Automatic Fails</a></li>
                        </ul>
                    </li>
                    <li class="item4"><a href="#">Accesories</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="single.html">Automatic Fails</a></li>
                        </ul>
                    </li>

                    <li class="item4"><a href="#">Shoes</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.html">Automatic Fails </a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--initiate accordion-->
            <script type="text/javascript">
                $(function() {
                    var menu_ul = $('.menu-drop > li > ul'),
                        menu_a  = $('.menu-drop > li > a');
                    menu_ul.hide();
                    menu_a.click(function(e) {
                        e.preventDefault();
                        if(!$(this).hasClass('active')) {
                            menu_a.removeClass('active');
                            menu_ul.filter(':visible').slideUp('normal');
                            $(this).addClass('active').next().stop(true,true).slideDown('normal');
                        } else {
                            $(this).removeClass('active');
                            $(this).next().stop(true,true).slideUp('normal');
                        }
                    });

                });
            </script>
            <!--//menu-->
            <!--seller-->
            <div class="product-bottom">
                <h3 class="cate">Best Sellers</h3>
                <div class="product-go">
                    <div class=" fashion-grid">
                        <a href="single.html"><img class="img-responsive " src="images/pr.jpg" alt=""></a>
                    </div>
                    <div class=" fashion-grid1">
                        <h6 class="best2"><a href="single.html" >Lorem ipsum dolor sitamet consectetuer  </a></h6>
                        <span class=" price-in1"> $40.00</span>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="product-go">
                    <div class=" fashion-grid">
                        <a href="single.html"><img class="img-responsive " src="images/pr1.jpg" alt=""></a>
                    </div>
                    <div class=" fashion-grid1">
                        <h6 class="best2"><a href="single.html" >Lorem ipsum dolor sitamet consectetuer  </a></h6>
                        <span class=" price-in1"> $40.00</span>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="product-go">
                    <div class=" fashion-grid">
                        <a href="single.html"><img class="img-responsive " src="images/pr2.jpg" alt=""></a>
                    </div>
                    <div class=" fashion-grid1">
                        <h6 class="best2"><a href="single.html" >Lorem ipsum dolor sitamet consectetuer  </a></h6>
                        <span class=" price-in1"> $40.00</span>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="product-go">
                    <div class=" fashion-grid">
                        <a href="single.html"><img class="img-responsive " src="images/pr3.jpg" alt=""></a>
                    </div>
                    <div class=" fashion-grid1">
                        <h6 class="best2"><a href="single.html" >Lorem ipsum dolor sitamet consectetuer  </a></h6>
                        <span class=" price-in1"> $40.00</span>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

            <!--//seller-->
            <!--tag-->
            <div class="tag">
                <h3 class="cate">Tags</h3>
                <div class="tags">
                    <ul>
                        <li><a href="#">design</a></li>
                        <li><a href="#">fashion</a></li>
                        <li><a href="#">lorem</a></li>
                        <li><a href="#">dress</a></li>
                        <li><a href="#">fashion</a></li>
                        <li><a href="#">dress</a></li>
                        <li><a href="#">design</a></li>
                        <li><a href="#">dress</a></li>
                        <li><a href="#">design</a></li>
                        <li><a href="#">fashion</a></li>
                        <li><a href="#">lorem</a></li>
                        <li><a href="#">dress</a></li>
                        <div class="clearfix"> </div>
                    </ul>
                </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//content-->
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
