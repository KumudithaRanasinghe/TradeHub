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
        <div class="main-wrapper">
        <div class="container">
            <!-- Content here -->
         <div class="row">
                <div class="container-fluid">
                    <div class="col-md-8 image-container">
                        <img src="images/login/login.svg">
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="col-md-6 form-container">
                        <form>
                            <div class="login-box">
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
                                    <span class="sign-up-link"> Forget Password?</span>
                                <div class="buttons-container">
                                    <button class="btn-primary">Login</button>
                                    <p class="sign-up-label">
                                    Don't have an account? <span class="sign-up-link">Register</span>
                                    </p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>
  </body>
</html>
