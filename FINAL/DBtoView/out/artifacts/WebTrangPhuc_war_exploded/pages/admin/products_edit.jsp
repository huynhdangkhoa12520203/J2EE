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
                    <li><i class="fa"></i>Edit Products</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <header class="panel-heading">
                        Edit Category
                    </header>
                    <div class="panel-body">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#home">General</a></li>
                            <li><a data-toggle="tab" href="#menu1">Image</a></li>
                        </ul>

                        <div class="tab-content">
                            <div id="home" class="tab-pane fade in active" style="margin-top: 15px;">
                                <s:form action="editproduct" class="form-horizontal" method="post">
                                    <input class="form-control hidden" name="productId"  type="text" value="<s:property value="product_edit.productId"/>"/>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Product Name</label>
                                        <div class="col-sm-10">
                                            <input name="productName" value="<s:property value="product_edit.productName"/>" type="text" class="form-control" placeholder="Product Name" minlength="5" required>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Unit</label>
                                        <div class="col-sm-10">
                                            <input name="unit" value="<s:property value="product_edit.unit"/>" type="text" class="form-control" placeholder="Unit" minlength="5" required>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Price</label>
                                        <div class="col-sm-10">
                                            <input name="price" value="<s:property value="product_edit.price"/>" type="number" class="form-control" placeholder="Price" required>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Stock</label>
                                        <div class="col-sm-10">
                                            <input name="stock" value="<s:property value="product_edit.stock"/>" type="number" class="form-control" placeholder="Stock" required>
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
                                            <input type="submit" name="action" value="Edit" class="btn btn-primary" title="Edit" style="margin-right:15px;">
                                            <a class="btn btn-default" href="products" title="Cancel">
                                                <span class="fa fa-reply"></span> Cancel</a>
                                        </div>
                                    </div>
                                </s:form>
                            </div>
                            <div id="menu1" class="tab-pane fade">
                                <form id="upload" action="upload" method="post" enctype="multipart/form-data">
                                    <div class="field photo-upload">
                                        <input type="text" class="hidden" name="productId" value="<s:property value="productId"/>">
                                        <input id="id_photo" class="hidden" name="myFile" type="file" accept=".jpg,.png" onchange="formSubmit()"/>
                                    </div>
                                </form>

                                <div class="table-responsive" style="margin-top: 15px;">
                                    <table id="images" class="table table-striped table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <td class="text-left">Image</td>
                                            <td>Name</td>
                                            <td>Action</td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <s:iterator value="listImage">
                                            <tr>
                                                <td class="text-left">
                                                    <a onclick="addImage()"><img class="img-thumbnail" style="height: 50px; width: 50px; cursor: pointer;" src="<s:property value="url"/>"/></a>
                                                </td>
                                                <td><s:property value="imageName"/></td>
                                                <td class="text-left"><a href="deleteImage?productId=<s:property value="productId"/>&imageId=<s:property value="imageId"/>" type="button" data-toggle="tooltip" title="Remove" class="btn btn-danger"><i class="fa fa-minus-circle"></i></a></td>
                                            </tr>
                                        </s:iterator>
                                        </tbody>
                                        <tfoot>
                                        <td colspan="2"></td>
                                        <td class="text-left"><button type="button" onclick="inputDisplay()" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Add Image"><i class="fa fa-plus-circle"></i></button></td>
                                            <%--<td class="text-left"><a type="button" onclick="inputDisplay()" title="Add Image"><img class="img-thumbnail" style="height: 50px; width: 50px; cursor: pointer;" src="/images/home/default.png"/></a></td>--%>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ck editor -->
        <script type="text/javascript" src="/admin/assets/ckeditor/ckeditor.js"></script>
        <!-- custom form component script for this page-->
        <script src="/admin/js/form-component.js"></script>

        <script type="text/javascript">
            function inputDisplay() {
                var photo = document.getElementById("id_photo");
                photo.click();
            }
            function formSubmit() {
                var frm = document.getElementById("upload");
                frm.submit();
            }

            var image_row = 0;
            function addImage() {
                html = '<tr id="image-row' + image_row + '">';
                html += '<td class="text-left"><a onclick="addImage()"><img class="img-thumbnail" style="height: 50px; width: 50px; cursor: pointer;" src="/images/home/default.png"/></a></td>';
                html += '<td></td>';
                html += '<td class="text-left"><button type="button" onclick="$(\'#image-row' + image_row  + '\').remove();" data-toggle="tooltip" title="Remove" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
                html += '</tr>';

                $('#images tbody').append(html);

                image_row++;
            }
        </script>
    </jsp:body>
</t:admingenericpage>