<%--
  Created by IntelliJ IDEA.
  User: noowaay
  Date: 02/06/2016
  Time: 1:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<t:admingenericpage>
    <jsp:attribute name="page_title">
      Categories
    </jsp:attribute>

    <jsp:body>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i>Orders</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index">Home</a></li>
                    <li><i class="fa fa-laptop"></i><a href="orders">Orders</a></li>
                    <li><i class="fa"></i>Edit Orders</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Add Order
                    </header>
                    <div class="panel-body">
                        <form action="editorder" class="form-horizontal " method="post">
                            <input class="form-control hidden" name="orderId"  type="text" value="<s:property value="order_edit.orderId"/>"/>

                            <ul id="order" class="nav nav-tabs nav-justified">
                                <li class="active"><a href="#tab-customer" data-toggle="tab">Customer Details</a></li>
                                <li class=""><a href="#tab-cart" data-toggle="tab">Products</a></li>
                                <li class=""><a href="#tab-shipping" data-toggle="tab">Shipping Details</a></li>
                            </ul>

                            <div class="tab-content" style="margin-top: 20px">
                                <div class="tab-pane active" id="tab-customer">
                                    <input class="form-control hidden" name="customerId"  type="text" value="<s:property value="order_edit.customers.customerId"/>"/>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-firstname">Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" disabled name="customerName" value="<s:property value="order_edit.customers.name"/>" id="input-firstname" class="form-control" minlength="5" required>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                                        <div class="col-sm-10">
                                            <input type="email" disabled name="customerEmail" value="<s:property value="order_edit.customers.email"/>" id="input-email" class="form-control" required>
                                        </div>
                                    </div>

                                    <div class="text-right">
                                        <button type="button" onclick="$('a[href=\'#tab-cart\']').tab('show');" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Continue</button>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-cart">
                                    <div class="table-responsive">
                                        <table id="tableProducts" class="table table-bordered">
                                            <thead>
                                            <tr>
                                                <td class="text-left">Product</td>
                                                <td class="text-right">Quantity</td>
                                                <td class="text-right">Unit Price</td>
                                                <td class="text-right">Total</td>
                                                <td></td>
                                            </tr>
                                            </thead>
                                            <tbody id="cart">
                                            <tr>
                                                <s:iterator value="listProductsInOrder">
                                                    <tr>
                                                        <td class="hidden"><input name="selected" value="<s:property value="products.productId"/>" type="text"/></td>
                                                        <td class="text-center"><s:property value="products.productName"/></td>
                                                        <td class="text-right"><input class="hidden" name="quantityList" value="<s:property value="quanlity"/>" type="text"/><s:property value="quanlity"/></td>
                                                        <td class="text-right"><s:property value="price"/></td>
                                                        <td class="text-right"><s:property value="price"/></td>
                                                    </tr>
                                                </s:iterator>
                                            </tr>
                                            </tbody>
                                            <tfoot>

                                            </tfoot>
                                        </table>
                                    </div>
                                    <ul class="nav nav-tabs nav-justified">
                                        <li class="active"><a href="#tab-product" data-toggle="tab">Products</a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab-product">
                                            <fieldset>
                                                <legend>Add Product(s)</legend>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-product">Choose Product</label>
                                                    <div class="col-sm-10">
                                                        <select id="input-product" name="product" class="form-control">
                                                            <s:iterator value="listProducts">
                                                                <option value="<s:property value="productId"/>" price="<s:property value="price"/>"><s:property value="productName"/></option>
                                                            </s:iterator>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-quantity">Quantity</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="quantity" value="1" id="input-quantity" class="form-control">
                                                    </div>
                                                </div>
                                                <div id="option"></div>
                                            </fieldset>
                                            <div class="text-right">
                                                <button type="button" onclick="addProduct()" class="btn btn-primary"><i class="fa fa-plus-circle"></i> Add Product</button>
                                            </div>
                                        </div>

                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-sm-6 text-left">
                                            <button type="button" onclick="$('a[href=\'#tab-customer\']').tab('show');" class="btn btn-default"><i class="fa fa-arrow-left"></i> Back</button>
                                        </div>
                                        <div class="col-sm-6 text-right">
                                            <button type="button" onclick="$('a[href=\'#tab-shipping\']').tab('show');" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Continue</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-shipping">
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-address-1">Address</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="shipAddress" value="<s:property value="order_edit.shipAddress"/>" id="input-shipping-address-1" class="form-control" required>
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-city">City</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="shipCity" value="<s:property value="order_edit.shipCity"/>" id="input-shipping-city" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-zone">Region</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="shipRegion" value="<s:property value="order_edit.shipRegion"/>" id="input-shipping-zone" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 text-left">
                                            <button type="button" onclick="$('a[href=\'#tab-cart\']').tab('show');" class="btn btn-default"><i class="fa fa-arrow-left"></i> Back</button>
                                        </div>
                                        <div class="col-sm-6 text-right">
                                            <input type="submit" name="action" value="Edit" class="btn btn-primary" title="Edit" style="margin-right:15px;"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </div>
        <!-- ck editor -->
        <script type="text/javascript" src="/admin/assets/ckeditor/ckeditor.js"></script>
        <!-- custom form component script for this page-->
        <script src="/admin/js/form-component.js"></script>

        <script type="text/javascript">
            var image_row = 0;
            var totalOrder = 0;
            function addProduct() {
                var productId = $('#input-product').val();
                var productName = $('#input-product option:selected').text();
                var quantity = $('#input-quantity').val();
                var price = $('#input-product').find('option:selected').attr("price");
                var total = price * quantity;


                totalOrder = totalOrder + total;

                html = '<tr>';
                html +=        '<td class="hidden"><input name="selected" value="'+productId+'"type="text"/></td>';
                html +=        '<td class="text-center">' + productName + '</td>';
                html +=        '<td class="text-right"><input class="hidden" name="quantityList" value="'+quantity+'"type="text"/>'+ quantity +'</td>';
                html +=        '<td class="text-right">'+ price +'</td>';
                html +=        '<td class="text-right">'+ total+ '</td>';
                html += '</tr>';

                htmlFoot = '<tr>';
                htmlFoot +=        '<td class="text-center"></td>';
                htmlFoot +=        '<td class="text-left"></td>';
                htmlFoot +=        '<td class="text-right"></td>';
                htmlFoot +=        '<td class="text-right">'+totalOrder+'</td>';
                htmlFoot += '</tr>';

                $('#tableProducts tbody').append(html);
                $('#tableProducts tfoot').append('<tr></tr>');
                $('#tableProducts tfoot tr').remove();
                $('#tableProducts tfoot').append(htmlFoot);
                image_row++;
            }
        </script>
    </jsp:body>
</t:admingenericpage>