<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/1/2016
  Time: 4:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Check Out
    </jsp:attribute>

    <jsp:body>
        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="#">Trang chủ</a></li>
                        <li class="active">Thanh toán</li>
                    </ol>
                </div><!--/breadcrums-->
                <div class="checkout-options">
                    <h3>HÌNH THỨC THANH TOÁN</h3>

                    <ul class="nav">
                        <li>
                            <label><input type="checkbox"> Đăng ký thông tin</label>
                        </li>
                        <li>
                            <label><input type="checkbox"> Gợi ý thanh toán</label>
                        </li>
                        <li>
                            <a href=""><i class="fa fa-times"></i>Cancel</a>
                        </li>
                    </ul>
                </div><!--/checkout-options-->

                <div class="register-req">
                    <p>Điền đầy đủ thông tin chi tiết chính xác về bạn</p>
                </div><!--/register-req-->

                <div class="shopper-informations">
                    <div class="row">

                        <div class="col-sm-5 clearfix">
                            <div class="bill-to">
                                <p>ĐƠN HÀNG</p>
                                <div class="form-one">
                                    <form>
                                        <input type="text" placeholder="Tên đầy đủ">
                                        <input type="text" placeholder="Email">
                                        <input type="text" placeholder="Tiêu đề">
                                        <input type="text" placeholder="SDT">
                                        <input type="text" placeholder="Di động">
                                        <input type="text" placeholder="Fax">
                                        <input type="text" placeholder="Địa chỉ 1">
                                        <input type="text" placeholder="Địa chỉ 2">
                                    </form>
                                </div>
                                <div class="form-two">
                                    <form>
                                        <input type="text" placeholder="Zip / Postal Code ">
                                        <select>
                                            <option>-- Country --</option>
                                            <option>United States</option>
                                            <option>UK</option>
                                            <option>VN</option>

                                        </select>
                                        <select>
                                            <option>-- TP / Tỉnh/ Vùng --</option>
                                            <option>United States</option>
                                            <option>UK</option>
                                            <option>VN</option>
                                        </select>
                                        <input type="password" placeholder="Xác nhận mật khẩu">
                                        <input type="text" placeholder="Xác nhận Thẻ căn cước">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="order-message">
                                <p>Yêu cầu khi ship</p>
                                <textarea name="message" placeholder="Những chú ý yêu cầu của bạn" rows="16"></textarea>
                                <label><input type="checkbox"> Gửi đến địa chỉ ở đơn hàng</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="review-payment">
                    <h2>Xem lại & Hình thức thanh toán</h2>
                </div>

                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                        <tr class="cart_menu">
                            <td class="image">Sản phẩm đặt hàng</td>
                            <td class="description"></td>
                            <td class="price">Giá</td>
                            <td class="quantity">Số lượng</td>
                            <td class="total">Tổng</td>
                            <td></td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="cart_product">
                                <a href=""><img src="images/cart/one.png" alt=""></a>
                            </td>
                            <td class="cart_description">
                                <h4><a href="">Đầm dài</a></h4>
                                <p>Mã số: 1089772</p>
                            </td>
                            <td class="cart_price">
                                <p>300.000</p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <a class="cart_quantity_up" href=""> + </a>
                                    <input class="cart_quantity_input" type="text" name="quantity" value="1"
                                           autocomplete="off" size="2">
                                    <a class="cart_quantity_down" href=""> - </a>
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price">300.000</p>
                            </td>
                            <td class="cart_delete">
                                <a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
                            </td>
                        </tr>

                        <tr>
                            <td class="cart_product">
                                <a href=""><img src="images/cart/two.png" alt=""></a>
                            </td>
                            <td class="cart_description">
                                <h4><a href="">Áo sơ mi</a></h4>
                                <p>Mã số: 1089772</p>
                            </td>
                            <td class="cart_price">
                                <p>500.000</p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <a class="cart_quantity_up" href=""> + </a>
                                    <input class="cart_quantity_input" type="text" name="quantity" value="1"
                                           autocomplete="off" size="2">
                                    <a class="cart_quantity_down" href=""> - </a>
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price">500.000</p>
                            </td>
                            <td class="cart_delete">
                                <a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="cart_product">
                                <a href=""><img src="images/cart/three.png" alt=""></a>
                            </td>
                            <td class="cart_description">
                                <h4><a href="">Đầm ngủ</a></h4>
                                <p>Mã số: 1089772</p>
                            </td>
                            <td class="cart_price">
                                <p>400.000</p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <a class="cart_quantity_up" href=""> + </a>
                                    <input class="cart_quantity_input" type="text" name="quantity" value="1"
                                           autocomplete="off" size="2">
                                    <a class="cart_quantity_down" href=""> - </a>
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price">400.000</p>
                            </td>
                            <td class="cart_delete">
                                <a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">&nbsp;</td>
                            <td colspan="2">
                                <table class="table table-condensed total-result">
                                    <tr>
                                        <td>Tổng tiền</td>
                                        <td>1.200.000</td>
                                    </tr>
                                    <tr>
                                        <td>VAT: 10%</td>
                                        <td>120.000</td>
                                    </tr>
                                    <tr class="shipping-cost">
                                        <td>Vận chuyển</td>
                                        <td>Miển phí</td>
                                    </tr>
                                    <tr>
                                        <td>Tổng trả</td>
                                        <td><span>1.320.000</span></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="payment-options">
					<span>
						<label><input type="checkbox"> Chuyển khoản </label>
					</span>
					<span>
						<label><input type="checkbox"> Tiền mặt</label>
					</span>
                    </br></br>
                    <button type="submit" class="btn btn-default">XÁC NHẬN</button>
                </div>

            </div>
        </section>
        <!--/#cart_items-->
    </jsp:body>

</t:genericpage>