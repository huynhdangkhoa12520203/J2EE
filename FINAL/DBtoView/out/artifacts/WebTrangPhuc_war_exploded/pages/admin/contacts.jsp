<%--
  Created by IntelliJ IDEA.
  User: noowaay
  Date: 02/06/2016
  Time: 1:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="s" uri="/struts-tags"%>

<t:admingenericpage>
    <jsp:attribute name="page_title">
      Reviews
    </jsp:attribute>

    <jsp:body>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i>Contacts</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index">Home</a></li>
                    <li><i class="fa fa-laptop"></i>Contacts</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading" style="height: 10px;">
                        <h2><i class="fa fa-flag-o red"></i><strong>Contacts List</strong></h2>

                        <div class="pull-right" style="float: right;">
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table bootstrap-datatable countries">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Name</th>
                                    <th>Title</th>
                                    <th>Email</th>
                                    <th>Content</th>
                                    <th  class="text-right">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <s:iterator value="list" status="test">
                                    <tr>
                                        <td class="text-center">
                                            <%--<input type="checkbox" value="<s:property value="contactID"/>"/>--%>
                                        </td>
                                        <td><s:property value="name"/></td>
                                        <td><s:property value="title"/></td>
                                        <td><s:property value="email"/></td>
                                        <td><s:property value="content"/></td>
                                        <td class="text-right">
                                            <button type="button" title="View" class="btn btn-info" data-toggle="modal" data-target="#myModal<s:property value="contactID"/>"><i class="fa fa-eye"></i></button>
                                            <!-- Modal -->
                                            <div id="myModal<s:property value="contactID"/>" class="modal fade text-left" role="dialog">
                                                <div class="modal-dialog">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            <h4 class="modal-title"><s:property value="title"/></h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <table class="table">
                                                                <tr>
                                                                    <td>
                                                                        <h4>Name</h4>
                                                                    </td>
                                                                    <td>
                                                                        <h4><s:property value="name"/></h4>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <h4>Email</h4>
                                                                    </td>
                                                                    <td>
                                                                        <h4><s:property value="email"/></h4>
                                                                    </td>
                                                                </tr>
                                                            </table>

                                                            <h4 class="modal-title"><b>Tin nhắn</b></h4>
                                                            <p style="font-size: 18px; font-family: inherit; letter-spacing: 1.5px;"><s:property value="content"/></p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </td>
                                    </tr>
                                </s:iterator>
                            </tbody>
                        </table>

                    </div>

                </div><!--/col-->
            </div>
            <!-- list reviews end -->
        </div>
        <%--<script type="text/javascript">
            var para = document.getElementsByName('content');
            var text = para.innerText;
            $(document).ready(function(){
                para.innerText = text.substr(0, 10) + '...';
            })
        </script>--%>
    </jsp:body>
</t:admingenericpage>