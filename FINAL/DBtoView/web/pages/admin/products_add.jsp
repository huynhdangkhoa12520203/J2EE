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
                <h3 class="page-header"><i class="fa fa-laptop"></i>Products</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index">Home</a></li>
                    <li><i class="fa fa-laptop"></i><a href="products">Products</a></li>
                    <li><i class="fa"></i>Add Products</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <header class="panel-heading">
                        Add Category
                    </header>
                    <div class="panel-body">

                        <div id="home" class="tab-pane fade in active" style="margin-top: 15px;">
                            <s:form action="addproduct" class="form-horizontal" method="post">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Product Name</label>
                                    <div class="col-sm-10">
                                        <input name="product_add.productName" type="text" class="form-control" placeholder="Product Name" minlength="5" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Unit</label>
                                    <div class="col-sm-10">
                                        <input name="product_add.unit" type="text" class="form-control" placeholder="Unit" minlength="5" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Price</label>
                                    <div class="col-sm-10">
                                        <input name="product_add.price" type="number" class="form-control" placeholder="Price" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Stock</label>
                                    <div class="col-sm-10">
                                        <input name="product_add.stock" type="number" class="form-control" placeholder="Stock" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-status">Status</label>
                                    <div class="col-sm-10">
                                        <select name="status" id="input-status" class="form-control">
                                            <option value="1" selected="selected">Enabled</option>
                                            <option value="0">Disabled</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="">Suppliers</span></label>
                                    <div class="col-sm-10">
                                        <select name="supplier" class="form-control">
                                            <s:iterator value="listSuppliers">
                                                <option value="<s:property value="supplierId"/>"><s:property value="supplierName"/></option>
                                            </s:iterator>
                                        </select>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="">Categories</span></label>
                                    <div class="col-sm-10">
                                        <select name="category" class="form-control">
                                            <s:iterator value="listCategories">
                                                <option value="<s:property value="categoryId"/>"><s:property value="categoryName"/></option>
                                            </s:iterator>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-10">
                                        <input type="submit" name="action" value="Save" class="btn btn-primary" title="Save" style="margin-right:15px;">
                                        <a class="btn btn-default" href="products" title="Cancel">
                                            <span class="fa fa-reply"></span> Cancel</a>
                                    </div>
                                </div>
                            </s:form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ck editor -->
        <script type="text/javascript" src="/admin/assets/ckeditor/ckeditor.js"></script>
        <!-- custom form component script for this page-->
        <script src="/admin/js/form-component.js"></script>
    </jsp:body>
</t:admingenericpage>