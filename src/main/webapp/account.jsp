<%-- 
    Document   : account
    Created on : Apr 25, 2024, 4:32:14 PM
    Author     : halvitikankanamgegihan
--%>

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
                    <dd><a href="#">My Payment Options</a></dd>
                <dt>My Orders</dt>
                    <dd><a href="#">My Returns</a></dd>
                    <dd><a href="#">My Cancellation</a></dd>
                <dt>My Wishlist</dt>
            </dl>
        </div>
        <div class="col-md-6 form-container">
            <div class="form-box">
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
    <%@include file="components/footer.jsp" %>
</body>
</html>
