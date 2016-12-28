<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="css" fragment="true" %>
<%@attribute name="js" fragment="true" %>
<%@attribute name="page_title" fragment="true" %>

<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:basic>
    <jsp:attribute name="css">
      <jsp:invoke fragment="css"/>
    </jsp:attribute>

    <jsp:attribute name="js">
      <jsp:invoke fragment="js"/>
    </jsp:attribute>

    <jsp:body>
        <header id="header"><!--header-->
            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="/"><img src="${pageContext.request.contextPath}/images/home/logo.jpg" alt="" /></a>
                            </div>
                            <div class="btn-group pull-right">
                                <%--<div class="btn-group">--%>
                                    <%--<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">--%>
                                        <%--Viet--%>
                                        <%--<span class="caret"></span>--%>
                                    <%--</button>--%>
                                    <%--<ul class="dropdown-menu">--%>
                                        <%--<li><a href="#">US</a></li>--%>
                                        <%--<li><a href="#">UK</a></li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>

                                <%--<div class="btn-group">--%>
                                    <%--<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">--%>
                                        <%--VND--%>
                                        <%--<span class="caret"></span>--%>
                                    <%--</button>--%>
                                    <%--<ul class="dropdown-menu">--%>
                                        <%--<li><a href="#">US</a></li>--%>
                                        <%--<li><a href="#">EURO</a></li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <s:if test="#session.userName != null">
                                        <li><a href=""><i class="fa fa-user"></i>Chào ${userName}</a></li>
                                    </s:if>
                                    <li><s:a action="checkout" namespace="/orders"><i class="fa fa-crosshairs"></i> Thông tin</s:a></li>
                                    <li><s:a action="viewCart" namespace="/orders"><i class="fa fa-shopping-cart"></i> Giỏ hàng</s:a></li>
                                    <s:if test="#session.userName == null">
                                        <li><s:a action="viewLogin" namespace="/users"><i class="fa fa-lock"></i> Đăng nhập</s:a></li>
                                    </s:if>
                                    <s:else>
                                        <li><s:a action="logout" namespace="/users"><i class="fa fa-lock"></i> Đăng xuất</s:a></li>
                                    </s:else>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->

            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li><s:a href="/" class="active">Trang chủ</s:a></li>
                                    <%--<li class="dropdown"><a href="#">Bài viết<i class="fa fa-angle-down"></i></a>--%>
                                        <%--<ul role="menu" class="sub-menu">--%>
                                            <%--<li><s:a action="blog_list" namespace="/blog">Bài viết về sản phẩm</s:a></li>--%>
                                            <%--<li><s:a action="blog_list" namespace="/blog">Bài viết về cửa hàng</s:a></li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <li><s:a action="viewContact">Liên hệ</s:a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="search_box pull-right">
                                <input type="text" placeholder="Search"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->
        </header><!--/header-->

        <div id="body">
            <jsp:doBody/>
        </div>

        <div id="pagefooter">
            <footer id="footer"><!--Footer-->
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-2">
                                <div class="companyinfo">
                                    <h2><span>l</span>-shop</h2>
                                    <p>Cửa hàng chúng tôi chuyên cung cấp các loại trang phục đủ loại</p>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="address">
                                    <img src="${pageContext.request.contextPath}/images/home/map.png" alt="" />
                                    <p> 1 Trần Hưng Đạo q3</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="footer-widget">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-2">
                                <div class="single-widget">
                                    <h2>Dịch vụ</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="#">Trợ giúp Online</a></li>
                                        <li><a href="#">Kết nối chúng tôi</a></li>
                                        <li><a href="#">Hướng dẫn mua hàng</a></li>
                                        <li><a href="#">Hướng dẫn thanh toán</a></li>
                                        <li><a href="#">Ý kiến khách hàng</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-sm-2">
                                <div class="single-widget">
                                    <h2>Hợp tác</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="#">Hợp tác kinh doanh</a></li>
                                        <li><a href="#">Liên hệ hợp tác</a></li>
                                        <li><a href="#">Tuyển dụng</a></li>

                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="single-widget">
                                    <h2>Về chúng tôi</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="#">Liên hệ</a></li>
                                        <li><a href="#">Điều khoản sử dụng</a></li>
                                        <li><a href="#">Chính sách bảo mật</a></li>
                                        <li><a href="#">Chính sách bảo mật thông tin</a></li>
                                        <li><a href="#">Copyright</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-3 col-sm-offset-1">
                                <div class="single-widget">
                                    <h2>Về cửa hàng</h2>
                                    <form action="#" class="searchform">
                                        <input type="text" placeholder="Địa chỉ Email của bạn" />
                                        <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                                        <p>Nhận ngay những ưu đãi hấp dẫn và xu hướng mới...</p>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <p class="pull-left">Copyright © 2015. All rights reserved.</p>
                            <p class="pull-right">Designed by <span><a target="_blank" href="http://www.google.com">G19</a></span></p>
                        </div>
                    </div>
                </div>

            </footer><!--/Footer-->
        </div>
    </jsp:body>
</t:basic>
