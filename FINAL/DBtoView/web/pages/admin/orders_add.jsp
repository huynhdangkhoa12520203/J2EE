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
                    <li><i class="fa"></i>Add Orders</li>
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
                        <form action="addorder" class="form-horizontal " method="post">
                            <ul id="order" class="nav nav-tabs nav-justified">
                                <li class="active"><a href="#tab-customer" data-toggle="tab">Customer Details</a></li>
                                <li class=""><a href="#tab-shipping" data-toggle="tab">Shipping Details</a></li>
                            </ul>

                            <div class="tab-content" style="margin-top: 20px">
                                <div class="tab-pane active" id="tab-customer">
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-firstname">Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="customers.name" value="" id="input-firstname" class="form-control" minlength="5" required>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                                        <div class="col-sm-10">
                                            <input type="email" name="customers.email" value="" id="input-email" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                                        <div class="col-sm-10">
                                            <input type="number" name="customers.phone" value="" id="input-telephone" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-fax">Fax</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="customers.fax" value="" id="input-fax" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-payment-address-1">Address 1</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="customers.address1" value="" id="input-payment-address-1" class="form-control" required>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-payment-address-2">Address 2</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="customers.address2" value="" id="input-payment-address-2" class="form-control">
                                        </div>
                                    </div>


                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label">Zip</label>
                                        <div class="col-sm-10">
                                            <input type="number" name="customers.zip" value="" class="form-control" required>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-payment-city">Country</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="customers.country" value="" id="input-payment-city" class="form-control">
                                        </div>
                                    </div>

                                    <div class="text-right">
                                        <button type="button" onclick="$('a[href=\'#tab-shipping\']').tab('show');" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Continue</button>
                                    </div>
                                </div>

                                <div class="tab-pane" id="tab-shipping">
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-address-1">Address</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="order_add.shipAddress" value="" id="input-shipping-address-1" class="form-control" minlength="5" required>
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-city">City</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="order_add.shipCity" value="" id="input-shipping-city" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-zone">Region</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="order_add.shipRegion" value="" id="input-shipping-zone" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 text-left">
                                            <button type="button" onclick="$('a[href=\'#tab-customer\']').tab('show');" class="btn btn-default"><i class="fa fa-arrow-left"></i> Back</button>
                                        </div>
                                        <div class="col-sm-6 text-right">
                                            <button type="submit" name="action" value="Save" id="button-shipping-address" data-loading-text="Loading..." class="btn btn-primary">Save</button>
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
            function addProduct() {
                html = '<tr>';
                html +=        '<td class="text-center">' + 1 + '</td>';
                html +=        '<td class="text-left">2</td>';
                html +=        '<td class="text-right">3</td>';
                html +=        '<td class="text-right">4</td>';
                html +=        '<td class="text-right">5</td>';
                html +=        '</tr>';

                $('#tableProducts tbody').append(html);

                image_row++;
            }
        </script>
    </jsp:body>
</t:admingenericpage>