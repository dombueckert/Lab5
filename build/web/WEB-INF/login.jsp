<%-- 
    Document   : Login
    Created on : Nov. 24, 2022, 4:25:32 p.m.
    Author     : dom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>HOME nVentory</h1>
        <h2>Login</h2>
        <form action="login" method="post">
            Email: <input type="text" name="email"><br>
            Password: <input type="password" name="password"><br>
            <br>
            
            <input type="submit" value="Sign in">
            
            <p>Don't have an account? <a href="register">Create an account!</a></p>
        </form>
    </body>
</html>
