<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LONG
  Date: 10/31/2020
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../template/css/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="../template/css/admin.css" rel="stylesheet" type="text/css" media="all">
    <link href="//fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../template/js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="../template/js/menu.js"></script>

</head>
<body style="zoom: 1;">
<!----start-header----->
<jsp:include page="headerLogin.jsp"/>
<!----End-header----->
<!---start-content---->
    <input type="hidden" id="message" value="${message}"/>
    <script>
        var message = document.getElementById('message').value;
        if(message.length>0){
            alert(message);
        }
    </script>
<div class="wrap">
    <div class="container">
        <form method="post" action="uploadItem" enctype="multipart/form-data">
            <div class="row">
                <div class="col-25">
                    <label for="id">ID sản phẩm</label>
                </div>
                <div class="col-75">
                    <input type="text" id="id" name="id" placeholder="Nhập ID sản phẩm">
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="name">Tên sản phẩm</label>
                </div>
                <div class="col-75">
                    <input type="text" id="name" name="name" placeholder="Nhập tên sản phẩm">
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="price">Giá</label>
                </div>
                <div class="col-75">
                    <input type="text" id="price" name="price" placeholder="Đơn vị: vnd">
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="image">Hình ảnh</label>
                </div>
                <div class="col-75">
                    <input type="file" id="image" name="image" accept="image/*">
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="content">Nội dung</label>
                </div>
                <div class="col-75">
                    <textarea id="content" name="content" placeholder="Mô tả sản phẩm..."
                              style="height:200px;resize: none"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="itemType">Nhóm sản phẩm</label>
                </div>
                <div class="col-75">
                    <select id="itemType" name="itemType">
                        <c:forEach var="iType" items="${itemTypes}">
                            <option value="${iType.name}">${iType.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>

            <div class="row">
                <input type="submit" value="Xác nhận">
            </div>
        </form>

    </div>
</div>

<!---End-content---->
<!---start-footer---->
<jsp:include page="footerLogin.jsp"/>
<!---End-footer---->


</body>
</html>
