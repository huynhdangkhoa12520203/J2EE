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
                    <li><i class="fa fa-laptop"></i>Categories</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-9 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading" style="height: 10px;">
                        <h2><i class="fa fa-flag-o red"></i><strong>Categories List</strong></h2>

                        <div class="pull-right" style="float: right">
                            <a href="addcategory" data-toggle="tooltip" title="Add New" class="btn btn-primary" data-original-title="Add New">
                                <i class="fa fa-plus"></i>
                            </a>
                            <button type="button" data-toggle="tooltip" title="Delete" class="btn btn-danger" onclick="getDecide()" data-original-title="Delete"><i class="fa fa-trash-o"></i></button>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table bootstrap-datatable countries">
                            <thead>
                                <th class="text-center"><input name="selectAll" onchange="checkAll(this)" type="checkbox"></th>
                                <th>Category Name</th>
                                <th>Description</th>
                                <th  class="text-right">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <form method="GET" action="deletecategory">
                                    <s:iterator value="list">
                                        <tr>
                                            <td class="text-center">
                                                <input name="selected" value="<s:property value="categoryId"/>" type="checkbox"/>
                                                <input type="submit" name="action" value="Delete" id="submit-form" class="hidden"/>
                                            </td>
                                            <td><s:property value="categoryName"/></td>
                                            <td><s:property value="description"/></td>
                                            <td class="text-right">
                                                <a href="editcategory?categoryId=<s:property value="categoryId"/>" data-toggle="tooltip" title="Edit" class="btn btn-info" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                            </td>
                                        </tr>
                                    </s:iterator>
                                </form>
                            </tbody>
                        </table>
                    </div>

                </div><!--/col-->
            </div>
            <!-- list categories end -->
        </div>
        <script type="text/javascript">
            function checkAll(ele) {
                var checkboxes = document.getElementsByTagName('input');
                if (ele.checked) {
                    for (var i = 0; i < checkboxes.length; i++) {
                        if (checkboxes[i].type == 'checkbox') {
                            checkboxes[i].checked = true;
                        }
                    }
                } else {
                    for (var i = 0; i < checkboxes.length; i++) {
                        console.log(i)
                        if (checkboxes[i].type == 'checkbox') {
                            checkboxes[i].checked = false;
                        }
                    }
                }
            }

            function getDecide(){
                var retVal = confirm('Delete cannot be undone! Are you sure you want to do this?');
                if( retVal == true ){
                    document.getElementById("submit-form").click();
                    return true;
                }
                else{
                    return false;
                }
            }
        </script>
    </jsp:body>
</t:admingenericpage>