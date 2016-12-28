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
      Reviews
    </jsp:attribute>

    <jsp:body>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i>Reviews</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index">Home</a></li>
                    <li><i class="fa fa-laptop"></i>Reviews</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading" style="height: 10px;">
                        <h2><i class="fa fa-flag-o red"></i><strong>Reviews List</strong></h2>

                        <div class="pull-right" style="float: right;">
                            <a href="#" data-toggle="tooltip" title="Add New" class="btn btn-primary" data-original-title="Add New">
                                <i class="fa fa-plus"></i>
                            </a>
                            <button type="button" data-toggle="tooltip" title="Delete" class="btn btn-danger" onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? $('#form-category').submit() : false;" data-original-title="Delete"><i class="fa fa-trash-o"></i></button>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table bootstrap-datatable countries">
                            <thead>
                            <th></th>
                            <th>Product</th>
                            <th>Author</th>
                            <th>Rating</th>
                            <th>Status</th>
                            <th>Date Added</th>
                            <th  class="text-right">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="text-center">
                                    <input type="checkbox">
                                </td>
                                <td>iPhone</td>
                                <td>jane doe</td>
                                <td>5</td>
                                <td>Disabled</td>
                                <td>06/10/2014</td>
                                <td class="text-right">
                                    <a href="#" data-toggle="tooltip" title="Edit" class="btn btn-info" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div>

                </div><!--/col-->
            </div>
            <!-- list reviews end -->
        </div>
    </jsp:body>
</t:admingenericpage>