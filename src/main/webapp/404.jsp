<%-- 
    Document   : 404
    Created on : Apr 29, 2024, 10:30:21 PM
    Author     : MC DODANGODA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404 Page</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" type="text/css" href="css/404.css">
    </head>
    <body>
         <%@include file="components/nav.jsp" %>
        <div class="main-wrapper">
            <div id="container">
                <div class="content">
                    <h1>404 NOT FOUND</h1>
                    <h3>Your visited page not found. You may go home page.</h3>
                </div>
            </div>
            <div class="btn-container">
                <button type="submit" class="btn-primary">Back to home page</button>
            </div>
        </div>
        <%@include file="components/footer.jsp" %>
    </body>
</html>
