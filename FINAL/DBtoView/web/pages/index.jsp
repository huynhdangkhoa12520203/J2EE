<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/1/2016
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Home Page
    </jsp:attribute>

    <jsp:body>
        <section id="slider"><!--slider-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#slider-carousel" data-slide-to="1"></li>
                                <li data-target="#slider-carousel" data-slide-to="2"></li>
                            </ol>

                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="col-sm-6">
                                        <h1><span>L</span>-SHOP</h1>
                                        <h2>Sản phẩm tiêu biểu</h2>
                                        <p>Đây là những sản phẩm tiêu biểu của cửa hàng chúng tôi. </p>
                                        <button type="button" class="btn btn-default get">Mua ngay</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="../images/home/girl1.jpg" class="girl img-responsive" alt=""/>
                                        <img src="../images/home/pricing.png" class="pricing" alt=""/>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-sm-6">
                                        <h1><span>L</span>-SHOP</h1>
                                        <h2>Sản phẩm thiết kế</h2>
                                        <p>Đây là những sản phẩm của stylist của cửa hàng thiết kế. </p>
                                        <button type="button" class="btn btn-default get">Mua ngay</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="../images/home/girl2.jpg" class="girl img-responsive" alt=""/>
                                        <img src="../images/home/pricing.png" class="pricing" alt=""/>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="col-sm-6">
                                        <h1><span>L</span>-SHOP</h1>
                                        <h2>Sản phẩm tiêu biểu</h2>
                                        <p>Đây là những sản phẩm tiêu biểu của cửa hàng chúng tôi. </p>
                                        <button type="button" class="btn btn-default get">Mua ngay</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="../images/home/girl3.jpg" class="girl img-responsive" alt=""/>
                                        <img src="../images/home/pricing.png" class="pricing" alt=""/>
                                    </div>
                                </div>

                            </div>

                            <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!--/slider-->

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Danh mục</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <s:iterator value="categoriesList">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a href="<s:url action="products_list" namespace="/products">
                                                                    <s:param name="currentCategoryId"><s:property value="categoryId"/></s:param>
                                                                </s:url>"><s:property value="categoryName"/></a></h4>
                                        </div>
                                    </div>
                                </s:iterator>
                            </div><!--/category-products-->

                            <div class="brands_products">
                                <h2>Thống kê</h2>
                                <div class="brands-name">
                                    <ul class="nav nav-pills nav-stacked">
                                        <s:iterator value="categoriesList">
                                            <li><a href=""> <span class="pull-right"><s:property value ="productses.size()"/></span><s:property value="categoryName"/></a></li>
                                        </s:iterator>
                                    </ul>
                                </div>
                            </div><!--/brands_products-->

                            <div class="price-range"><!--price-range-->
                                <h2>Giá tăng-giảm</h2>
                                <div class="well text-center">
                                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600"
                                           data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br/>
                                    <b class="pull-left">150.000</b> <b class="pull-right">6.000.000</b>
                                </div>
                            </div><!--/price-range-->

                            <div class="shipping text-center"><!--shipping-->
                                <img src="../images/home/shipping.jpg" alt=""/>
                            </div><!--/shipping-->

                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">Sản phẩm nổi bật</h2>
                            <s:iterator value="categoriesList" var="category">
                                <s:if test="#category.categoryId == 1">
                                    <s:iterator value="#category.productses">
                                        <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">

                                                    <img src="<s:property value="imageses.toArray()[0].url"/>" alt=""/>
                                                    <h2><s:property value="price.toString()"/> </h2>
                                                    <p><s:property value="productName"/></p>
                                                    <a href="<s:url action="addToCart" namespace="/orders">
                                                                    <s:param name="productID"><s:property value="productId"/></s:param>
                                                                </s:url>" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>
                                                <div class="product-overlay">
                                                    <div class="overlay-content">
                                                        <h2><s:property value="price"/></h2>
                                                        <p><s:property value="productName"/></p>
                                                        <a href="<s:url action="product_detail" namespace="/products">
                                                                    <s:param name="currentProductId"><s:property value="productId"/></s:param>
                                                                </s:url>"
                                                           class="btn btn-default add-to-cart">Thông tin sản phẩm</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                    </s:iterator>
                                </s:if>
                            </s:iterator>
                        </div>


                        <div class="category-tab">
                            <div class="col-sm-12">
                                <ul class="nav nav-tabs">
                                    <s:iterator value="categoriesList" var="category" status="status">
                                        <s:if test="#category.categoryId != 1">
                                            <li <s:if test="#status.index == 1">class = "active"</s:if>><a href="#category<s:property value="categoryId"/>" data-toggle="tab"><s:property value="categoryName"/></a></li>
                                        </s:if>
                                    </s:iterator>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <s:iterator value="categoriesList" var="category"  status="status">
                                <s:if test="#category.categoryId != 1" >
                                    <div class="tab-pane fade in <s:if test="#status.index == 1">active</s:if>" id="category<s:property value="categoryId"/>">
                                        <s:iterator value="#category.productses">
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <a href="<s:url action="product_detail" namespace="/products">
                                                                    <s:param name="currentProductId"><s:property value="productId"/></s:param>
                                                                </s:url>"> <img src="<s:property value="imageses.toArray()[0].url"/>" alt=""/></a>
                                                        <h2><s:property value="price"/></h2>
                                                        <p><s:property value="productName"/></p>
                                                        <a href="<s:url action="addToCart" namespace="/orders">
                                                                    <s:param name="productID"><s:property value="productId"/></s:param>
                                                                </s:url>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </s:iterator>
                                    </div>
                                </s:if>
                                </s:iterator>
                            </div>
                        </div><!--/category-tab-->

                        <div class="recommended_items">
                            <h2 class="title text-center">Sale off</h2>
                                        <%--<s:iterator value="listSaleOff">--%>
                                        <%--<div class="col-sm-4">--%>
                                            <%--<div class="product-image-wrapper">--%>
                                                <%--<div class="single-products">--%>
                                                    <%--<div class="productinfo text-center">--%>
                                                        <%--<a href="product-details.html"><img src="<s:iterator value="imageses">--%>
                                                <%--<s:property value="url"/>--%>
                                            <%--</s:iterator>" alt=""/></a>--%>
                                                        <%--<h2><s:property value="price"/></h2>--%>
                                                        <%--<p><s:property value="productName"/></p>--%>
                                                        <%--<a href="#" class="btn btn-default add-to-cart"><i--%>
                                                                <%--class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>--%>
                                                    <%--</div>--%>

                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--</s:iterator>--%>

                                </div>

                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </section>
    </jsp:body>

</t:genericpage>
