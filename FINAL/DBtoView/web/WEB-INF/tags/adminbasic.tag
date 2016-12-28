<%@tag description="Header template" pageEncoding="UTF-8"%>
<%@attribute name="css" fragment="true" %>
<%@attribute name="js" fragment="true" %>
<%@attribute name="page_title" fragment="true" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/admin/img/favicon.png">
    <title><jsp:invoke fragment="page_title"/></title>
    <!-- Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/admin/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="${pageContext.request.contextPath}/admin/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="${pageContext.request.contextPath}/admin/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/css/font-awesome.min.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="${pageContext.request.contextPath}/admin/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="${pageContext.request.contextPath}/admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/owl.carousel.css" type="text/css">
    <link href="${pageContext.request.contextPath}/admin/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/fullcalendar.css">
    <link href="${pageContext.request.contextPath}/admin/css/widgets.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/admin/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/admin/css/style-responsive.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/css/xcharts.min.css" rel=" stylesheet">
    <link href="${pageContext.request.contextPath}/admin/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <jsp:invoke fragment="css"/>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/admin/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/respond.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/lte-ie7.js"></script>
    <![endif]-->
</head><!--/head-->

<body>
    <jsp:doBody/>


    <!-- javascripts -->
    <script src="${pageContext.request.contextPath}/admin/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery-ui-1.10.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="${pageContext.request.contextPath}/admin/js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="${pageContext.request.contextPath}/admin/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="${pageContext.request.contextPath}/admin/assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/owl.carousel.js" ></script>
    <!-- jQuery full calendar -->
    <<script src="${pageContext.request.contextPath}/admin/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
    <script src="${pageContext.request.contextPath}/admin/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="${pageContext.request.contextPath}/admin/js/calendar-custom.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="${pageContext.request.contextPath}/admin/js/jquery.customSelect.min.js" ></script>
    <script src="${pageContext.request.contextPath}/admin/assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="${pageContext.request.contextPath}/admin/js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="${pageContext.request.contextPath}/admin/js/sparkline-chart.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/xcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery.autosize.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery.placeholder.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/gdp-data.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/sparklines.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/charts.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery.slimscroll.min.js"></script>
    <jsp:invoke fragment="js"/>
</body>
</html>