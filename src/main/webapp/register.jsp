<%-- 
    Document   : Registration
    Created on : Apr 23, 2024, 5:01:23 AM
    Author     : MC DODANGODA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" type="text/css" href="css/register.css">
    </head>
    <body>
        <%@include file="components/nav.jsp" %>
        <div class="main-wrapper">
            <div class="container">
                <div class="img">
                    <img src="images/Registration/Regi.svg">
                </div>
                
                <div id="individualFields" style="display: block; ">
                    
                    <div class="form-box">
                        <%@include file="components/message.jsp" %>
                        <form  action="RegisterServlet" method="post" class="form">
                            <h1>Create an account</h1>
                           
                            <div class="btn-container">
                                <label class="switch btn-color-mode-switch">
                                <input  name="user_type" type="checkbox" role="switch"  id="user_type">
                                <label class="btn-color-mode-switch-inner" data-off="Personal" data-on="Business" for="user_type"></label>
                                </label>
                            </div>
                            <br>
                            <div class="flex-column">
                                <label>First Name</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="text" placeholder="Enter your First Name" class="input" name="user_name" required>
                            </div>
                            <div class="flex-column">
                                <label>Last Name</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="text" placeholder="Enter Your Last Name" class="input" name="lname" required>
                            </div>
                            <div class="flex-column">
                                <label>Email </label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="text" placeholder="Enter Your Email" class="input" name="user_email" required>
                            </div>
                            <div class="flex-column">
                                <label>Password</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="password" placeholder="Enter Your Password" class="input" name="user_password" required>
                            </div>
                            <div class="flex-column">
                                <label>Confirm Password</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="password" placeholder="Enter Your Password" class="input" name="user_seepassword" required>
                            </div>
                            <div class="flex-column">
                                <label>Phone Number</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="text" placeholder="Enter your Phone Number" class="input" name="user_phone" required>
                            </div>
                            <div class="flex-column">
                                <label>Address</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="text" placeholder="Enter your Address" class="input" name="user_address" required>
                            </div>
                            <div class="flex-row">
                                <input type="checkbox">
                                <label>By selecting Create Personal account, you agree to our <a href="#">User Agreement</a> and acknowledge reading our <a href="#">User Privacy Notice.</a></label>
                            </div>
                            <input type="submit" class="btn btn-primary" value="Submit">
                            <br>
                            <div class="google-login-button">
                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" version="1.1" x="0px" y="0px" class="google-icon" viewBox="0 0 48 48" height="1.5em" width="1.5em" xmlns="http://www.w3.org/2000/svg">
                                <path fill="#FFC107" d="M43.611,20.083H42V20H24v8h11.303c-1.649,4.657-6.08,8-11.303,8c-6.627,0-12-5.373-12-12
                                c0-6.627,5.373-12,12-12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C12.955,4,4,12.955,4,24
                                 c0,11.045,8.955,20,20,20c11.045,0,20-8.955,20-20C44,22.659,43.862,21.35,43.611,20.083z"></path>
                                <path fill="#FF3D00" d="M6.306,14.691l6.571,4.819C14.655,15.108,18.961,12,24,12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657
                                C34.046,6.053,29.268,4,24,4C16.318,4,9.656,8.337,6.306,14.691z"></path>
                                <path fill="#4CAF50" d="M24,44c5.166,0,9.86-1.977,13.409-5.192l-6.19-5.238C29.211,35.091,26.715,36,24,36
                                c-5.202,0-9.619-3.317-11.283-7.946l-6.522,5.025C9.505,39.556,16.227,44,24,44z"></path>
                                <path fill="#1976D2" d="M43.611,20.083H42V20H24v8h11.303c-0.792,2.237-2.231,4.166-4.087,5.571
                                c0.001-0.001,0.002-0.001,0.003-0.002l6.19,5.238C36.971,39.205,44,34,44,24C44,22.659,43.862,21.35,43.611,20.083z"></path>
                            </svg>
                                <span>Sign up with Google</span>
                            </div>  
                        </form>
                    </div>
                </div>
                <div id="businessFields" style="display: none; ">
                    <div class="form-box">
                        <form action="RegisterServlet" method="post" class="form" >
                            <h1>Create an account</h1>
                         
                            <div class="btn-container">
                                <label class="switch btn-color-mode-switch">
                                <input  name="user_type" type="checkbox" role="switch" value="true" id="user_type" checked>
                                <label class="btn-color-mode-switch-inner" data-off="Personal" data-on="Business" for="user_type"></label>
                                </label>
                            </div>
                            <br>
                                <p>Continue to register as a business or nonprofit, or if you plan to sell a large number of goods.</p>
                            <div class="flex-column">
                                <label>Business Name</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="text" placeholder="Enter your Business Name" class="input" name="user_name" required>
                            </div>
                            <div class="flex-column">
                                <label>Business Type</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="text" placeholder="Enter Your Business Type" class="input" name="lname" required>
                            </div>
                            <div class="flex-column">
                                <label>Business Address</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="text" placeholder="Enter your Business Address" class="input" name="user_address" required>
                            </div>
                            <div class="flex-column">
                                <label>Business Phone Number</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="text" placeholder="Enter your Business Phone Number" class="input" name="user_phone" required>
                            </div>
                            <div class="flex-column">
                                <label>Business Email</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="text" placeholder="Enter your Business Email" class="input" name="user_email" required>
                            </div>
                            <div class="flex-column">
                                <label>Password</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="password" placeholder="Enter Your Password" class="input" name="user_password" required>
                            </div>
                            <div class="flex-column">
                                <label>Confirm Password</label>
                            </div>
                            <div class="inputForm mb-3">
                                <input type="password" placeholder="Enter Your Password" class="input" name="user_seepassword" required>
                            </div> 
                            <div class="flex-row">
                                <input type="checkbox">
                                <label>By selecting Create Personal account, you agree to our <a href="#">User Agreement</a> and acknowledge reading our <a href="#">User Privacy Notice.</a></label>
                            </div>
                            <input type="submit" class="btn btn-primary" value="Submit">
                            <br>
                            <div class="google-login-button">
                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" version="1.1" x="0px" y="0px" class="google-icon" viewBox="0 0 48 48" height="1.5em" width="1.5em" xmlns="http://www.w3.org/2000/svg">
                                <path fill="#FFC107" d="M43.611,20.083H42V20H24v8h11.303c-1.649,4.657-6.08,8-11.303,8c-6.627,0-12-5.373-12-12
                                c0-6.627,5.373-12,12-12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C12.955,4,4,12.955,4,24
                                 c0,11.045,8.955,20,20,20c11.045,0,20-8.955,20-20C44,22.659,43.862,21.35,43.611,20.083z"></path>
                                <path fill="#FF3D00" d="M6.306,14.691l6.571,4.819C14.655,15.108,18.961,12,24,12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657
                                C34.046,6.053,29.268,4,24,4C16.318,4,9.656,8.337,6.306,14.691z"></path>
                                <path fill="#4CAF50" d="M24,44c5.166,0,9.86-1.977,13.409-5.192l-6.19-5.238C29.211,35.091,26.715,36,24,36
                                c-5.202,0-9.619-3.317-11.283-7.946l-6.522,5.025C9.505,39.556,16.227,44,24,44z"></path>
                                <path fill="#1976D2" d="M43.611,20.083H42V20H24v8h11.303c-0.792,2.237-2.231,4.166-4.087,5.571
                                c0.001-0.001,0.002-0.001,0.003-0.002l6.19,5.238C36.971,39.205,44,34,44,24C44,22.659,43.862,21.35,43.611,20.083z"></path>
                            </svg>
                                <span>Sign up with Google</span>
                            </div>  
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="components/footer.jsp" %>
    <body>
</html>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const individualFields = document.getElementById('individualFields');
        const businessFields = document.getElementById('businessFields');
        const colorModeCheckbox = document.getElementById('user_type');
        
        showFields();

        colorModeCheckbox.addEventListener('change', showFields);

        function showFields() {
            if (colorModeCheckbox.checked) {
                individualFields.style.display = 'none';
                businessFields.style.display = 'block';
            } else {
                individualFields.style.display = 'block';
                businessFields.style.display = 'none';
            }
        }
    });
</script>