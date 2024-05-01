<%@page import="com.ecommerce.tradehub.dao.CartDao"%>
<%@page import="com.ecommerce.tradehub.entities.User"%>
<%
    User user1 = (User) session.getAttribute("user_type");

    int count = 0;
%>

<%
    CartDao cart_dao = new CartDao();

    if (user1 != null) {
        count = cart_dao.getItemCountById(user1.getUserId());
    }

    

%>



<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="container">
            <div class="collapse navbar-collapse mx-lg-5" id="navbarTogglerDemo01">
                <img src="images/trade hub.png" width=170>

                <ul class="navbar-nav nav-dark justify-content-center flex-grow-1 pe-3">
                    <li class="nav-item">
                        <a class="nav-link active mx-lg-3" aria-current="page" href="index.jsp" style="color:#008774;">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  mx-lg-3" aria-current="page" href="category.jsp" style="color:#008774;">Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link mx-lg-3" aria-current="page" href="contact.jsp" style="color:#008774;">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link mx-lg-3" aria-current="page" href="about.jsp" style="color:#008774;">About</a>

                    </li>
                </ul> 

                <div class="nav-item" >

                    <a href="cart.jsp" style="color:#008774;"><i class="fa-solid fa-cart-shopping mx-lg-5">
                            <%if (user1 != null) {
                            %>( <%=count%> )<%;
                                }%> </i></a>

                    <%if (user1 == null) {

                    %>


                    <a href="register.jsp">
                        <button type="submit" class="btn btn-secondary mr-2">Sign Up</button>
                    </a>
                    <a  class="mx-1" href="login.jsp">
                        <button type="submit" class=" btn-primary">Log In</button>
                    </a>
                    <% } else {
                    %>

                    <a href="account.jsp">
                        <%= user1.getUserName()%>
                    </a>
                    <a  class="mx-1" href="LogoutServlet">
                        <button type="submit" class=" btn-primary">Log out</button>
                    </a>
                    <%}
                    %> 
                </div>

            </div>

        </div>
    </div>
</nav>
