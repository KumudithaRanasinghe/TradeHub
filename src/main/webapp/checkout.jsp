<%-- 
    Document   : checkout
    Created on : Apr 30, 2024, 12:51:31 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout page</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" href="css/checkout.css"/>
    </head>
    <body>
        <%@include file="components/nav.jsp" %>
        <div class="main-wrapper">
        <div class="container" id="myContainer">
        <div class="card">
            <div class="card-header">
                <form class="row g-4">
                    <div class="col-md-6">
                      <label for="inputName" class="form-label">First Name</label>
                      <input type="name" class="form-control" id="inputName">
                    </div>
                    <div class="col-md-6">
                      <label for="inputLname" class="form-label">Last Name</label>
                      <input type="Lname" class="form-control" id="inputLname">
                    </div>
                    <div class="col-12">
                        <label for="inputAddress" class="form-label">Address</label>
                        <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                      </div>
                      <div class="col-md-4">
                        <label for="inputApt" class="form-label">Apt. Number</label>
                        <input type="text" class="form-control" id="inputApt">
                      </div>
                      <div class="col-md-4">
                        <label for="inputState" class="form-label">State</label>
                        <input type="text" class="form-control" id="inputState">
                      </div>
                      <div class="col-md-4">
                        <label for="inputZip" class="form-label">Zip</label>
                        <input type="text" class="form-control" id="inputZip">
                      </div>
                      
                      <div class="d-grid gap-5 d-md-block">
                        <button class="btn btn-primary custom-btn" type="button">Cancel</button>
                        <button class="btn btn-primary custom-btn2" type="button">Save this address</button>
                      </div>
                    </div>   
            </div> 
            </div>
           <div class="container" id="shpContainer">
             <h4 class="nameh4">Shopping Card</h4>
             <h5 class="name5">Payment Methods</h5>
              
             <div class="form-check1">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                    <i class="fa-brands fa-google"></i>Google pay
                </label>
              </div>
              <div class="form-check2">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                <label class="form-check-label" for="flexRadioDefault2">
                    <i class="fa fa-credit-card" aria-hidden="true"></i> Credit Card
                </label>
              </div>

              <div class="mb-3">
                <label for="CardName" class="form-label1">Name on card</label>
                <input type="text" class="form-control" id="CardName" placeholder="Enter name on card">
              </div>
              <div class="mb-3">
                <label for="CardNumber" class="form-label">Card number</label>
                <input type="text" class="form-control" id="CardNumber" placeholder="Enter card number">
              </div>

              
              <div class="col-md-7">
                <label for="inputDate" class="form-label-1">Expiration date</label>
                <input type="text" class="form-control" id="inputDate" placeholder="Enter expiration date">
              </div>
              <div class="col-md-4">
                <label for="inputCvv" class="form-label-2">CVV</label>
                <input type="text" class="form-control" id="inputCvv" placeholder="Enter CVV">
              </div>
              <div class="d-grid gap-2">
                <button class="btn btn-primary custom-btn-my" type="button">Checkout</button>
                </div>
           </div>
           
              </div>
    </div>     
    </div>
        
      <%@include file="components/footer.jsp" %>  
    </body>
</html>
