<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/1/2016
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Cart
    </jsp:attribute>

    <jsp:body>
        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="/">Trang chủ</a></li>
                        <li class="active">>Giỏ hàng</li>
                    </ol>
                </div>
                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                        <tr class="cart_menu">
                            <td class="image">Sản phẩm đặt mua</td>
                            <td class="description"></td>
                            <td class="price">Giá</td>
                            <td class="quantity">Số lượng</td>
                            <td class="total">Tổng</td>
                            <td></td>
                        </tr>
                        </thead>
                        <tbody>
                    <s:iterator value="products">
                        <tr>
                            <td class="cart_product">
                                <a href=""><img src="<s:property value="product.imageses.toArray()[0].url"/>" alt="" width="100px"></a>
                            </td>
                            <td class="cart_description">
                                <h4><a href=""><s:property value="product.productName"/></a></h4>
                                <p>Mã số: <s:property value="product.productId"/></p>
                            </td>
                            <td class="cart_price">
                                <p><s:property value="product.price"/></p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <a class="cart_quantity_up" href="<s:url action="change_quantity" namespace="/orders">
                                                                    <s:param name="decreaseProductId"><s:property value="product.productId"/></s:param>
                                                                </s:url>"> - </a>
                                    <input class="cart_quantity_input" type="text" name="quantity" value="<s:property value="quantity"/>"
                                           autocomplete="off" size="2">
                                    <a class="cart_quantity_down" href="<s:url action="change_quantity" namespace="/orders">
                                                                    <s:param name="increaseProductId"><s:property value="product.productId"/></s:param>
                                                                </s:url>"> + </a>
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price"><s:property value="totalPrice"/></p>
                            </td>
                            <td class="cart_delete">
                                <a class="cart_quantity_delete" href="<s:url action="remove_product" namespace="/orders">
                                                                    <s:param name="deleteProductId"><s:property value="product.productId"/></s:param>
                                                                </s:url>"><i class="fa fa-times"></i></a>
                            </td>
                        </tr>
                     </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!--/#cart_items-->

        <section id="do_action">
            <div class="container">

                <div class="row">
                    <div class="col-sm-6">

                    </div>
                    <div class="col-sm-6">
                        <div class="total_area">
                            <h2>Total Price: <s:property value="total"/></h2>

                            <a class="btn btn-default update" href="">Update</a>
                            <a class="btn btn-default check_out" href="">Check Out</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--/#do_action-->
    </jsp:body>

</t:genericpage>