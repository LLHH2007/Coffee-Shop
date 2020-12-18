<%--
  Created by IntelliJ IDEA.
  User: LONG
  Date: 11/4/2020
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Highlands</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Bootstrap core CSS -->
    <link href="../template/css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../template/css/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="../template/css/styles.css" rel="stylesheet">
    <link href="../template/css/font-awesome.min.css" rel="stylesheet">
    <link href="../template/css/animate-custom.css" rel="stylesheet">
    <script src="../template/js/jquery.min.js"></script>
    <script type="text/javascript" src="../template/js/modernizr.custom.js"></script>
    <script type="text/javascript" src="../template/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../template/js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="../template/js/menu.js"></script>
</head>
<body data-target="#navbar-main" style="zoom:1">
<!----start-header----->
<jsp:include page="header.jsp"/>
<!----End-header----->

<!-- container -->
<!-- ==== PORTFOLIO ==== -->
<div id="portfolio" name="portfolio">
    <div class="container">
        <div class="row">
            <h2 class="centered">What Special</h2>
            <hr>
            <div class="col-lg-8 col-lg-offset-2 centered">
                <p class="large">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
            </div>
        </div>
        <!-- /row -->
        <div class="container">
            <div class="row">

                <!-- PORTFOLIO IMAGE 1 -->
                <div class="col-md-4 ">
                    <div class="grid overlay">
                        <figure> <img class="img-responsive" src="../template/images/caphe.png" alt="">
                            <figcaption>
                                <h5>Coco Cake</h5>
                                <a data-toggle="modal" href="#myModal" class="btn btn-default">More Details</a>
                            </figcaption>
                        </figure>
                        <!-- /figure -->
                    </div>
                    <!-- /grid-overlay -->
                </div>

                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">Rose Cake</h4>
                            </div>
                            <div class="modal-body">
                                <p><img class="img-responsive" src="../template/images/caphe.png" alt=""></p>
                                <p>Lorem ipsum dolor sit amet, quo meis audire placerat eu, te eos porro veniam. An everti maiorum detracto mea. </p>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!-- PORTFOLIO IMAGE 2 -->
                <div class="col-md-4">
                    <div class="grid overlay">
                        <figure> <img class="img-responsive" src="../template/images/caphe.png" alt="">
                            <figcaption>
                                <h5>Green Tea</h5>
                                <a data-toggle="modal" href="#myModal" class="btn btn-default">More Details</a> </figcaption>
                            <!-- /figcaption -->
                        </figure>
                        <!-- /figure -->
                    </div>
                    <!-- /grid-overlay -->
                </div>

                <!-- PORTFOLIO IMAGE 3 -->
                <div class="col-md-4">
                    <div class="grid overlay">
                        <figure> <img class="img-responsive" src="../template/images/caphe.png" alt="">
                            <figcaption>
                                <h5>Cappuccino</h5>
                                <a data-toggle="modal" href="#myModal" class="btn btn-default">More Details</a> </figcaption>
                            <!-- /figcaption -->
                        </figure>
                        <!-- /figure -->
                    </div>
                    <!-- /grid-overlay -->
                </div>
            </div>
            <!-- /row -->

            <!-- PORTFOLIO IMAGE 4 -->
            <div class="row">
                <div class="col-md-4 ">
                    <div class="grid overlay">
                        <figure> <img class="img-responsive" src="../template/images/caphe.png" alt="">
                            <figcaption>
                                <h5>Green Tea</h5>
                                <a data-toggle="modal" href="#myModal" class="btn btn-default">More Details</a> </figcaption>
                            <!-- /figcaption -->
                        </figure>
                        <!-- /figure -->
                    </div>
                    <!-- /grid-overlay -->
                </div>

                <!-- PORTFOLIO IMAGE 5 -->
                <div class="col-md-4">
                    <div class="grid overlay">
                        <figure> <img class="img-responsive" src="../template/images/caphe.png" alt="">
                            <figcaption>
                                <h5>Cookies</h5>
                                <a data-toggle="modal" href="#myModal" class="btn btn-default">More Details</a> </figcaption>
                            <!-- /figcaption -->
                        </figure>
                        <!-- /figure -->
                    </div>
                    <!-- /grid-overlay -->
                </div>

                <!-- PORTFOLIO IMAGE 6 -->
                <div class="col-md-4">
                    <div class="grid overlay">
                        <figure> <img class="img-responsive" src="../template/images/caphe.png" alt="">
                            <figcaption>
                                <h5>Cake</h5>
                                <a data-toggle="modal" href="#myModal" class="btn btn-default">More Details</a> </figcaption>
                            <!-- /figcaption -->
                        </figure>
                        <!-- /figure -->
                    </div>
                    <!-- /grid-overlay -->
                </div>
                <!-- /col -->
            </div>
            <!-- /row -->
        </div>
        <!-- /row -->
    </div>
</div>
<!-- /container -->

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<!---start-footer---->
<jsp:include page="footer.jsp"/>
<!---End-footer---->


</body>
</html>
