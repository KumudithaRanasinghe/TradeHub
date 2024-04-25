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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/acc.css">
</head>
<body>
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
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
