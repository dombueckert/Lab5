<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello <c:out value="${name}"/>! <a href="shoppinglist?action=logout">Logout</a></p>
        
        <h1>List</h1>
        
        <form action="shoppinglist" method="post">
            <input type="hidden" name="action" value="add">
            <label>Add Item: <input type="text" name="item" id="item"></label>
            <button type="submit">Add</button>
        </form>
     
    <form action="shoppinglist" method="post">
        <input type="hidden" name="action" value="delete">
        <c:forEach var="item" items="${items}">
            <label><input type="radio" name="item" value="${item}">${item}</label>
            <br>
        </c:forEach>
            <br>
        <button type="submit">Delete</button>
    </form>
        
        
    </body>
</html>
