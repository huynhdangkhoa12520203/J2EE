<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="css" fragment="true" %>
<%@attribute name="js" fragment="true" %>
<%@attribute name="page_title" fragment="true" %>

<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:adminbasic>
    <jsp:attribute name="css">
      <jsp:invoke fragment="css"/>
    </jsp:attribute>

    <jsp:attribute name="js">
      <jsp:invoke fragment="js"/>
    </jsp:attribute>

    <jsp:body>
        <section id="container" class="">
            <header class="header dark-bg">
                <div class="toggle-nav">
                    <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
                </div>

                <!--logo start-->
                <a href="index" class="logo"> <span class="lite">Admin</span></a>
                <!--logo end-->

                <div class="top-nav notification-row">
                    <!-- notificatoin dropdown start-->
                    <ul class="nav pull-right top-menu">

                        <!-- user login dropdown start-->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="/admin/img/avatar1_small.jpg">
                            </span>
                                <span class="username">Admin</span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                                <li class="eborder-top">
                                    <a href="#"><i class="icon_profile"></i> My Profile</a>
                                </li>

                                <li>
                                    <a href="login"><i class="icon_key_alt"></i> Log Out</a>
                                </li>
                            </ul>
                        </li>
                        <!-- user login dropdown end -->
                    </ul>
                    <!-- notificatoin dropdown end-->
                </div>
            </header>
            <!--header end-->

            <aside>
                <div id="sidebar"  class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu">
                        <li class="active">
                            <a class="" href="index">
                                <i class="icon_house_alt"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <!--<i class="icon_document_alt"></i>-->
                                <i class="fa fa-tags fa-fw"></i>
                                <span>Catalog</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li><s:a action="categories" namespace="/admin"><i class="fa fa-angle-double-right"></i>Categories</s:a></li>
                                <li><s:a action="products" namespace="/admin"><i class="fa fa-angle-double-right"></i>Products</s:a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <!--<i class="icon_document_alt"></i>-->
                                <i class="fa fa-shopping-cart fa-fw"></i>
                                <span>Sales</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li><s:a action="orders" namespace="/admin"><i class="fa fa-angle-double-right"></i>Orders</s:a></li>
                                <li><s:a action="customers" namespace="/admin"><i class="fa fa-angle-double-right"></i>Customers</s:a></li>
                            </ul>
                        </li>

                        <li>
                            <a class="" href="contacts">
                                <i class="icon_document_alt"></i>
                                <span>Contact</span>
                               <%-- <s:a action="contacts" namespace="/admin">Contact</s:a>--%>
                            </a>
                        </li>
                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->

            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <jsp:doBody/>
                </section>
            </section>

        </section>
        <!-- container section start -->
    </jsp:body>
</t:adminbasic>