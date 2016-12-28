<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/2/2016
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Product Detail
    </jsp:attribute>

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
                                <img src="/images/home/shipping.jpg" alt=""/>
                            </div><!--/shipping-->

                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="product-details"><!--product-details-->
                            <div class="col-sm-5">
                                <div class="view-product">
                                    <img src="<s:property value="detailProduct.imageses.toArray()[0].url"/>" alt=""/>
                                    <h3>ZOOM</h3>
                                </div>
                                <div id="similar-product" class="carousel slide" data-ride="carousel">

                                    <!-- Wrapper for slides -->
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <s:iterator value="detailProduct.imageses">
                                                <a href=""><img src="<s:property value="url"/>" width="90px" alt=""></a>
                                            </s:iterator>
                                        </div>
                                    </div>

                                    <!-- Controls -->
                                    <a class="left item-control" href="#similar-product" data-slide="prev">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a class="right item-control" href="#similar-product" data-slide="next">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>

                            </div>
                            <div class="col-sm-7">
                                <div class="product-information"><!--/product-information-->
                                    <img src="/images/product-details/new.jpg" class="newarrival" alt=""/>
                                    <h2><s:property value="detailProduct.productName"/></h2>
                                    <p>Mã số: <s:property value="detailProduct.productId"/></p>
                                    <img src="/images/product-details/rating.png" alt=""/>
								<span>
									<span><s:property value="detailProduct.price"/></span>
									<label>Số lượng:</label>
									<input type="text" value="3"/>
									<a href="" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Thêm vào giỏ
									</a>
								</span>

                                    <p><b>Đơn Vị:</b> <s:property value="detailProduct.unit"/></p>
                                    <p><b>NTK:</b> <s:property value="detailProduct.suppliers.supplierName"/></p>
                                    <a href=""><img src="/images/product-details/share.png" class="share img-responsive"
                                                    alt=""/></a>
                                </div><!--/product-information-->
                            </div>
                        </div><!--/product-details-->

                        <div class="category-tab shop-details-tab"><!--category-tab-->
                            <div class="col-sm-12">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#details" data-toggle="tab">Chi tiết</a></li>
                                    <li><a href="#companyprofile" data-toggle="tab">Thông tin</a></li>
                                    <li><a href="#tag" data-toggle="tab">Tag</a></li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="details">
                                    <h2>Chi tiết sản phẩm</h2>
                                    <p>Tên sản phẩm: <s:property value="detailProduct.productName"/></p>
                                    <p>Mã số: <s:property value="detailProduct.productId"/></p>
                                    <p>Rating:<img src="/images/product-details/rating.png" alt=""/></p>
									<p>Giá: <s:property value="detailProduct.price"/></p>
                                    <p><b>Đơn Vị:</b> <s:property value="detailProduct.unit"/></p>
                                    <p><b>Phân Loại: </b> <s:property value="detailProduct.categories.categoryName"/></p>
                                    <p><b>NTK:</b> <s:property value="detailProduct.suppliers.supplierName"/></p>
                                    <a href=""><img src="/images/product-details/share.png" class="share img-responsive" alt=""/></a>
                                </div>

                                <div class="tab-pane fade" id="companyprofile">
                                    <h2>Thông tin nhà cung cấp</h2>
                                    <p><b>Tên nhà cung cấp:</b> <s:property value="detailProduct.suppliers.supplierName"/></p>
                                    <p><b>Địa chỉ: </b> <s:property value="detailProduct.suppliers.address"/></p>
                                    <p><b>Thành phố: </b> <s:property value="detailProduct.suppliers.city"/></p>
                                    <p><b>Khu vực: </b> <s:property value="detailProduct.suppliers.region"/></p>
                                    <p><b>Điện thoại: </b> <s:property value="detailProduct.suppliers.phone"/></p>
                                    <p><b>Trang chủ: </b> <s:property value="detailProduct.suppliers.homepage"/></p>
                                </div>

                                <div class="tab-pane fade" id="tag">
                                    <s:iterator value="detailProduct.tagses">
                                        <span class="label label-primary"><s:property value="tagName"/></span>
                                    </s:iterator>
                                </div>

                            </div>
                        </div><!--/category-tab-->

                        <div class="recommended_items"><!--recommended_items-->
                            <h2 class="title text-center">Sản phẩm liên quan</h2>

                            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <s:iterator value="detailProduct.categories.productses">
                                            <s:if test="productId != detailProduct.productId">
                                                <div class="col-sm-4">
                                                    <div class="product-image-wrapper">
                                                        <div class="single-products">
                                                            <div class="productinfo text-center">
                                                                <img src="<s:property value="imageses.toArray()[0].url"/>" alt=""/>
                                                                <h2><s:property value="price"/></h2>
                                                                <p><s:property value="productName"/></p>
                                                                <button type="button" class="btn btn-default add-to-cart"><i
                                                                        class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                                                </button>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </s:if>
                                        </s:iterator>
                                    </div>
                                </div>
                                <a class="left recommended-item-control" href="#recommended-item-carousel"
                                   data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a class="right recommended-item-control" href="#recommended-item-carousel"
                                   data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </div><!--/recommended_items-->

                    </div>
                </div>
            </div>
        </section>
    </jsp:body>

</t:genericpage>