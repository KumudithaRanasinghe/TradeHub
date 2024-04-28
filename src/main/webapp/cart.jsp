<%-- 
    Document   : cart
    Created on : Apr 28, 2024, 11:14:45 PM
    Author     : Nipun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" href="css/cart.css"/>
    </head>
    <body>
        <%@include file="components/nav.jsp" %>
        
            <div class="main-wrapper">
            <div class="container cart-box"> 
                <div class="container-fluid">

            <table class="table1" border="0" width="1200px" height="250px">
            
            <tr class="tr0">
             <td class="pr">Product</td>
             <td>Price</td>
             <td>Quantity</td>
             <td>Subtotal</td>
            </tr>

            <tr class="tr1 shadow-sm">
             <td class="td"><img src="image/tv.png" alt="gameboy" width="60px" height="60px">LCD monitor</td>
             <td>$650</td>
             <td><div class="box rounded shadow-sm">
                <p class="p">20</p>
                <span class="chevron"></span>
                <span class="chevron1"></span>
                </div>

             </td>
             <td>$650</td>

            </tr>

            <tr class="tr2 shadow-sm">
                <td><img src="image/gameboy.png" alt="tv" width="60px" height="60px">H1 Gamepad</td>
                <td>$550</td>
                <td><div class="box rounded shadow-sm">
                    <p class="p">20</p>
                    <span class="chevron"></span>
                    <span class="chevron1"></span>
                </div>
                </td>
                <td>$1100</td>
            </tr>
            </table>

            <button class="b1 rounded"><b>Return To Shop</b></button>
            <button class="b2 rounded">Update Cart</button>
            <button class="b3 rounded">Coupon Code</button>
            <button class="b4 rounded">Apply coupon</button>



            <div class="box1 rounded ">
                <h4>Cart Total</h4>
               <div class="box2"><pre>Subtotal:                                    175$</pre></div>
               <div class="box2"><pre>Shipping:                                    Free</pre></div>
               <div class="box2"><pre>total:                                       1750$</pre></div>
               <button class="b5 rounded">Procees To Checkout</button>
            </div>
            <br><br>
            </div>
            </div> 
     </div>
        
        <%@include file="components/footer.jsp" %>
    </body>
</html>
