<%--
  Created by IntelliJ IDEA.
  User: LONG
  Date: 10/26/2020
  Time: 7:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Highlands</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../template/css/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="../template/css/slider.css" rel="stylesheet" type="text/css" media="all">

    <script type="text/javascript" src="../template/js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="../template/js/slider.js"></script>
    <script type="text/javascript" src="../template/js/menu.js"></script>
    <script type="text/javascript">
        $(window).ready(function() {

            $('#slider').nivoSlider();
        });
    </script>
</head>
<body style="zoom: 1; font-family: Roboto">
<!----start-header----->
<jsp:include page="header.jsp"/>
<script>
    document.getElementById("nav-home").className = "active";
</script>
<!----End-header----->


<!---start-content---->
<div class="wrap">
    <div class="content">
        <div class="welcome_desc">
            <div class="section group">
                <div class="col_1_of_2 span_1_of_2">
                    <h3>${home.title.substring(0,17)} <br> <span>${home.title.substring(18)}</span></h3>
                    <p><span>${home.highlights}</span></p>
                    <p>${home.content}</p>
                </div>
                <div class="col_1_of_2 span_1_of_2">
                    <div class="grid_img">
                        <a href="price"><img src="../template/images/home.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="border-stip"></div>
        <div class="mid-grid">
            <!------ Slider ------------>
            <div class="slider">
                <div class="slider-wrapper theme-default">
                    <div id="slider" class="nivoSlider">
                        <img src="../template/images/slider1.jpg" data-thumb="../template/images/slider1.jpg" alt="" />
                        <img src="../template/images/slider2.jpg" data-thumb="../template/images/slider2.jpg" alt="" />
                        <img src="../template/images/slider3.jpg" data-thumb="../template/images/slider3.jpg" alt="" />
                        <img src="../template/images/slider4.jpg" data-thumb="../template/images/slider4.jpg" alt="" />
                    </div>
                </div>
            </div>
            <!------End Slider ------------>
        </div>
<!---End-content---->
<!---start-footer---->
<jsp:include page="footer.jsp"/>
<!---End-footer---->
</body>

</html>
