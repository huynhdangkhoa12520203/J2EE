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
                <h3 class="page-header"><i class="fa fa-laptop"></i>Categories</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index">Home</a></li>
                    <li><i class="fa fa-laptop"></i><a href="categories">Categories</a></li>
                    <li><i class="fa"></i>Edit Category</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Edit Category
                    </header>
                    <div class="panel-body">
                        <s:form class="form-horizontal" action="editcategory" method="post">
                            <input class="form-control hidden" name="categoryId"  type="text" value="<s:property value="category_edit.categoryId"/>"/>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Category Name</label>
                                <div class="col-sm-10">
                                    <input name="categoryName" type="text" class="form-control" placeholder="Category Name" value="<s:property value="category_edit.categoryName"/>" minlength="5" required="true">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Description</label>
                                <div class="col-sm-10">
                                    <textarea id="editor" style="width:100%;" name="description"><s:property value="category_edit.description"/></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-10">
                                    <input type="submit" name="action" value="Edit" class="btn btn-primary" title="Edit" style="margin-right:15px;">
                                    <a class="btn btn-default" href="categories" title="Cancel">
                                        <span class="fa fa-reply"></span> Cancel</a>
                                </div>
                            </div>
                        </s:form>
                    </div>
                </section>
            </div>
        </div>
        <!-- ck editor -->
        <script type="text/javascript" src="/admin/assets/ckeditor/ckeditor.js"></script>
        <!-- custom form component script for this page-->
        <script src="/admin/js/form-component.js"></script>
    </jsp:body>


</t:admingenericpage>