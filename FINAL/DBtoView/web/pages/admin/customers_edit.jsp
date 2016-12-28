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
                <h3 class="page-header"><i class="fa fa-laptop"></i>Customers</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index">Home</a></li>
                    <li><i class="fa fa-laptop"></i><a href="customers">Customers</a></li>
                    <li><i class="fa"></i>Edit Customer</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Edit Customer
                    </header>
                    <div class="panel-body">
                        <s:form class="form-horizontal" action="editcustomer" method="post">
                            <input class="form-control hidden" name="customerId"  type="text" value="<s:property value="customer_edit.customerId"/>"/>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Name</label>
                                <div class="col-sm-10">
                                    <input name="name" type="text" class="form-control" placeholder="Name" value="<s:property value="customer_edit.name"/>" minlength="5" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Email</label>
                                <div class="col-sm-10">
                                    <input name="email" type="email" class="form-control" placeholder="Email" value="<s:property value="customer_edit.email"/>" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Phone</label>
                                <div class="col-sm-10">
                                    <input name="phone" type="number" required class="form-control" placeholder="Phone" value="<s:property value="customer_edit.phone"/>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Fax</label>
                                <div class="col-sm-10">
                                    <input name="fax" type="text" minlength="5" maxlength="15" class="form-control" placeholder="Fax" value="<s:property value="customer_edit.fax"/>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Address 1</label>
                                <div class="col-sm-10">
                                    <input name="address1" type="text" required class="form-control" placeholder="Address 1" value="<s:property value="customer_edit.address1"/>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Address 2</label>
                                <div class="col-sm-10">
                                    <input name="address2" type="text" class="form-control" placeholder="Address 2" value="<s:property value="customer_edit.address2"/>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Zip</label>
                                <div class="col-sm-10">
                                    <input name="zip" type="number" required class="form-control" placeholder="Zip" value="<s:property value="customer_edit.zip"/>">
                                </div>
                            </div>

                            <%--<div class="form-group">
                                <label class="col-sm-2 control-label">Password</label>
                                <div class="col-sm-10">
                                    <input name="password" type="password" class="form-control" placeholder="Password" value="<s:property value="customer_edit.password"/>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Re-password</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" placeholder="Re-password">
                                </div>
                            </div>--%>


                            <div class="form-group">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-10">
                                    <input type="submit" name="action" value="Edit" class="btn btn-primary" title="Edit" style="margin-right:15px;">
                                    <a class="btn btn-default" href="customers" title="Cancel">
                                        <span class="fa fa-reply"></span> Cancel</a>
                                </div>
                            </div>
                        </s:form>
                    </div>
                </section>
            </div>
        </div>

    </jsp:body>
</t:admingenericpage>