<%-- 
    Document   : about
    Created on : Apr 26, 2024, 3:49:23 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>about Page</title>
        <%@include file="components/common.jsp" %>
        <link rel="stylesheet" href="css/about.css"/>
    </head>
    <body>
        
<!--       ---------------------about---------------------------------->
<%@include file="components/nav.jsp" %>
<div class="main-wrapper">
<div id="about">
    <div class="container">
        <div class="row">           
            <div class="col-lg-6 about-col-2">
                <h1 class="sub-title">Our Story</h1>
                <p>Welcome to our e-commerce platform, where convenience meets excellence! At TradeHub, we pride ourselves on providing unparalleled services tailored to your needs.lightning-fast and free delivery, ensuring your purchases arrive promptly at your doorstep.Worried about making the wrong choice? Relax, because with our hassle-free money-back guarantee, your satisfaction is our priority. Whether you're browsing for essential medicines, delightful toys, glamorous beauty products, high-performance sport goods, cutting-edge electronics, or stylish apparel for men and women, we've got you covered. Plus, as an extra touch, enjoy exclusive deals and personalized recommendations, making your shopping experience with us truly exceptional. Discover the convenience of shopping at TradeHub today!</p>
                <p>At TradeHub, we believe in going above and beyond to ensure your satisfaction. That's why we're constantly innovating to provide you with the best possible experience. From seamless navigation on our user-friendly interface to secure payment options, every aspect of your journey with us is carefully crafted with your convenience in mind. Join the thousands of satisfied customers who trust us for their shopping needs. Experience the difference at TradeHub today!</p>  
            </div>
            <div class="col-lg-6 about-col-1">
                <img src="images/work-2.png" class="img-fluid" alt="E-commerce">
            </div>
        </div>
    </div>
</div>
<!--------------------services------------------------------------->
<div id="services">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-3">
                <div class="service-item text-center">
                    <i class="fa-solid fa-store fa-3x"></i>
                    <h2>10.5k</h2>
                    <p>Sellers active on our site</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="service-item text-center">
                    <i class="fa-sharp fa-solid fa-dollar-sign fa-3x"></i>
                    <h2>33k</h2>
                    <p>Monthly Product Sale</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="service-item text-center">
                    <i class="fa-solid fa-cart-shopping fa-3x"></i>
                    <h2>45.5k</h2>
                    <p>Customers active on our site</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="service-item text-center">
                    <i class="fa-solid fa-sack-dollar fa-3x"></i>
                    <h2>25k</h2>
                    <p>Annual gross sale on our site</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-------------------------------------Developers------------------------------------------------------>

<div id="Developers" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="row">
                <!-- Developers content for first carousel item -->

                 <!---->
                 <div class="card-dev">
                    <div class="column-dev">
                        <div class="center">
                            <img src="https://media.licdn.com/dms/image/D5603AQHF8YhuaywLcg/profile-displayphoto-shrink_800_800/0/1701538334391?e=1719446400&v=beta&t=wBnxqhpFyNDlyWGMA-eoBERgtUiBDps_qukDur8fFhI" width="350px" height="auto" class="curve">
                        </div>  
                        <div>
                            <h3><p><b>Dushan Madushanka</b></p></h3>
                            <p><a href="https://www.linkedin.com/in/dushan-beligala-360252196?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><i class="fa-brands fa-linkedin"></i></a>
                               <a href="https://web.facebook.com/dushanMOnline"><i class="fa-brands fa-square-facebook"></i></a>
                               <a href="https://github.com/dushan6693"><i class="fa-brands fa-github"></i></a></p>                             
                        </div>
                    </div>
                </div>
                <!---->
                <!---->
                <div class="card-dev">
                    <div class="column-dev">
                        <div class="center">
                            <img src="https://media.licdn.com/dms/image/D5603AQEq0TBemNMj9Q/profile-displayphoto-shrink_800_800/0/1694000301701?e=1719446400&v=beta&t=BejaAY8plCuE6wpDaZrF0P4pSRQYUBqGXxMFkvnxhro" width="350px" height="auto" class="curve">
                        </div>  
                        <div>
                            <h3><p><b>Ravindu Ranasinghe</b></p></h3>
                            <p><a href="https://www.linkedin.com/in/kumuditha-ranasinghe-078a23254?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><i class="fa-brands fa-linkedin"></i></a>
                               <a href="https://www.facebook.com/share/W39jnPtrkeKk5zJc/?mibextid=qi2Omg"><i class="fa-brands fa-square-facebook"></i></a>
                               <a href="https://github.com/KumudithaRanasinghe"><i class="fa-brands fa-github"></i></a></p>                           
                        </div>
                    </div>
                </div>
                <!---->
                <!---->
                <div class="card-dev">
                    <div class="column-dev">
                        <div class="center">
                            <img src="https://scontent.fcmb1-2.fna.fbcdn.net/v/t39.30808-6/396141705_342734548415897_5715569810515635735_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeETGzquw7s7eACf3U3qrij8xGxxTa1SB07EbHFNrVIHTunADF468WBfmy7bWCl5wEf9MQbxqrS-RaMC3Uiu7wlb&_nc_ohc=_m6h4KCIg58Ab6Cb24s&_nc_ht=scontent.fcmb1-2.fna&oh=00_AfDIEnRiDl71v-OaBTxgSNhzzXfb3Ux_3UCtj-jve98JZw&oe=662D6EAF" width="350px" height="auto" class="curve">
                        </div>  
                        <div>
                            <h3><p><b>Radhishan Senanayaka</b></p></h3>
                            <p><a href="https://www.linkedin.com/in/radhishan-senanayaka-18711a262?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app "><i class="fa-brands fa-linkedin"></i></a>
                               <a href="https://www.facebook.com/profile.php?id=100080380620199&mibextid=LQQJ4d"><i class="fa-brands fa-square-facebook"></i></a>
                               <a href="https://github.com/Radhi2000"><i class="fa-brands fa-github"></i></a></p>                       
                        </div>
                    </div>
                </div>
                <!---->

            </div>
        </div>
        <div class="carousel-item">
            <div class="row">
                <!-- Developers content for second carousel item -->

                <div class="card-dev">
                    <div class="column-dev">
                        <div class="center">
                            <img src="https://scontent.fcmb1-2.fna.fbcdn.net/v/t39.30808-6/407557105_888109166026864_3342715434302211311_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE7OdXeFaHJ6ow3qvpjnvR8QlJagu2NOQtCUlqC7Y05C9AYXJUPcL7Zp0Y8lB8xuR-KLn8jwKYtsOs0PAGRS3vy&_nc_ohc=c7OKriOEzB0Ab4fJUg-&_nc_ht=scontent.fcmb1-2.fna&oh=00_AfB8Lwrnc7si9OAp6pBe007D2WcO4xeZyf6qaCfsjVKzsg&oe=662D77BB" width="350px" height="auto" class="curve">
                        </div>  
                        <div>
                            <h3><p><b>Rasil laksika</b></p></h3>
                            <p><a href="https://www.linkedin.com/in/rasil-laksika-kottagoda-749516255?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app "><i class="fa-brands fa-linkedin"></i></a>
                               <a href="https://www.facebook.com/share/Z7VcGtwtXHhYAk1s/?mibextid=qi2Omg"><i class="fa-brands fa-square-facebook"></i></a>
                               <a href="https://github.com/KDRLaksika"><i class="fa-brands fa-github"></i></a></p>                           
                        </div>
                    </div>
                </div>
                <!---->
                <!---->
                <div class="card-dev">
                    <div class="column-dev">
                        <div class="center">
                            <img src="https://avatars.githubusercontent.com/u/120259186?v=4" width="350px" height="auto" class="curve">
                        </div>  
                        <div>
                            <h3><p><b>Nipun Jayawardhana</b></p></h3>
                            <p><a href="https://www.linkedin.com/in/nipun-jayawardhana-4b8997247?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><i class="fa-brands fa-linkedin"></i></a>
                               <a href="https://www.facebook.com/share/WHz5k6vCZXahicao/?mibextid=qi2Omg"><i class="fa-brands fa-square-facebook"></i></a>
                               <a href="https://github.com/nipun-jayawardhana"><i class="fa-brands fa-github"></i></a></p>                        
                        </div>
                    </div>
                </div>
                <!---->
                <!---->
                <div class="card-dev">
                    <div class="column-dev">
                        <div class="center">
                            <img src="https://media.licdn.com/dms/image/D5603AQF4VjsB6bFleA/profile-displayphoto-shrink_800_800/0/1707364015367?e=1719446400&v=beta&t=RJJ_eZGwSeMS3ajHSDq6mUu8sHgPInWlWouXy5nsyv0" width="350px" height="auto" class="curve">
                        </div>  
                        <div>
                            <h3><p><b>Javindi Nethnika</b></p></h3>
                            <p><a href="https://www.linkedin.com/in/javindi-nethnika-38a940255?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app "><i class="fa-brands fa-linkedin"></i></a>
                               <a href="https://www.facebook.com/share/VLvdpr7d45b3nVtC/?mibextid=qi2Omg"><i class="fa-brands fa-square-facebook"></i></a>
                               <a href="https://github.com/javinethu2000"><i class="fa-brands fa-github"></i></a></p>                       
                        </div>
                    </div>
                </div>
                <!---->
            </div>
        </div>

        <div class="carousel-item">
            <div class="row">
                <!-- Developers content for 3rd carousel item -->

                <div class="card-dev">
                    <div class="column-dev">
                        <div class="center">
                            <img src="https://media.licdn.com/dms/image/D5603AQH0VldzrMshyA/profile-displayphoto-shrink_800_800/0/1713855115386?e=1719446400&v=beta&t=vOWE5QZQym_Y16iNG_9biVJXzuyFjo_kt0fn_FOV1QI" width="350px" height="auto" class="curve">
                        </div>  
                        <div>
                            <h3><p><b>Maheshika Dodangoda</b></p></h3>
                            <p><a href="https://www.linkedin.com/in/maheshika-dodangoda-51a0932b4 "><i class="fa-brands fa-linkedin"></i></a>
                            <a href="https://www.facebook.com/maheshi.dodangoda?mibextid=ZbWKwL"><i class="fa-brands fa-square-facebook"></i></a>
                            <a href="https://github.com/Maheshika01"><i class="fa-brands fa-github"></i></a></p>                          
                        </div>
                    </div>
                </div>
                <!---->
                <!---->
                <div class="card-dev">
                    <div class="column-dev">
                        <div class="center">
                            <img src="https://media.licdn.com/dms/image/D4E03AQENCZ9fy-MEAw/profile-displayphoto-shrink_800_800/0/1713862200531?e=1719446400&v=beta&t=X8ccjOqX6vRyM2jzo-XpiLAZbI4omWSU1PzbwWQ8EPc" width="350px" height="auto" class="curve">
                        </div>  
                        <div>
                            <h3><p><b>Ranmini Marasinghe</b></p></h3>
                            <p><a href="https://www.linkedin.com/in/ranmini-marasinghe-970a40304?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app "><i class="fa-brands fa-linkedin"></i></a>
                               <a href="https://www.facebook.com/profile.php?id=100071052159072&mibextid=LQQJ4d"><i class="fa-brands fa-square-facebook"></i></a>
                               <a href="https://github.com/ranminimalitha"><i class="fa-brands fa-github"></i></a></p>                              
                        </div>
                    </div>
                </div>
                <!----> 
                <div class="card-dev">
                    <div class="column-dev">
                        <div class="center">
                            <img src="https://media.licdn.com/dms/image/D4D03AQF_FojbM5M9Sg/profile-displayphoto-shrink_800_800/0/1713867801371?e=1719446400&v=beta&t=KgnLjSV1WJfyKlrFRTH8-czC1ByhTbqQaXhuKxK7nKc" width="350px" height="auto" class="curve">
                        </div>  
                        <div>
                            <h3><p><b>Apeksha Herath</b></p></h3>
                            <p><a href="https://www.linkedin.com/in/apeksha-herath-779807305"><i class="fa-brands fa-linkedin"></i></a>
                               <a href="https://github.com/AUHerath"><i class="fa-brands fa-github"></i></a></p>                          
                        </div>
                    </div>
                </div>   
            </div>
        </div>

        <div class="carousel-item">
            <div class="row">
                <!-- Developers content for 4th carousel item -->
                <div class="card-dev" style="box-shadow: 0 0 0 0 white;">
                    <div class="column-dev">
                        
                        
                    </div>
                </div>
                <div class="card-dev">
                    <div class="column-dev">
                        <div class="center">
                            <img src="https://scontent.fcmb1-2.fna.fbcdn.net/v/t39.30808-6/346863101_764952048686121_2086471419811420895_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEcnOJyDgCoCeRrODH4mrNJvoTl4G4HlBa-hOXgbgeUFgU6xv5haQl-KSthvG-FYNRzFYZgPoEGSKS947OdiFu5&_nc_ohc=jMXWnQHjeZcAb5TGCtO&_nc_oc=AdjD3m2YcZBoF6VYxVXrs8aF_FKVY7QvHkG97SRdlgQE8bkdkCQyKdCSIMx33_wiHPuiUT5gEZnGpz3MbaL5pm5O&_nc_ht=scontent.fcmb1-2.fna&oh=00_AfDcvshJHegOxXcfs2j1JHtd2rwbV9jm37F7s3y7DLkYBw&oe=662D86D7" width="350px" height="auto" class="curve">
                        </div>  
                        <div>
                            <h3><p><b>Gihan Kalhara</b></p></h3>
                            <p><a href="https://www.linkedin.com/in/rasil-laksika-kottagoda-749516255?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app "><i class="fa-brands fa-linkedin"></i></a>
                            <a href="https://www.facebook.com/share/UcWr349wVLQrkK5h/?mibextid=qi2Omg"><i class="fa-brands fa-square-facebook"></i></a>
                            <a href="https://github.com/Kalharakgp"><i class="fa-brands fa-github"></i></a></p>                          
                        </div>
                    </div>
                </div>
                <div class="card-dev" style="box-shadow: 0 0 0 0 white;">
                    <div class="column-dev">
                          
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Repeat the above structure for each carousel item -->
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#Developers" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#Developers" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>

    <div class="carousel-indicators">
        <!-- Indicators will be generated dynamically based on the number of items in carousel-inner -->
    </div>
</div>


<!--------------------------------------icon------------------------------------------------->

<div id="icons">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="icon-item text-center">
                    <i class="fa-solid fa-truck fa-3x"></i>
                    <h2>FREE AND FAST DELIVERY</h2>
                    <p>Free delivery for all orders over $140</p>            
                </div>
            </div>
            <div class="col-md-4">
                <div class="icon-item text-center">
                    <i class="fa-solid fa-headphones fa-3x"></i>
                    <h2>24/7 CUSTOMER SERVICE</h2>
                    <p>Friendly 24/7 customer support</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="icon-item text-center">
                    <i class="fa-solid fa-credit-card fa-3x"></i>
                    <h2>MONEY BACK GUARANTEE</h2>
                    <p>We return money within 30 days</p>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<!-- Bootstrap JavaScript CDN -->


        <%@include file="components/footer.jsp" %>
     
    </body>
</html>
<script>
    var carouselIndicators = document.querySelector('.carousel-indicators');
    var carouselInner = document.querySelector('.carousel-inner');

    // Generate indicators for each carousel item
    for (var i = 0; i < carouselInner.children.length; i++) {
        var indicator = document.createElement('button');
        indicator.type = 'button';
        indicator.setAttribute('data-bs-target', '#Developers');
        indicator.setAttribute('data-bs-slide-to', i.toString());
        if (i === 0) {
            indicator.classList.add('active');
        }
        carouselIndicators.appendChild(indicator);
    }
</script>
