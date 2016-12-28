<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/2/2016
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Blog Detail
    </jsp:attribute>

    <jsp:body>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Danh mục</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Quần áo thể thao
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="sportswear" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Nike </a></li>
                                                <li><a href="#">Under Armour </a></li>
                                                <li><a href="#">Adidas </a></li>
                                                <li><a href="#">Puma</a></li>
                                                <li><a href="#">ASICS </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Quần áo nam
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="mens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Fendi</a></li>
                                                <li><a href="#">Guess</a></li>
                                                <li><a href="#">Valentino</a></li>
                                                <li><a href="#">Dior</a></li>
                                                <li><a href="#">Versace</a></li>
                                                <li><a href="#">Armani</a></li>
                                                <li><a href="#">Prada</a></li>
                                                <li><a href="#">Dolce and Gabbana</a></li>
                                                <li><a href="#">Chanel</a></li>
                                                <li><a href="#">Gucci</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Quần áo nữ
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="womens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Fendi</a></li>
                                                <li><a href="#">Guess</a></li>
                                                <li><a href="#">Valentino</a></li>
                                                <li><a href="#">Dior</a></li>
                                                <li><a href="#">Versace</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Quần áo trẻ con</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Thời trang mới</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Giày dép</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Phụ kiện</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Khác</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Sale off</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Bán chạy nhất</a></h4>
                                    </div>
                                </div>
                            </div><!--/category-products-->

                            <div class="brands_products">
                                <h2>Thống kê</h2>
                                <div class="brands-name">
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="#"> <span class="pull-right">(50)</span>Áo Sơ Mi</a></li>
                                        <li><a href="#"> <span class="pull-right">(56)</span>Đầm nữ</a></li>
                                        <li><a href="#"> <span class="pull-right">(27)</span>Áo quần trẻ em</a></li>
                                        <li><a href="#"> <span class="pull-right">(32)</span>Phụ kiện</a></li>

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
                    <div class="col-sm-9">
                        <div class="blog-post-area">
                            <h2 class="title text-center">Bài viết của khách hàng</h2>
                            <div class="single-blog-post">
                                <h3>Bạn gái nhận sản phẩm từ cửa hàng</h3>
                                <div class="post-meta">
                                    <ul>
                                        <li><i class="fa fa-user"></i> Le Nguyen</li>
                                        <li><i class="fa fa-clock-o"></i> 13:33</li>
                                        <li><i class="fa fa-calendar"></i> DEC 13, 2013</li>
                                    </ul>
								<span>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</span>
                                </div>
                                <a href="">
                                    <img src="images/blog/blog-one.jpg" alt="">
                                </a>
                                <p>
                                    Khi lang thang trên mạng tìm quần áo cho mình, tôi vô tình tìm dược website Lọ Lem
                                    trên đây có rất nhiều mẫu mã và quần áo của nhà thiết kế.</p> <br>

                                <p>
                                    Dù chưa shop ở cửa hàng này bao giờ nhưng có nhiều sản phẩm tôi thích.Sau khi đắn đo
                                    tôi quyết định mua 1 bộ đầm.</p> <br>

                                <p>
                                    Tôi thấy dịch vụ của cửa hàng rất nhanh thân thiện. Nhất là anh đưa hàng đẹp trai
                                    còn vui tính nữa. Bị "say nắng" ảnh rồi admin có biết thông tin gì ảnh không giúp em
                                    với...</p> <br>

                                <p>
                                    Chúc cửa hàng buôn may bán đắt và nhiều thành công.
                                </p>
                                <div class="pager-area">
                                    <ul class="pager pull-right">
                                        <li><a href="#">Trước</a></li>
                                        <li><a href="#">Sau</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!--/blog-post-area-->

                        <div class="rating-area">
                            <ul class="ratings">
                                <li class="rate-this">Bình chọn bài viết:</li>
                                <li>
                                    <i class="fa fa-star color"></i>
                                    <i class="fa fa-star color"></i>
                                    <i class="fa fa-star color"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </li>
                                <li class="color">(6 votes)</li>
                            </ul>
                            <ul class="tag">
                                <li>TAG:</li>
                                <li><a class="color" href="">Tím<span>/</span></a></li>
                                <li><a class="color" href="">Áo thun <span>/</span></a></li>
                                <li><a class="color" href="">Bạn gái</a></li>
                            </ul>
                        </div><!--/rating-area-->

                        <div class="socials-share">
                            <a href=""><img src="images/blog/socials.png" alt=""></a>
                        </div><!--/socials-share-->


                        <div class="response-area">
                            <h2>PHẢN HỒI</h2>
                            <ul class="media-list">
                                <li class="media">

                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="images/blog/man-two.jpg" alt="">
                                    </a>
                                    <div class="media-body">
                                        <ul class="sinlge-post-meta">
                                            <li><i class="fa fa-user"></i>Dat Nguyen</li>
                                            <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                            <li><i class="fa fa-calendar"></i> DEC 5, 2015</li>
                                        </ul>
                                        <p>Tôi dồng ý. Bài viết bạn rất hay</p>
                                        <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Trả lời</a>
                                    </div>
                                </li>
                                <li class="media second-media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="images/blog/man-three.jpg" alt="">
                                    </a>
                                    <div class="media-body">
                                        <ul class="sinlge-post-meta">
                                            <li><i class="fa fa-user"></i>Linh Nguyen</li>
                                            <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                            <li><i class="fa fa-calendar"></i> DEC 15, 2015</li>
                                        </ul>
                                        <p>Bài viết tuyệt, rất ý nghĩa.</p>
                                        <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Trả lời</a>
                                    </div>
                                </li>
                                <li class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="images/blog/man-four.jpg" alt="">
                                    </a>
                                    <div class="media-body">
                                        <ul class="sinlge-post-meta">
                                            <li><i class="fa fa-user"></i>Hieu Do</li>
                                            <li><i class="fa fa-clock-o"></i> 1:03 pm</li>
                                            <li><i class="fa fa-calendar"></i> DEC 25, 2015</li>
                                        </ul>
                                        <p>Tôi thích bạn rồi đó.</p>
                                        <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Trả lời</a>
                                    </div>
                                </li>
                            </ul>
                        </div><!--/Response-area-->
                        <div class="replay-box">
                            <div class="row">
                                <div class="col-sm-4">
                                    <h2>Bình luận</h2>
                                    <form>
                                        <div class="blank-arrow">
                                            <label>Tên</label>
                                        </div>
                                        <span>*</span>
                                        <input type="text" placeholder="nhập tên bạn...">
                                        <div class="blank-arrow">
                                            <label>Email </label>
                                        </div>
                                        <span>*</span>
                                        <input type="email" placeholder="nhập email...">
                                        <div class="blank-arrow">
                                            <label>SDT</label>
                                        </div>
                                        <input type="email" placeholder="nhập số diện thoại...">
                                    </form>
                                </div>
                                <div class="col-sm-8">
                                    <div class="text-area">
                                        <div class="blank-arrow">
                                            <label>Nội dung</label>
                                        </div>
                                        <span>*</span>
                                        <textarea name="message" rows="11"></textarea>
                                        <a class="btn btn-primary" href="">Post</a>
                                    </div>
                                </div>
                            </div>
                        </div><!--/Repaly Box-->
                    </div>
                </div>
            </div>
        </section>
    </jsp:body>

</t:genericpage>