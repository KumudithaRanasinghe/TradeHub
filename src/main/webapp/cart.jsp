<%-- 
    Document   : cart
    Created on : Apr 28, 2024, 11:14:45 PM
    Author     : Nipun
--%>

<%@page import="com.ecommerce.tradehub.entities.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.tradehub.dao.CartDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    if (session.getAttribute("user_type") == null) {

        response.sendRedirect("login.jsp");
    } else {


%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" href="css/cart.css"/>

        <%            User logged_user = (User) session.getAttribute("user_type");

            int length = 0;
            int total = 0;
            int subtotal = 0;
            int itemPrice = 0;
            CartDao cartDao = new CartDao();

            String product_id = request.getParameter("id");
            String isThereCat = request.getParameter("category");
            if (product_id != null) {

                if (cartDao.isItemExists(Integer.parseInt(product_id), logged_user.getUserId()) > 0) {

                    List<Cart> outcomes = cartDao.getItemIdAndQt(Integer.parseInt(product_id), logged_user.getUserId());
                    for (Cart outcome : outcomes) {
                        cartDao.updateCart(outcome.getCartId(), outcome.getQuantity() + 1);
                    }
                   
        %><script type="text/javascript">
                        window.location.href = "products.jsp?category=<%=isThereCat%>";
        </script><%
        

        } else {

            cartDao.addItem(Integer.parseInt(product_id), logged_user.getUserId(), 1);
            
        %><script type="text/javascript">
                        window.location.href = "products.jsp?category=<%=isThereCat%>";
        </script><%
        
                }
            }

            List<Cart> items = cartDao.getItemsById(logged_user.getUserId());

        %>
        <script>

            document.getElementById("reloadButton").addEventListener("click", function () {

                window.location.reload();
            });
            function changeText(id, price) {

                var tags = document.getElementsByName('identifier').length;
                console.log(tags);

                var qt = document.getElementById("textInput" + id).value;
                var total = 0;
                document.getElementById("subPrice" + id).textContent = "Rs." + price * parseInt(qt) + ".00";

                for (var i = 1; i <= tags; i++) {

                    total += extractNumber((document.getElementById("subPrice" + i).textContent));
                }

                document.getElementById("subTot").textContent = "Rs." + total + ".00";
                document.getElementById("tot").textContent = "Rs." + total + ".00";
            }

            function extractNumber(str) {

                var regex = /\d+(?:\.\d+)?/;
                var match = regex.exec(str);
                return parseFloat(match[0]);
            }

        </script>

    </head>
    <body>
        <script src="js/cart.js"></script>
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

                        <%                            int dynamic = 0;

                            for (Cart item : items) {
                                dynamic++;
                                length++;
                                itemPrice += item.getProduct().getpPrice() * item.getQuantity();
                        %>

                        <tr class="tr1 shadow-sm" name="identifier">
                            <td class="td"><img src="images/products/<%= item.getProduct().getpPhoto()%>" alt="gameboy" width="90px" ><%= item.getProduct().getpName()%></td>
                            <td id = "itemPrice<%=dynamic%>" value="<%= item.getProduct().getpPrice()%>">Rs.<%= item.getProduct().getpPrice()%>.00</td>
                            <td><div class="box rounded shadow-sm">
                                    <input class="quantity" id="textInput<%=dynamic%>" value="<%= item.getQuantity()%>" type="number" onchange="changeText(<%=dynamic%>,<%= item.getProduct().getpPrice()%>)" min="1">

                                    <span class="chevron"></span>
                                    <span class="chevron1"></span>
                                </div>

                            </td>
                            <td id="subPrice<%=dynamic%>" value="<%= item.getProduct().getpPrice() * item.getQuantity()%>">Rs.<%= item.getProduct().getpPrice() * item.getQuantity()%>.00</td>
                            <td><button class="btn-delete" id="<%=item.getCartId()%>" onclick="sendPostRequest(<%=item.getCartId()%>)">Remove</button></td>


                        </tr>

                        <% }
                            total = itemPrice;
                            subtotal = total;
                        %>

                    </table>

                    <a href="index.jsp"><button class="b1 rounded"><b>Return To Shop</b></button></a>
                    <button class="b2 rounded">Update Cart</button>
                    <button class="b3 rounded">Coupon Code</button>
                    <button class="b4 rounded">Apply coupon</button>

                    <div class="box1 rounded ">
                        <h4>Cart Total</h4>
                        <h5>
                            <div class="box2" id="subTot"><pre>Subtotal:                Rs.<%=subtotal%>.00</pre></div>
                            <div class="box2"><pre>Shipping:                Free</pre></div>
                            <div class="box2" id="tot"><pre>total:                   Rs.<%= total%>.00</pre></div>
                        </h5>
                        <button class="b5 rounded">Procees To Checkout</button>

                    </div>
                    <br><br>
                </div>
            </div> 
        </div>

        <%@include file="components/footer.jsp" %>
    </body>
</html>

<%
    }
%>
