<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/2/2016
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Blog List
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
                                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                                    <b class="pull-left">150.000</b> <b class="pull-right">6.000.000</b>
                                </div>
                            </div><!--/price-range-->

                            <div class="shipping text-center"><!--shipping-->
                                <img src="/images/home/shipping.jpg" alt="" />
                            </div><!--/shipping-->
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="blog-post-area">
                            <h2 class="title text-center">Bài viết hay nhất về sản phẩm</h2>
                            <s:iterator value="blogList">
                                <div class="single-blog-post">
                                    <h3><a href="blog-single.html"><s:property value ="title"/></a></h3>
                                    <div class="post-meta">
                                        <ul>
                                            <li><i class="fa fa-user"></i><s:property value ="title"/></li>
                                            <li><i class="fa fa-calendar"></i><s:property value ="createDate"/></li>
                                        </ul>
								<span>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
								</span>
                                    </div>
                                    <a href="blog-single.html">
                                        <img src="images/blog/blog-one.jpg" alt="">
                                    </a>
                                    <p><s:property value ="content"/></p>
                                </div>
                            </s:iterator>
                            <%--<div class="pagination-area">--%>
                                <%--<ul class="pagination">--%>
                                    <%--<li><a href="" class="active">1</a></li>--%>
                                    <%--<li><a href="">2</a></li>--%>
                                    <%--<li><a href="">3</a></li>--%>
                                    <%--<li><a href=""><i class="fa fa-angle-double-right"></i></a></li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>

</t:genericpage>