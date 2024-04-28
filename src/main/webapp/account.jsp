<%-- 
    Document   : account
    Created on : Apr 25, 2024, 4:32:14 PM
    Author     : halvitikankanamgegihan
--%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.tradehub.dao.CategoryDao"%>
<%@page import="com.ecommerce.tradehub.entities.Category"%>
<%@page import="com.ecommerce.tradehub.helper.FactoryProvider"%>
<%@page import="com.ecommerce.tradehub.entities.User"%>

<!--protect account page-->
<%
    User user = (User) session.getAttribute("user_type");
    if (user == null) {
        session.setAttribute("message", "Login first");
        response.sendRedirect("login.jsp");
        return;
    } else if (!user.isUserType()) {
        session.setAttribute("message", "You are not admin");
        response.sendRedirect("login.jsp");
        return;
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account</title>
    <%@include file="components/common.jsp" %>
    <link rel="stylesheet" href="css/acc.css">
</head>
<body>
    <%@include file="components/nav.jsp" %>
    <div class="main-wrapper">
        <div class="col-md-6 form-container">
            <dl>
                <dt>Manage My account</dt>
                    <dd><a href="#">My Profile</a></dd>
                    <dd><a href="#">Address Book</a></dd>
                    <dd><a href="#" data-bs-toggle="modal" data-bs-target="#add-product-modal">My Payment Options</a></dd>
                <dt>My Orders</dt>
                    <dd><a href="#">My Returns</a></dd>
                    <dd><a href="#">My Cancellation</a></dd>
                <dt>My Wishlist</dt>
            </dl>
        </div>
        <div class="col-md-6 form-container">
            <div class="form-box">
                <%@include file="components/message.jsp" %>
                <h1>Edit Your Profile</h1>
                <form action="#">
                    <div class="row g-3">
                        <div class="input-container col-lg-6">
                            <label for="first-name" class="form-label">First Name</label>
                            <input type="text" id="first-name" class="form-control" placeholder="Dushan">
                        </div>
                        <div class="input-container col-lg-6">
                            <label for="last-name" class="form-label">Last Name</label>
                            <input type="text"  class="form-control" placeholder="Dushan">
                        </div>
                    </div>
                    <div class="input-container col-lg-12">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" id="email" class="form-control" placeholder="youremail@sample.com">
                    </div>
                    <div class="input-container col-lg-12">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" id="address" class="form-control" placeholder="127/6, High level road, Colombo 7">
                    </div>
                    <div class="input-container col-lg-12">
                        <label for="password-changes" class="form-label">Password Changes</label>
                        <input type="text" id="current-password" class="form-control" placeholder="Current Password">
                        <br>
                        <input type="text" id="new-password" class="form-control" placeholder="New Password">
                        <br>
                        <input type="text" id="confirm-new-password" class="form-control" placeholder="Confirm New Password">
                    </div>
                    <div class="button-container">
                        <button type="submit" class="btn-primary">Cancel</button>
                        <button type="submit" class="btn-primary">Save Changes</button>
                    </div>
                </form>
            </div>
        </div> 
    </div>
     <!-- Modal -->
            <div class="modal fade" id="add-product-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Product details</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                      
                      <!-- form -->
                      <form action="ProductServlet" method="post" enctype="multipart/form-data">
                          
                          <input type="hidden" name="operation" value="addproduct"/>
                          <div class="form-group">
                              <input type="text" class="form-control" placeholder="Enter title" name="pName" required/>
                              
                          </div>
                          <div class="form-group">
                              <textarea class="form-control" placeholder="Enter description" name="pDesc"></textarea>
                              
                          </div>
                          <div class="form-group">
                              <input type="number" class="form-control" placeholder="Enter price" name="pPrice" required/>
                              
                          </div>
                          
                          <div class="form-group">
                              <input type="number" class="form-control" placeholder="Enter qty" name="pQuantity" required/>
                              
                          </div>
                          
                          <% 
                             CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                             List<Category> list = cdao.getCategories();
                             
                          %>
                          
                          
                          
                          <div class="form-group">
                              <select name="catId" class="form-control" >
                                  <% for(Category c:list){
                                  %>
                                      
                                  <option value="<%=c.getCategoryId()%>"><%=c.getCategoryName() %></option>
                                  <%} %>
                                  
                              </select>
                              
                          </div>
                          <div class="form-group">
                              <label for="pPic">Select picture</label>
                              <input type="file"  id="pPic" class="form-control"  name="pPic" required/>
                              
                          </div>
                          <div class="container">
                          <input class="btn btn-primary" type="submit" value="Submit">
                          <input class="btn btn-secondary" type="reset" value="Reset">
                          </div>
                      </form>
                      
                      
                      <!-- end form -->
                  </div>
                  <div class="modal-footer">
                    
                  </div>
                </div>
              </div>
            </div>

        
        <!-- end product model -->
    <%@include file="components/footer.jsp" %>
</body>
</html>
