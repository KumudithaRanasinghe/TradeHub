<%-- 
    Document   : contact new
    Created on : May 1, 2024, 12:43:41 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <main class="container">
    <section>
      <div class="row">
        
        <div class="col-md-6">
          <h2>Contact Information</h2>
          <p><b>Call Us</b></p>
          <p>We are available 24/7, 7 days a week</p>
          <p>Phone: +94767771005</p>
          <p><b>Write To Us</b></p>
          <p>Fill out our form and we will contact you within 24 hours.</p>
          <p>Emails: customer@mystore.com</p>
          <p>Emails: support@mystore.com</p>
        </div>
        
        <div class="col-md-6">

          <h2>Contact Form</h2>
          <form>
        <div class="row">

           <div class="form-group col-md-4">
              <input type="text" class="form-control" id="name" name="name" placeholder="Your Name">
            </div>
            <div class="form-group col-md-4">
              <input type="email" class="form-control" id="email" name="email" placeholder="Your Email">
            </div>
            <div class="form-group col-md-4">
              <input type="number" class="form-control" id="phone" name="phone" placeholder="Your Phone">
            </div>
        </div>
           
            <div class="form-group">
              <textarea class="form-control" id="message" name="message" rows="3" placeholder="Your Message"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Send Message</button>
          </form>
        </div>
        
      </div>
    </section>
  </main>

  <!-- Bootstrap JS -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>




  
