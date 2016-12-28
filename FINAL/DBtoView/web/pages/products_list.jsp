<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/1/2016
  Time: 5:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">Product List</jsp:attribute>

    <jsp:body>
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
                                            <li><a href="#"> <span class="pull-right"><s:property value ="productses.size()"/></span><s:property value="categoryName"/></a></li>
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
                                <img src="images/home/shipping.jpg" alt=""/>
                            </div><!--/shipping-->

                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center"><s:property value ="detailCategory.categoryName"/></h2>

                            <s:iterator value="detailCategory.productses">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="<s:property value="imageses.toArray()[0].url"/>" alt=""/>
                                                <h2><s:property value="price"/></h2>
                                                <p><s:property value="productName"/></p>
                                                <a href="" class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <h2><s:property value="price"/></h2>
                                                    <p><s:property value="productName"/></p>
                                                    <a href="<s:url action="addToCart" namespace="/orders">
                                                                    <s:param name="productID"><s:property value="productId"/></s:param>
                                                                </s:url>" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </s:iterator>

                            <%--<ul class="pagination">--%>
                                <%--<li class="active"><a href="">1</a></li>--%>
                                <%--<li><a href="">2</a></li>--%>
                                <%--<li><a href="">3</a></li>--%>
                                <%--<li><a href="">&raquo;</a></li>--%>
                            <%--</ul>--%>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>

</t:genericpage>