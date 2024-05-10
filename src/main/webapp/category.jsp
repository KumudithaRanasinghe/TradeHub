<%-- 
    Document   : category.jsp
    Created on : Apr 28, 2024, 3:37:46 AM
    Author     : Shadow
--%>

<%@page import="com.ecommerce.tradehub.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.tradehub.dao.CategoryDao"%>
<%@page import="com.ecommerce.tradehub.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categories</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" type="text/css" href="css/category.css">
    </head>
    <body>
        <%@include file="components/nav.jsp" %>
        
        <div class="main-wrapper"> 
            <div class="container">
            <% 
                 String cat = request.getParameter("category");
                 CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                 List<Category> clist = cdao.getCategories();

            %>
       <div class=" category row">
          <div class="card col-md-4 col-lg-12 border"> 
            <div class="icon">
              <img src="images/category/cat1.png" alt="Card image cap">
            </div>
            <div class="card-body" >
              <h5 class="card-title">Electronics</h5>
              <div class="card-text">
            <p>Explore the latest gadgets and tech innovations in our Electronics section.</p>
            </div>

                <li>Smartphones & Tablets</li>
                <li>Computers & Laptops</li>
                <li>Gaming & Accessories</li>
                <li>Gaming & Accessories</li>
            </div>
              <a href="products.jsp?category=1" class="text-center btn-primary">Explore Products</a> 
          </div>
          <div class="card col-md-4 col-lg-12 border"> 
            <div class="icon">
              <img src="images/category/cat2.jpeg" alt="Card image cap">
            </div>
            <div class="card-body" >
              <h5 class="card-title">Home & Lifestyle</h5>
              <div class="card-text">
    <p>Discover a world of comfort and style with our Home & Lifestyle products.</p>
</div>

                <li>Furniture & Decor</li>
                <li>Kitchen & Dining</li>
                <li>Bedding & Bath</li>
                <li>Home Appliances</li>
            </div>
              <a href="products.jsp?category=4" class="text-center btn-primary">Explore Products</a> 
          </div>
          <div class="card col-md-4 col-lg-12 border"> 
            <div class="icon">
              <img src="images/category/cat3.png" alt="Card image cap">
            </div>
            <div class="card-body" >
              <h5 class="card-title">Medicine</h5>
              <div class="card-text">
    <p>Stay healthy and well-equipped with our Medicine category.</p>
</div>

                <li>Over-the-counter Medications</li>
                <li>Prescription Drugs</li>
                <li>Vitamins & Supplements</li>
                <li>First Aid & Health Supplies</li>
            </div>
              <a href="products.jsp?category=3" class="text-center btn-primary">Explore Products</a> 
          </div>
          <div class="card col-md-4 col-lg-12 border"> 
            <div class="icon">
              <img src="images/category/cat4.png" alt="Card image cap">
            </div>
            <div class="card-body" >
              <h5 class="card-title">Sports</h5>
              <div class="card-text">
    <p>Get active and pursue your passion for sports with our wide range of sporting goods.</p>
</div>

                <li>Fitness Equipment</li>
                <li>Team Sports Gear</li>
                <li>Outdoor Recreation</li>
                <li>Athletic Apparel</li>
            </div>
              <a href="products.jsp?category=5" class="text-center btn-primary">Explore Products</a> 
          </div>
          <div class="card col-md-4 col-lg-12 border"> 
            <div class="icon">
              <img src="images/category/cat5.png" alt="Card image cap">
            </div>
            <div class="card-body" >
              <h5 class="card-title">Toys</h5>
              <div class="card-text">
    <p>Ignite your child's imagination with our playful selection of Toys.</p>
</div>

               <li>Action Figures</li>
                <li>Dolls & Accessories</li>
                <li>Educational Toys</li>
                <li>Educational Toys</li>
            </div>
              <a href="products.jsp?category=2" class="text-center btn-primary">Explore Products</a> 
          </div>
          <div class="card col-md-4 col-lg-12 border"> 
            <div class="icon">
              <img src="images/category/cat6.png" alt="Card image cap">
            </div>
            <div class="card-body" >
              <h5 class="card-title">Helth & Beauty</h5>
              <div class="card-text">
    <p>Indulge in self-care and pampering rituals with our Health & Beauty products.</p>
</div>

                <li>Skincare</li>
                <li>Makeup</li>
                <li>Haircare</li>
                <li>Bath & Body</li>
            </div>
              <a href="products.jsp?category=6" class="text-center btn-primary">Explore Products</a> 
          </div>
          <div class="card col-md-4 col-lg-12 border"> 
            <div class="icon">
              <img src="images/category/cat7.jpeg" alt="Card image cap">
            </div>
            <div class="card-body" >
              <h5 class="card-title">Other</h5>
              <div class="card-text">
    <p>Discover unique and unexpected treasures in our Other category.</p>
</div>

                <li>Gifts & Novelty Items</li>
                <li>Pet Supplies</li>
                <li>Books & Stationery</li>
                <li>Arts & Crafts</li>
            </div>
              <a href="products.jsp?category=7" class="text-center btn-primary">Explore Products</a> 
          </div>  
        </div>
    </div>
       </div>
   <%@include file="components/footer.jsp" %>
    </body>
</html>
