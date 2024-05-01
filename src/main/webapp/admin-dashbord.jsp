<%-- 
    Document   : admin-dashbord
    Created on : Apr 29, 2024, 6:01:48 PM
    Author     : Shadow
--%>

<%@page import="com.ecommerce.tradehub.helper.Count"%>
<%@page import="java.util.Map"%>
<%@page import="com.ecommerce.tradehub.entities.Category"%>
<%@page import="com.ecommerce.tradehub.dao.CategoryDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.tradehub.dao.UserDao"%>
<%@page import="com.ecommerce.tradehub.entities.User"%>
<%@page import="com.ecommerce.tradehub.helper.FactoryProvider"%>

<%
    User user = (User) session.getAttribute("user_type");
    if (user == null) {
        session.setAttribute("message", "Login first");
        response.sendRedirect("login.jsp");
        return;
    } else if (!user.isUserStatus()) {
        session.setAttribute("message", "You are not an admin");
        response.sendRedirect("login.jsp");
        return;
    }
    
%>

<%
    CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
    List<Category> list = cdao.getCategories();
    
    //getting count
    Map<String,Long> m = Count.getCounts(FactoryProvider.getFactory());
    

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" href="css/admin.css"/>
    </head>
    <body>
        <%@include file="components/nav.jsp" %>
        <div class="main-wrapper">
            <div class="container admins">
                <div class="container-fluid">
            <div class="row mt-3 mx-4">
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body text-center">
                                <div class="container">
                                    <img style=max-width:125px; class="img-fluid rounded-circle" src="images/admin/profile.png">
                                </div>
                                <h1><%= m.get("userCount")%></h1>
                                <h1 class="text-uppercase " style="color:#008774;">Users</h1>
                            </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card text-center">
                            <div class="card-body">
                                <div class="container">
                                    <img style=max-width:125px; class="img-fluid rounded-circle" src="images/admin/category.png">
                                </div>
                                <h1><%= list.size()%></h1>
                                <h1 class="text-uppercase " style="color:#008774;">Categories</h1>
                            </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card ">
                            <div class="card-body text-center">
                                <div class="container">
                                    <img style=max-width:125px; class="img-fluid rounded-circle" src="images/admin/product.png">
                                </div>
                                <h1><%= m.get("productCount")%></h1>
                                <h1 class="text-uppercase " style="color:#008774;">Products</h1>
                            </div>
                    </div>
                </div>
            </div>
           </div>
        </div>
        
        <div class="container section-wrapper">
        <%@include file="components/message.jsp" %>
        <div class="row create-section">
          <div class="col-12 col-lg-6 ">
            <h2 class="section-title"><i class="fa-solid fa-certificate fa-xs"></i> TradeHub <span>Users</span></h2>
            <div class="admins-list">
                <%
                    
                    
                    UserDao udao = new UserDao(FactoryProvider.getFactory());
                    List<User> userList = udao.getUsers();
                      
                    %>
<!--                <form action="RemoveUserServlet" method="post">      -->
                 <table class="table table-hover table-striped ">
                 <thead>
                   <tr>
                     <th scope="col">ID</th>
                     <th scope="col">Name</th>
                     <th scope="col">Email</th>
                     <th scope="col">Business Type</th>
                     <th scope="col" class="col-1">Action</th>
                     </tr>
                  </thead>
                 <tbody class="table-group-divider">
                        <%
                            for(User u: userList){

                        %>
                         <tr>
                             <td><%=u.getUserId()  %></td>
                             <td><%=u.getUserName() %></td>
                             <td><%=u.getUserEmail()  %></td>
                             <td><%=u.isUserType() %></td>
                             <td><a class="btn btn-danger" href="RemoveUserServlet?id=<%=u.getUserId()%>"><i class="fa-solid fa-trash"></i></a></td>

                         </tr>
                         <%
                             }
                          %>

                 </tbody>

               </table>
<!--              </form> -->
            </div>
            

          </div>
        </div>
        </div>
      </div>
     <%@include file="components/footer.jsp" %> 
    </body>
</html>
