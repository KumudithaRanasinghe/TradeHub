<%-- 
    Document   : index
    Created on : Apr 20, 2024, 4:08:38 AM
    Author     : Shadow
--%>

<%@page import="com.ecommerce.tradehub.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="components/common.jsp" %>
    </head>
    <body>
        <%@include file="components/nav.jsp" %>
        <div class="main-wrapper">
        <center>
            <h1>Hello Putha !!!</h1>
              <%
                    out.println(FactoryProvider.getFactory());
                
              %>
              <br>
            <img src="images/test/test.jpg" alt="test"/>
            <button type="button" class="btn btn-primary">Primary</button>
        </center>
        </div>
        <%@include file="components/footer.jsp" %>
              
    </body>
</html>
