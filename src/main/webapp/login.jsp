<%-- 
    Document   : login
    Created on : Apr 22, 2024, 11:52:48 PM
    Author     : MC DODANGODA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" type="text/css" href="css/login.css">
    </head>
    <body>
        <%@include file="components/nav.jsp" %>
        <div class="main-wrapper">
           
            <div class="container">
            <!-- Content here -->
                <div class="row ">
                    
                    <div class="container-fluid">
                        <div class="col-md-8 image-container">
                            <img src="images/login/login.svg">
                        </div>
                        
                    </div>
                    
                     
                    <div class="container-fluid">
                        
                       
                        <div class="col-md-6 form-container">
                            
                            <form action="LoginServlet" method="post" class="form">
                                <div class="login-box">
                                    <%@include file="components/message.jsp" %>
                                    <h1>Log in to Exclusive</h1>
                                    <p><b>Enter your details below</b></p> 
                                    <div class="user-box">
                                        <input type="text" name="email" required="">
                                        <label>Email </label>
                                    </div> 
                                    <div class="user-box">
                                        <input type="password" name="pwrd" required="">
                                        <label>Password</label>
                                    </div>
                                    <div class="remember-forget">
                                        <label> <input type="checkbox">Remember Me <a href="#">Forget Password?</a></label>
                                    </div>
                                    <div class="buttons-container">
                                        <button class="btn-primary">Login</button>
                                        <p class="sign-up-label">
                                        Don't have an account? <a href="register.jsp" class="register-link">Register</a>
                                        </p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="components/footer.jsp" %>
  </body>
</html>    
                                
