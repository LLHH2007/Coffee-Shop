<%--
  Created by IntelliJ IDEA.
  User: LONG
  Date: 10/26/2020
  Time: 7:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    document.getElementById("nav-price").className = "active";
</script>
<!----End-header----->
<!---start-content---->
<div class="wrap">
    <div class="content">
        <div class="about-info">
            <h2>${menu.title}</h2>
            <a href="#">${menu.highlights}</a>
            <p>${menu.content}</p>
        </div>
        <div class="menu_list">
            <div class="section group">
                <c:forEach var="type" items="${ItemType}">
                    <div class="col_1_of_4 span_1_of_4">

                        <h3>${type.name}</h3>
                        <img src="../template/images/${type.img}" alt="">
                        <ul>
                    <c:forEach var="item" items="${Items}">
                        <c:if test="${item.itemType.equals(type.id)}">
                            <li><a href="#"><span class="item_name">${item.name}</span><span class="price">${item.price}đ</span></a></li>
                        </c:if>
                    </c:forEach>
                        </ul>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

<!---End-content---->
<!---start-footer---->
<jsp:include page="footer.jsp"/>
<!---End-footer---->



</body></html>
