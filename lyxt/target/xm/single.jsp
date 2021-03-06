<%--
  Created by IntelliJ IDEA.
  User: yuan
  Date: 18-8-16
  Time: 下午4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>Single</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <script src="js/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Fashion Mania Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <style type="text/css">
        H7{
            color:#52D0C4;
            font-size:18px;
        }
    </style>
    <script>
        $(document).ready(function () {
            var list="${shop.picture}".split(';');
            $(".slides li:eq(0)").attr("data-thumb","/images/shop"+list[0]+"");
            $(".slides li:eq(0) div img").attr("src","/images/shop"+list[0]+"");
            $(".slides li:eq(1)").attr("data-thumb","/images/shop"+list[1]+"");
            $(".slides li:eq(1) div img").attr("src","/images/shop"+list[1]+"");
            $(".slides li:eq(2)").attr("data-thumb","/images/shop"+list[2]+"");
            $(".slides li:eq(2) div img").attr("src","/images/shop"+list[2]+"");
            $.ajax({
               url:'/getcanshu',
               data:{s_id:${shop.id}},
               success:function (result) {
                   var canshu=result.split(";");
                   var color=canshu[0].split(",");
                   var size=canshu[1].split(",");
                   for(var i=0;i<size.length-1;i++) {
                       $(".available ul li:eq(0) select").append("<option>"+size[i]+"</option>")
                   }
                   for(var i=0;i<color.length-1;i++) {
                       $(".available ul li:eq(1) select").append("<option>"+color[i]+"</option>")
                   }
               },
               error:function () {
                   alert("error");
               }
            });
            $(".available a:eq(0)").click(function () {
                var a1 = $(".available ul li:eq(0) select option:selected").val();
                var a2 = $(".available ul li:eq(1) select option:selected").val();
                var a3 = $(".available ul li:eq(2) select option:selected").val();
                window.location.href = "/dobuy?s_id=${shop.id}&size="+a1+"&color="+a2+"&count="+a3+"";
            });

            $(".available a:eq(1)").click(function () {
//                var a1 = $(".available ul li:eq(0) select option:selected").val();
//                var a2 = $(".available ul li:eq(1) select option:selected").val();
                window.location.href = "/addcar?s_id=${shop.id}&u_id=${user.id}";
            });
        });
    </script>
    <!---->
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
<!---->
<div class="single">
    <div class="container">
        <div class="col-md-9">
            <div class="col-md-5 grid">
                <div class="flexslider">
                    <ul class="slides">
                        <li class="sdip" data-thumb="images/si.jpg">
                            <div class="thumb-image">
                                <img src="images/si.jpg" data-imagezoom="true" class="img-responsive bdip">
                            </div>
                        </li>
                        <li class="sdip" data-thumb="images/si1.jpg">
                            <div class="thumb-image">
                                <img src="images/si1.jpg" data-imagezoom="true" class="img-responsive bdip">
                            </div>
                        </li>
                        <li class="sdip" data-thumb="images/si2.jpg">
                            <div class="thumb-image">
                                <img src="images/si2.jpg" data-imagezoom="true" class="img-responsive">
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-7 single-top-in">
                <div class="single-para simpleCart_shelfItem">
                    <h1>${shop.name}</h1>
                    <p>${shop.descrip}</p>
                    <div class="star-on">
                        <ul>
                            <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                        </ul>
                        <div class="review">
                            <a href="#"> 3 reviews </a>/
                            <a href="#"> Write a review</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                    <label  class="add-to item_price">￥${shop.price}</label>
                    <div class="available">
                        <ul>
                            <li><h7>尺寸:</h7>
                                <select>
                                </select>
                            </li>
                            <li><h7>颜色:</h7>
                                <select>
                                </select>
                            </li>
                            <li>
                                <h7>数量：</h7>
                                <select>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                </select>
                            </li>
                        </ul>
                        <a href="javascript:0" class="cart buy">立即购买</a>
                        <a href="javascript:0" class="cart item_add">加入购物车</a>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
            <div class="content-top1">
                <br>
                <br>
                <br>
                <div class="col-md-4 col-md3">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="single.html">
                            <img class="img-responsive" src="images/pi6.png" alt="" />
                        </a>
                        <h3><a href="single.html">Jeans</a></h3>
                        <div class="price">
                            <h5 class="item_price">$300</h5>
                            <a href="#" class="item_add">加入购物车</a>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-md3">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="single.html">
                            <img class="img-responsive" src="images/pi7.png" alt="" />
                        </a>
                        <h3><a href="single.html">Tops</a></h3>
                        <div class="price">
                            <h5 class="item_price">$300</h5>
                            <a href="#" class="item_add">加入购物车</a>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-md3">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="single.html">
                            <img class="img-responsive" src="images/pi.png" alt="" />
                        </a>
                        <h3><a href="single.html">Tops</a></h3>
                        <div class="price">
                            <h5 class="item_price">$300</h5>
                            <a href="#" class="item_add">加入购物车</a>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
        <!----->
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
                            <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="single.html">Automatic Fails </a></li>
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
<!--footer-->
<div class="footer">
    <div class="footer-bottom">
        <div class="clearfix"> </div>
        <p class="footer-class">Copyright &copy; 2015.Company name All rights reserved.</p>
    </div>
</div>
<!--//footer-->
<script src="js/jquery.min.js"></script>
<script src="js/imagezoom.js"></script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>
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
<!-- FlexSlider -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
    // Can also be used with $(document).ready()
    $(window).load(function() {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
</script>
<!---pop-up-box---->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<!---//pop-up-box---->
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
</body>
</html>
