<%-- 
    Document   : item
    Created on : May 1, 2024, 10:28:20 PM
    Author     : Minul
--%>

<%@page import="java.util.List"%>
<%@page import="com.ecommerce.tradehub.entities.Product"%>
<%@page import="com.ecommerce.tradehub.dao.ProductDao"%>
<%@page import="com.ecommerce.tradehub.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Item</title>
  <%@include file="components/common.jsp" %>
  <link rel="stylesheet" href="css/item.css">
</head>
<%
    String productId = request.getParameter("id");
    String categoryId = request.getParameter("category");
    
    ProductDao pdao = new ProductDao(FactoryProvider.getFactory());
    Product product = pdao.getProductById(Integer.parseInt(productId));
    List<Product> relatedProducts = pdao.getRelatedProductbyId(Integer.parseInt(categoryId), Integer.parseInt(productId));
    int cid = Integer.parseInt(categoryId.trim());
    String catId = Integer.toString(cid);
    
%>

<body>
    <%@include file="components/nav.jsp" %>
    <div class="main-wrapper" >
    <div class="container px-5">
        <section class="item">
            <div class="row mt-5 ">
                <div class="main-image col-lg-5 border">
                    <img  src="images/products/<%= product.getpPhoto() %>">
                </div>
                <div class="content col-lg-6 col-md-12 col-12">
                    <h2><%= product.getpName() %></h2>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <span>(150 Reviews) |   In-Stock </span>
                    <h5> $<%= product.getpPrice() %></h5>
                    <br>
                    <p><%= product.getpDesc() %></p>
                    <div class="product-container">
                         <div class="quantity-selector">
                            <span class="minus">-</span>
                            <span class="num">01</span>
                            <span class="plus">+</span>
                        </div>
                         <div class="add-to-cart">
                             <a href="cart.jsp?id=<%= product.getpId()%>&category=<%=catId%>&page=products"><button type="submit">Add to Cart</button></a>
                            <button type="button" style="background-color: transparent; color: black; border: 1px solid black;" class="add-to-favorites">
                                    <i class="fa-regular fa-heart"></i> </button>
                        </div>
                    </div>
                    <div class="delivery-info">
                        <h2>  <i class="fa fa-truck"></i> Free Delivery</h2>
                        <p>Enter your postal code for Delivery Availability</p>
                        <br>
                        <h2><i class="fa-solid fa-rotate"></i> Return Delivery</h2>
                        <p>
                          <span class="delivery-icon">
                          
                          </span>
                          Free 30 Days Delivery Returns. <a href="#">Details</a>
                        </p>
                    </div>
          
                </div>
            </div>
        </section>
        
        <div class="tittle-box my-4">
         <h4>Related Items</h4>
        </div>
         <div class="product row my-5">
                <%
                                for(Product p:relatedProducts){

                   %>
                   <div class="card  col-md-4 col-lg-12 border" >
                            <a href="item.jsp?id=<%= p.getpId()%>&category=<%=catId%>">
                                <img src="images/products/<%= p.getpPhoto()%>" class="card-img-top py-2">
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
                              <a href="cart.jsp?id=<%= p.getpId()%>&category=<%=catId%>&page=products" class="card-link"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                            </div>
                         </div>

                
                        <%} 
                            %>
                           
              </div> 
    </div>
    </div>
   <%@include file="components/footer.jsp" %>
</body>
</html> 
<script>
    const plus = document.querySelector(".plus"),
          minus = document.querySelector(".minus"),
          num = document.querySelector(".num");
    let a = 1;
  
    plus.addEventListener("click", () => {
      a++;
      a = (a < 10) ? "0" + a : a;
      num.innerText = a;
    });
  
    minus.addEventListener("click", () => {
      if (a > 1) {
        a--;
        a = (a < 10) ? "0" + a : a;
        num.innerText = a;
      }
    });
  </script>