<%-- 
    Document   : faq.jsp
    Created on : Apr 26, 2024, 11:38:44 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faq page</title>
         <%@include file="components/common.jsp" %>
         <link rel="stylesheet" type="text/css" href="css/faq.css">

    </head>
    <body>
        <%@include file="components/nav.jsp" %>
        <div class="main-wrapper">
        <div class="accordion">
        <div class="image-box">
            <img src="images/Faq/faq pic.svg">
        </div>

    <div class="wrapper">
        <h1>Frequently Asked Questions</h1>

        <div class="faq">
            <button class="accordion">
                Can I send a message to a buyer?
                <i class="fa-solid fa-plus"></i>
            </button>
            <div class="panel">
                <p>No, you couldn't. It's not possible.</p>
            </div>
        </div>

        <div class="faq">
            <button class="accordion">
                How do I get my product?
                <i class="fa-solid fa-plus"></i>
            </button>
            <div class="panel">
                <p>Scroll to the bottom of the MyStore.com homepage and click on submit application.</p>
            </div>
        </div>

        <div class="faq">
            <button class="accordion">
                How can I contact Customer Service?
                <i class="fa-solid fa-plus"></i>
            </button>
            <div class="panel">
                <p>You can ask us any questions you may have about MyStore.com by contacting us via the Support button located in the bottom right corner of every MyStore page. The response will be sent to the email address you registered with. Click Help & Contact at the top of most MyStore pages to get in touch with MyStore Customer Service if you have any issues regarding the MyStore website or your MyStore account.</p>
            </div>
        </div>

        <div class="faq">
            <button class="accordion">
                Can I use MyStore, if I have an MyStore subscription?
                <i class="fa-solid fa-plus"></i>
            </button>
            <div class="panel">
                <p>You certainly can. MyStore is available for use, and recipients of any membership can use it for free.</p>
            </div>
        </div>

        <div class="faq">
            <button class="accordion">
                Who can get registered on Mystore?
                <i class="fa-solid fa-plus"></i>
            </button>
            <div class="panel">
                <p>Using the Mystore Seller App, any business or seller who is a registered entity with a working GST and PAN number can register on the ONDC Network.</p>
            </div>
        </div>

        <div class="faq">
            <button class="accordion">
                How do I handle shipping and returns?
                <i class="fa-solid fa-plus"></i>
            </button>
            <div class="panel">
                <p>You can decide on the shipping option that best suits you and charge your customers for shipping. MyStore provides sellers with the ability to offer free shipping as well. Although you are free to establish your own return policies, MyStore offers customers a Money Back Guarantee programme.</p>
            </div>
        </div>

        <div class="faq">
            <button class="accordion">
                How do I track my purchases?
                <i class="fa-solid fa-plus"></i>
            </button>
            <div class="panel">
                <p>MyStore takes a number of payment options, such as Apple Pay, PayPal, and credit/debit cards. In their listings, sellers have the option to include the payment options they accept.</p>
            </div>
        </div>
    </div>
  </div>
</div>
    <%@include file="components/footer.jsp" %>
    </body>
</html>
<script>
        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++){
            acc[i].addEventListener("click", function () {
                this.classList.toggle("active");
                this.parentElement.classList.toggle("active");

                var panel = this.nextElementSibling;
                if(panel.style.display === "block"){
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                }
            });
        }
 </script>
