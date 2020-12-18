<%--
  Created by IntelliJ IDEA.
  User: LONG
  Date: 10/26/2020
  Time: 7:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
    <title>Highlands</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../template/css/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="//fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../template/js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="../template/js/menu.js"></script>
</head>
<body style="zoom: 1;">
<!----start-header----->
<jsp:include page="header.jsp"/>
<script>
    document.getElementById("nav-contact").className = "active";
</script>
<!----End-header----->
<!---start-content---->
<div class="wrap">
    <div class="content">
        <div class="contact_desc">
            <div class="contact-form">
                <h2>Contact Us</h2>
                <form method="post" action="#" class="left_form">
                    <div>
                        <span><label>NAME</label></span>
                        <span><input name="userName" type="text" class="textbox"></span>
                    </div>
                    <div>
                        <span><label>E-MAIL</label></span>
                        <span><input name="userEmail" type="text" class="textbox"></span>
                    </div>
                    <div>
                        <span><label>Fax</label></span>
                        <span><input name="userPhone" type="text" class="textbox"></span>
                    </div>
                </form>
                <form class="right_form">
                    <div>
                        <span><label>SUBJECT</label></span>
                        <span><textarea name="userMsg"> </textarea></span>
                    </div>
                    <div>
                        <span><input type="submit" value="Submit" class="myButton"></span>
                    </div>
                </form>
                <div class="clear"></div>
            </div>
            <div class="content_bottom">
                <div class="company_address">
                    <h2>Location</h2>
                    <p>179 Núi Thành, Hòa Cường Bắc </p>
                    <p>Quận Hải Châu, Đà nẵng,</p>
                    <p>Việt Nam</p>
                    <p>Phone:(00) 222 666 444</p>
                    <p>Fax: (000) 000 00 00 0</p>
                    <p>Email: <span><a href="mailto:info@example.com">mail@example.com</a></span></p>
                    <p>Follow on: <span><a href="#">Facebook</a></span>, <span><a href="#">Twitter</a></span></p>
                </div>
                <div class="contact_info">
                    <h2>Find Us Here</h2>
                    <div class="map">
                        <iframe width="100%" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.168829634445!2d108.20034451494091!3d16.056726488888746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421929a0e21feb%3A0x346e481cca5fb21!2sHighlands%20Coffee!5e0!3m2!1svi!2s!4v1604376836443!5m2!1svi!2s" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>

<!---End-content---->
<!---start-footer---->
<jsp:include page="footer.jsp"/>
<!---End-footer---->



</body></html>
