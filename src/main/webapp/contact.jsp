<%-- 
    Document   : contact new
    Created on : May 1, 2024, 12:43:41 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" type="text/css" href="css/contact.css">
    </head>
    <body>
        <%@include file="components/nav.jsp" %>
        <div class="main-wrapper">
            <div class="container px-5">
            <div class="col-md-8 form-container">
                
                <div class="contactInfo">
                    <div class="box">
                        <div class="icon"><i class="fa-solid fa-phone" aria-hidden="true"></i></div>
                            <div class="text">
                                <h4>Call To Us</h4>
                            </div>
                    </div>
                    <div class="content">
                        <p>We are available 24/7, 7 days a week</p>
                        <p>Phone:+94767771005</p>
                    </div>
                    <div class="box">
                        <div class="icon"><i class="fa-solid fa-envelope" aria-hidden="true"></i></div>
                            <div class="text">
                                <h4>Write To Us</h4>
                            </div>
                    </div>
                    <div class="content">
                        <p>Fill out our form and we will contact you within 24 hours</p>
                        <p>Emails: customer@tradehub.com</p>
                        <p>Emails: support@tradehub.com</p>
                    </div>
                </div>
               
                
                <div class="form-box">
                    <form action="#">
                        <div class="row g-3">
                            <div class="col-md-4 position-relative">
                                <input type="text" id="first-name" class="form-control" placeholder="Your Name *" required>
                            </div>
                            <div class="col-md-4  position-relative">
                                <input type="text" id="first-name" class="form-control" placeholder="Your phone *" required>
                            </div>
                            <div class="col-md-4  position-relative">
                                <input type="text" id="email" class="form-control" placeholder="Your email *" required>
                            </div>
                            <div class="mb-4  position-relative">
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="6" placeholder="Your Message"></textarea>
                            </div>
                            <div class="button-container">
                                <button type="submit" class="btn-primary">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
          
        </div>
        </div>
        <%@include file="components/footer.jsp" %>
    </body>
</html>

  
