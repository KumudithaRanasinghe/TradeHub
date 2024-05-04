<%-- 
    Document   : home
    Created on : Apr 28, 2024, 3:39:26 PM
    Author     : DELL
--%>

<%@page import="com.ecommerce.tradehub.entities.Category"%>
<%@page import="com.ecommerce.tradehub.dao.CategoryDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.tradehub.entities.Product"%>
<%@page import="com.ecommerce.tradehub.dao.ProductDao"%>
<%@page import="com.ecommerce.tradehub.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" href="css/home.css">
    </head>
    <body>
        <%@include file="components/nav.jsp" %>
      
      
      <!---------------- homepage-------------- -->
      <div class="main-wrapper">
      <section class="header container">
    <div class="side-menu">
        <% 
                 String cat = request.getParameter("category");
                 CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                 ProductDao productDao = new ProductDao(FactoryProvider.getFactory());
                 List<Category> clist = cdao.getCategories();
                 List<Product> products = productDao.getAllProducts();

            %>
        <ul>
                <%
                    for(Category c:clist)
                    {
                %>
            <p><a href="products.jsp?category=<%= c.getCategoryId() %>"><%=c.getCategoryName()%><i class="fa fa-angle-right" aria-hidden="true"></i></a></p>
            <%   
                    }
                %>

        </ul>
    </div> 
    <div class="carousel-wrapper">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel"> 
          <div class="carousel-indicators ">
            <button type="button"  data-bs-slide-to="0" class="indicator-btn" aria-current="true" aria-label="Slide 1"></button>
            <button type="button"  data-bs-slide-to="1" class="indicator-btn "  aria-label="Slide 2"></button>
            <button type="button"  data-bs-slide-to="2" class="indicator-btn active" aria-label="Slide 3"></button>
            <button type="button"  data-bs-slide-to="3" class="indicator-btn" aria-label="Slide 4"></button>
            <button type="button"  data-bs-slide-to="4" class="indicator-btn" aria-label="Slide 5"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item ">
              <img src="images/home/lifestyle.jpg" class="d-block w-100">
            </div>
            <div class="carousel-item ">
              <img src="images/home/lifestyle.jpg" class="d-block w-100">
            </div>
            <div class="carousel-item active">
              <img src="images/home/working.jpg" class="d-block w-100">
            </div>
            <div class="carousel-item">
              <img src="images/home/pets.jpg" class="d-block w-100">
            </div>
            <div class="carousel-item">
              <img src="images/home/pets.jpg" class="d-block w-100">
            </div>
          </div>

        </div>
     </div>
    </section>
  <div class="container px-5">

  <div class="tittle-box my-4">
      <h4>Today's <a href="products.jsp?category=all"><button class="tittle-box-button">View All</button></a></h4>
  <h1>Flash sales</h1>
  </div>
      <div class="sales row">
        <%
            for(Product product : products){
            
            %>
            <div class="card  col-md-4 col-lg-12 border" >
          <a href="#" alt="">
              <img src="images/products/<%=product.getpPhoto()%>" class="card-img-top  py-2">
          </a>
          <div class="card-body">
            <h5 class="card-title"><%=product.getpName()%></h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">Rs.<%=product.getpPrice()%>.00</li>
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
            <a href="#" class="card-link"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
          </div>
        </div>
            
            <%
            }
        
        %>
         
        
     
     
        </div>
    </div>
        <div class="container px-5">
          
            <div class="tittle-box my-4">
              <h4>This Months<a href="products.jsp?category=all"><button class="tittle-box-button">View All</button></a></h4>
            <h1>Best Selling products</h1>
            </div>
            <div class="category-box">
              <%
                  for(Category c:clist)
                  {
              %>
                  <a href="products.jsp?category=<%= c.getCategoryId() %>"><button class="catagerory-button"><%=c.getCategoryName()%></button></a>
              <%   
                          }
              %>
            </div>
               <div class="sales row">
        <%
            for(Product product : products){
            
            %>
            <div class="card  col-md-4 col-lg-12 border" >
          <a href="#" alt="">
              <img src="images/products/<%=product.getpPhoto()%>" class="card-img-top  py-2">
          </a>
          <div class="card-body">
            <h5 class="card-title"><%=product.getpName()%></h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">Rs.<%=product.getpPrice()%>.00</li>
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
            <a href="#" class="card-link"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
          </div>
        </div>
            
            <%
            }
        
        %>
        </div>
            
      </div>
            <div class="container px-5">
                <div class="icon row">
                    <div class="col-md-4">
                        <div class="icon-item text-center">
                            <i class="fa-solid fa-truck fa-3x"></i>
                            <h2>FREE AND FAST DELIVERY</h2>
                            <p>Free delivery for all orders over $140</p>            
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="icon-item text-center">
                            <i class="fa-solid fa-headphones fa-3x"></i>
                            <h2>24/7 CUSTOMER SERVICE</h2>
                            <p>Friendly 24/7 customer support</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="icon-item text-center">
                            <i class="fa-solid fa-credit-card fa-3x"></i>
                            <h2>MONEY BACK GUARANTEE</h2>
                            <p>We return money within 30 days</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      
      
      
     <%@include file="components/footer.jsp" %> 
    </body>
</html>
