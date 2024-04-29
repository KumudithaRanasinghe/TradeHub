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
      
      <section class="header">
    <div class="side-menu">
        <% 
                 String cat = request.getParameter("category");
                 CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                 List<Category> clist = cdao.getCategories();

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
    </section>
    <div id="carouselExampleIndicators" class="carousel slide">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="images/home/lifestyle.jpg" class="d-block w-100">
        </div>
        <div class="carousel-item">
          <img src="images/home/working.jpg" class="d-block w-100">
        </div>
        <div class="carousel-item">
          <img src="images/home/pets.jpg" class="d-block w-100">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  <div class="container">
  <div class="tittle-box">
      <h4>Today's <a href="products.jsp?category=all"><button class="tittle-box-button">View All</button></a></h4>
  <h1>Flash sales</h1>
  </div>
      

<!--    <div class="container">-->
      <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col ">
        <div class="card" >
          <a href="#" alt="">
          <img src="images/home/bags.png" class="card-img-top">
          </a>
          <div class="card-body">
            <h5 class="card-title">Lady's Handbag</h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">$250.35</li>
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
        </div>

        <div class="col">
        <div class="card" style="width: 15rem;">
          <a href="#" alt="">
          <img src="images/home/coat.png" class="card-img-top">
          </a>
          <div class="card-body">
            <h5 class="card-title">Winter coat</h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">$500.45</li>
            <li class="list-group-item">
              <div class="product bottom">
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
        </div>
        
        <div class="col-md-4 mb-4">
        <div class="card" style="width: 15rem;">
          <a href="#" alt="">
          <img src="images/home/comfort chair.png" class="card-img-top">
          </a>
          <div class="card-body">
            <h5 class="card-title">Comfort chair</h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">$150.75</li>
            <li class="list-group-item">
              <div class="product bottom">
                <i class="fa fa-star"></i>
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
        </div>

        <div class="col-md-4 mb-4">
        <div class="card" style="width: 15rem;">
          <a href="#" alt="">
          <img src="images/home/dog food.png" class="card-img-top">
          </a>
          <div class="card-body">
            <h5 class="card-title">Breed Dog Food</h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">$50.40</li>
            <li class="list-group-item">
              <div class="product bottom">
                <i class="fa fa-star"></i>
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
        </div>

        <div class="col-md-4 mb-4">
        <div class="card" style="width: 15rem;">
          <a href="#" alt="">
          <img src="images/home/watch.png" class="card-img-top">
          </a>
          <div class="card-body">
            <h5 class="card-title">Watches</h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">$180.75</li>
            <li class="list-group-item">
              <div class="product bottom">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half"></i>
                
                </div>
            </li>
          </ul>
          <div class="card-footer">
            <a href="#" class="card-link"><i class="fa fa-heart" aria-hidden="true"></i></a>
            <a href="#" class="card-link"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
          </div>
        </div>
        </div>
        
        <div class="col-md-4 mb-4">
        <div class="card" style="width: 15rem;">
          <a href="#" alt="">
          <img src="images/home/airpods.jpg" class="card-img-top">
          </a>
          <div class="card-body">
            <h5 class="card-title">Airpods</h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">$300.65</li>
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
        </div>
        </div>
        
        </div>
        </div>
      </div>
<!--    </div>-->

    <div class="container">
    <div class="tittle-box">
        <h4>This Months<a href="products.jsp?category=all"><button class="tittle-box-button">View All</button></a></h4>
      <h1>Best Selling products</h1>
      </div>
      </div>
      <div class="container">
        <%
            for(Category c:clist)
            {
        %>
            <a href="products.jsp?category=<%= c.getCategoryId() %>"><button class="catagerory-button"><%=c.getCategoryName()%></button></a>
        <%   
                    }
        %>
      </div>




    <div class="container">
      <div class="row">
      <div class="col-md-4 mb-4">
        <div class="card" style="width: 15rem;">
          <a href="#" alt="">
          <img src="images/home/airpods.jpg" class="card-img-top">
          </a>
          <div class="card-body">
            <h5 class="card-title">Airpods</h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">$300.65</li>
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
        </div>

        <div class="col-md-4 mb-4">
          <div class="card" style="width: 15rem;">
            <a href="#" alt="">
            <img src="images/home/airpods.jpg" class="card-img-top">
            </a>
            <div class="card-body">
              <h5 class="card-title">Airpods</h5>
              
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">$300.65</li>
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
          </div>
          <div class="col-md-4 mb-4">
            <div class="card" style="width: 15rem;">
              <a href="#" alt="">
              <img src="images/home/airpods.jpg" class="card-img-top">
              </a>
              <div class="card-body">
                <h5 class="card-title">Airpods</h5>
                
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">$300.65</li>
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
            </div>
            <div class="col-md-4 mb-4">
              <div class="card" style="width: 15rem;">
                <a href="#" alt="">
                <img src="images/home/airpods.jpg" class="card-img-top">
                </a>
                <div class="card-body">
                  <h5 class="card-title">Airpods</h5>
                  
                </div>
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">$300.65</li>
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
              </div>
              <div class="col-md-4 mb-4">
                <div class="card" style="width: 15rem;">
                  <a href="#" alt="">
                  <img src="images/home/airpods.jpg" class="card-img-top">
                  </a>
                  <div class="card-body">
                    <h5 class="card-title">Airpods</h5>
                    
                  </div>
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item">$300.65</li>
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
                </div>

                <div class="col-md-4 mb-4">
                  <div class="card" style="width: 15rem;">
                    <a href="#" alt="">
                    <img src="images/home/airpods.jpg" class="card-img-top">
                    </a>
                    <div class="card-body">
                      <h5 class="card-title">Airpods</h5>
                      
                    </div>
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item">$300.65</li>
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
                  </div>
          </div>
          <div id="icons">
            <div class="container">
                <div class="row">
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
</div>
      
      
     <%@include file="components/footer.jsp" %> 
    </body>
</html>
