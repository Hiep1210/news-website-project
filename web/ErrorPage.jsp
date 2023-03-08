<%-- 
    Document   : ErrorPage
    Created on : Mar 1, 2023, 11:57:35 PM
    Author     : Inspiron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="<%= (String)request.getAttribute("return_page") %>"/>
        <b><%= (String)request.getAttribute("error")  %></b>
    </body>
</html>
