<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/1/2016
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<t:genericpage>
    <jsp:attribute name="page_title">
      Contact Us
    </jsp:attribute>

    <jsp:body>
        <div id="contact-page" class="container">
            <div class="bg">
                <div class="row">
                    <div class="col-sm-12">
                        <h2 class="title text-center">Bản đồ </h2>
                        <div class="map"><center>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5386187319164!2d106.69532231439429!3d10.769997262258308!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f3fa8e6e1a5%3A0x327b330e46d9707b!2zMSBUcuG6p24gSMawbmcgxJDhuqFvLCBOZ3V54buFbiBUaMOhaSBCw6xuaCwgUXXhuq1uIDEsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1451216029321" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div></center><br>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-8">
                        <div class="contact-form">
                            <h2 class="title text-center">Phản hồi</h2>
                            <div class="status alert alert-success" style="display: none"></div>
                            <form action ="contact" id="main-contact-form" class="contact-form row" name="contact-form" method="post">
                                <div class="form-group col-md-6">
                                    <input type="text" name="contactBean.name" class="form-control" required="required" placeholder="Tên">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" name="contactBean.email" class="form-control" required="required" placeholder="Email">
                                </div>
                                <div class="form-group col-md-12">
                                    <input type="text" name="contactBean.title" class="form-control" required="required" placeholder="Chủ đề">
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea name="contactBean.content" id="message" required="required" class="form-control" rows="8" placeholder="Nội dung"></textarea>
                                </div>
                                <p><s:property value="feedBackContact"></s:property> </p>
                                <div class="form-group col-md-12">
                                    <input type="submit" name="submit" class="btn btn-primary pull-right" value="Gửi">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="contact-info">
                            <h2 class="title text-center">Thông tin liên hệ</h2>
                            <address>
                                <p>Lọ Lem-Shop.</p>
                                <p>ĐC: 1 Trần Hưng Đạo q3</p>
                                <p>ĐT: 0903892334</p>
                                <p>Fax: 19008198</p>
                                <p>Email: dotrunghieu0903@gmail.com</p>
                            </address>
                            <div class="social-networks">
                                <h2 class="title text-center">Mạng xã hội</h2>
                                <ul>
                                    <li>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-youtube"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/#contact-page-->
    </jsp:body>

</t:genericpage>

