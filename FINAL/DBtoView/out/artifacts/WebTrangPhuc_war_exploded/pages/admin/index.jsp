<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: noowaay
  Date: 02/06/2016
  Time: 1:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Admin">
    <meta name="author" content="TOTAN">
    <link rel="shortcut icon" href="/admin/img/favicon.png">

    <title>Admin WebTrangPhuc</title>

    <!-- Bootstrap CSS -->
    <link href="/admin/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="/admin/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="/admin/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="/admin/css/font-awesome.min.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="/admin/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="/admin/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="/admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="/admin/css/owl.carousel.css" type="text/css">
    <link href="/admin/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
    <link rel="stylesheet" href="/admin/css/fullcalendar.css">
    <link href="/admin/css/widgets.css" rel="stylesheet">
    <link href="/admin/css/style.css" rel="stylesheet">
    <link href="/admin/css/style-responsive.css" rel="stylesheet" />
    <link href="/admin/css/xcharts.min.css" rel=" stylesheet">
    <link href="/admin/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="/admin/js/html5shiv.js"></script>
    <script src="/admin/js/respond.min.js"></script>
    <script src="/admin/js/lte-ie7.js"></script>
    <![endif]-->
</head>

<body>
<!-- container section start -->
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
                                <img alt="" src="img/avatar1_small.jpg">
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
                            <a href="#"><i class="icon_key_alt"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
                <!-- user login dropdown end -->
            </ul>
            <!-- notificatoin dropdown end-->
        </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
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
                        <li><a class="" href="admin/categories"><i class="fa fa-angle-double-right"></i>Categories</a></li>
                        <li><a class="" href="admin/products"><i class="fa fa-angle-double-right"></i>Products</a></li>
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
                        <li><a class="" href="admin/orders"><i class="fa fa-angle-double-right"></i>Orders</a></li>
                        <li><a class="" href="admin/customers"><i class="fa fa-angle-double-right"></i>Customers</a></li>
                    </ul>
                </li>

                <li>
                    <a class="" href="contacts">
                        <i class="icon_document_alt"></i>
                        <span>Contact</span>
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
            <!--overview start-->
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="index">Home</a></li>
                        <li><i class="fa fa-laptop"></i>Dashboard</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="info-box blue-bg">
                        <i class="fa fa-user"></i>
                        <div class="count"><s:property value="countCustomer" /></div>
                        <div class="title">Customers</div>
                    </div><!--/.info-box-->
                </div><!--/.col-->

                <%--<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="info-box brown-bg">
                        <i class="fa fa-shopping-cart"></i>
                        <div class="count">0</div>
                        <div class="title">PURCHASED</div>
                    </div><!--/.info-box-->
                </div><!--/.col-->--%>

                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="info-box dark-bg">
                        <i class="fa fa-thumbs-o-up"></i>
                        <div class="count"><s:property value="countOrder" /></div>
                        <div class="title">ORDER</div>
                    </div><!--/.info-box-->
                </div><!--/.col-->

                <%--<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="info-box green-bg">
                        <i class="fa fa-eye"></i>
                        <div class="count">0</div>
                        <div class="title">People Online</div>
                    </div><!--/.info-box-->
                </div><!--/.col-->--%>

            </div><!--/.row-->

            <!-- Today status end -->

            <div class="row">

                <div class="col-lg-9 col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="height: 10px;">
                            <h2><i class="fa fa-flag-o red"></i><strong>List Orders</strong></h2>

                        </div>
                        <div class="panel-body">
                            <table class="table bootstrap-datatable countries">
                                <thead>
                                    <th>Order ID</th>
                                    <th>Customer</th>
                                    <th>Date Added</th>
                                    <th>Total</th>
                                    <%--<th  class="text-right">Action</th>--%>
                                </tr>
                                </thead>
                                <tbody>
                                    <s:iterator value="listDto">
                                        <tr>
                                            <td><s:property value="order.orderId"/></td>
                                            <td><s:property value="order.customers.name"/></td>
                                            <td><s:property value="order.orderDate"/></td>
                                            <td><s:property value="total"/></td>
                                            <%--<td class="text-right">
                                                <a href="#" data-toggle="tooltip" title="View" class="btn btn-info" data-original-title="View"><i class="fa fa-eye"></i></a>
                                            </td>--%>
                                        </tr>
                                    </s:iterator>


                                </tbody>
                            </table>
                        </div>

                    </div>

                </div><!--/col-->
            </div>
            <!-- statics end -->

        </section>
    </section>
    <!--main content end-->
</section>
<!-- container section start -->

<!-- javascripts -->
<script src="/admin/js/jquery.js"></script>
<script src="/admin/js/jquery-ui-1.10.4.min.js"></script>
<script src="/admin/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/admin/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="/admin/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="/admin/js/jquery.scrollTo.min.js"></script>
<script src="/admin/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="/admin/assets/jquery-knob/js/jquery.knob.js"></script>
<script src="/admin/js/jquery.sparkline.js" type="text/javascript"></script>
<script src="/admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="/admin/js/owl.carousel.js" ></script>
<!-- jQuery full calendar -->
<<script src="/admin/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
<script src="/admin/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="/admin/js/calendar-custom.js"></script>
<script src="/admin/js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="/admin/js/jquery.customSelect.min.js" ></script>
<script src="/admin/assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="/admin/js/scripts.js"></script>
<!-- custom script for this page-->
<script src="/admin/js/sparkline-chart.js"></script>
<script src="/admin/js/easy-pie-chart.js"></script>
<script src="/admin/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/admin/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="/admin/js/xcharts.min.js"></script>
<script src="/admin/js/jquery.autosize.min.js"></script>
<script src="/admin/js/jquery.placeholder.min.js"></script>
<script src="/admin/js/gdp-data.js"></script>
<script src="/admin/js/morris.min.js"></script>
<script src="/admin/js/sparklines.js"></script>
<script src="/admin/js/charts.js"></script>
<script src="/admin/js/jquery.slimscroll.min.js"></script>
<script>

    //knob
    $(function() {
        $(".knob").knob({
            'draw' : function () {
                $(this.i).val(this.cv + '%')
            }
        })
    });

    //carousel
    $(document).ready(function() {
        $("#owl-slider").owlCarousel({
            navigation : true,
            slideSpeed : 300,
            paginationSpeed : 400,
            singleItem : true

        });
    });

    //custom select box

    $(function(){
        $('select.styled').customSelect();
    });

    /* ---------- Map ---------- */
    $(function(){
        $('#map').vectorMap({
            map: 'world_mill_en',
            series: {
                regions: [{
                    values: gdpData,
                    scale: ['#000', '#000'],
                    normalizeFunction: 'polynomial'
                }]
            },
            backgroundColor: '#eef3f7',
            onLabelShow: function(e, el, code){
                el.html(el.html()+' (GDP - '+gdpData[code]+')');
            }
        });
    });



</script>

</body>
</html>
