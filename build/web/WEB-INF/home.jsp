<%-- 
    Document   : home.jsp
    Created on : Nov. 28, 2022, 1:06:52 p.m.
    Author     : dom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Hello ${firstname}</h1>
        <h3>What do you want to get done?</h3>
        <p><a href="user">Manage Account Information</a></p>
        <p><a href="inventory">Inventory?</a></p>
    </body>
</html>
