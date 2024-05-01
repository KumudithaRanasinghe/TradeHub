<%-- 
    Document   : electronics
    Created on : Apr 29, 2024, 2:30:33 AM
    Author     : Shadow
--%>

<%@page import="java.util.List"%>
<%@page import="com.ecommerce.tradehub.entities.Product"%>
<%@page import="com.ecommerce.tradehub.dao.ProductDao"%>
<%@page import="com.ecommerce.tradehub.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" href="css/product.css"/>
    </head>
    <body>
        <%@include file="components/nav.jsp" %>
        <div class="main-wrapper" >
            <div class="container">
            <% 
                   String cat = request.getParameter("category");
                   ProductDao pdao = new ProductDao(FactoryProvider.getFactory());
                   List<Product> plist =null;
                     if(cat==null || cat.trim().equals("all")){
                         plist = pdao.getAllProducts();

                        }else{
                            int cid = Integer.parseInt(cat.trim());
                            plist= pdao.getAllProductsbyId(cid);

                    }
                     %> 
            <div class="row g-5 py-5">
                <%
                                for(Product p:plist){

                   %>

                <div class="col">
                    <div class="card" >
                      <a href="#" alt="">
                      <img src="/images/test/<%= p.getpPhoto()%>" class="card-img-top">
                      </a>
                      <div class="card-body">
                        <h5 class="card-title"><%= p.getpName()%></h5>
                      </div>
                      <ul class="list-group list-group-flush">
                        <li class="list-group-item">$ <%=p.getpPrice() %></li>
                        <li class="list-group-item">
                          <div class="product bottom">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </li>
                        </ul>    
                      <div class="card-footer">
                        <a href="#" class="card-link"><i class="fa fa-heart" aria-hidden="true"></i></a>
                        <a href="cart.jsp?id=<%= p.getpId()%>" class="card-link"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                      </div>
                    </div>
                </div>
                        <%} 
                            if(plist.size()== 0){
                                 out.println("No items on this category");

                                }
                        %>
              </div>
          </div>
        </div>
      <%@include file="components/footer.jsp" %>
    </body>
</html>
