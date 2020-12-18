<%--
  Created by IntelliJ IDEA.
  User: LONG
  Date: 10/31/2020
  Time: 10:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Highlands</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../template/css/login.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>
<div class="loginbox">
    <img src="../template/images/avatar.png" class="avatar">
    <h1>Login Here</h1>
    <form name = "myForm" action="login" method="post">
        <p>Username</p>
        <input type="text" name="username" placeholder="Enter Username">
        <p>Password</p>
        <input type="password" name="password" placeholder="Enter Password">
        <input type="submit" name="" value="Login">
        <p>${message}</p>
        <a href="home">Return to home</a>
    </form>
</div>
</body>
</html>
