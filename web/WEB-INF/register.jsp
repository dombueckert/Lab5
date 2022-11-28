<%-- 
    Document   : register
    Created on : Nov. 24, 2022, 5:02:06 p.m.
    Author     : dom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register page</title>
    </head>
    <body>
        <h1>HOME nVentory</h1>
        <h2>Register</h2>
        <form action="create">
            First Name: <input type="text" name="firstname"><br>
            Last Name: <input type="text" name="lastname"><br>
            Email: <input type="text" name="email"><br>
            Password: <input type="password" name="password"><br>
            <br>
            <input type="submit" value="Create account">
            
            <p>Already have an account? <a href="login">Login</a></p>
        </form>
    </body>
</html>
