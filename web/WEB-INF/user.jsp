<%-- 
    Document   : userhome.jsp
    Created on : Nov. 28, 2022, 12:20:25 p.m.
    Author     : dom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home</title>
    </head>
    <body>
        <h1>Hello ${firstname}!</h1><br>
        <form>
            <h3>Manage Account Information</h3><br>
            <p>First Name: <input type="text" name="fname" id="fname" placeholder="${firstname}"></p><br>
            <p>Last Name: <input type="text" name="lname" id="lname" placeholder="${lastname}"></p><br>
            <p>Email: <input type="email" name="fname" id="fname" placeholder="${email}"></p><br>
            <p>Password: <input type="password" name="password" id="password"></p><br>
            <button type="submit">Confirm Changes</button>
        </form>
    </body>
</html>
