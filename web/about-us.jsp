﻿<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>关于我们</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
</head>
<body>
<!-- main wrapper -->
<div class="wrapper">
    <!-- header -->
    <header class="header">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12">
                        <div class="header-location"><i class="fa fa-home"></i> <a href="#">酒店</a></div>
                        <div class="header-email"><i class="fa fa-envelope-o"></i> <a href="mailto:support@email.com">support@email.com</a>
                        </div>
                        <div class="header-phone"><i class="fa fa-phone"></i> <a href="#">12345678</a></div>
                    </div>
                    <div class="col-lg-3 col-md-8 col-sm-8 col-xs-12 pull-right">
                        <div class="header-social pull-right">
                            <% if (session.getAttribute("username") == null) {%>
                            <a href="register.jsp">注册</a>
                            <a href="login.jsp?curUrl=${pageContext.request.requestURI}">登陆</a>
                            <% } else {%>
                            欢迎 ${sessionScope.username}
                            <a href="logout?curUrl=${pageContext.request.requestURI}">注销</a>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <nav class="navbar navbar-universal navbar-custom">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="logo"><a href="index.jsp" class="navbar-brand page-scroll"><img
                                    src="images/logo/logo.png" alt="logo"></a></div>
                        </div>
                        <div class="col-lg-9">
                            <div class="navbar-header">
                                <button type="button" data-toggle="collapse" data-target=".navbar-main-collapse"
                                        class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span
                                        class="icon-bar"></span><span class="icon-bar"></span><span
                                        class="icon-bar"></span></button>
                            </div>
                            <div class="collapse navbar-collapse navbar-main-collapse">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="index.jsp">主页</a></li>
                                    <li><a href="about-us.jsp">关于我们</a></li>
                                    <li><a href="best-rooms.jsp">房间介绍</a></li>
                                    <li><a href="book-rooms-detail.jsp">房间预定</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- /header -->
    <!-- breadcrumbs -->
    <section class="breadcrumbs" style="background-image: url(images/breadcrumbs/about.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="h1">关于我们</h1>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="#">主页</a><i class="fa fa-angle-right"></i></li>
                        <li class="active">关于我们</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- /breadcrumbs -->
    <!-- about -->
    <section class="about">
        <div class="container">
            <h2 class="h2">About Our DeluxHotel</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="about_img"><img class="img-responsive" src="images/about/1.jpg" alt=""></div>
                </div>
                <div class="col-md-6">
                    <div class="about_info">
                        <div class="about_t">From 1990 to now...</div>
                        <p>May musical arrival beloved luckily adapted him. Shyness mention married son she his started
                            now. Rose if as past near were. To graceful he elegance oh moderate attended entrance
                            pleasure. Vulgar saw fat sudden edward way played either. Thoughts smallest at or peculiar
                            relation breeding produced an. <br><br>At depart spirit on stairs. She the either are wisdom
                            praise things she before. Be mother itself vanity favour do me of. Begin was power joy after
                            had walls miles. Wise busy past both park when an ye no. Nay likely her length sooner thrown
                            lively income.</p>
                        <a class="btn btn-default" href="register.jsp">Contact us</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /about -->
    <!-- Our mission -->
    <section class="mission">
        <div class="container">
            <h2 class="h2">Our Mission</h2>
            <div class="row">
                <div class="col-md-6">
                    <ul class="mission_ul">
                        <li>Aenean lacinia bibendum nulla sed consectetur. Fusce dapibus, tellus</li>
                        <li>If you have any questiong about our products or something else</li>
                        <li>iStock customers get 15% off 6 or more credits, use the code</li>
                        <li>Cras mattis consectetur purus sit amet fermentum. Etiam porta sem</li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <ul class="mission_ul">
                        <li>You can c reate various skin to use on color/parallax section easily.</li>
                        <li>This will help you to be able to create various color tone within your site.</li>
                        <li>Nullam id dolor id nibh ultricies vehicula ut id elit.</li>
                        <li>ivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- /Our mission -->
    <!-- lux banner parallax -->
    <section class="banner bg-parallax2">
        <div class="overlay"></div>
        <div class="banner-parallax">
            <div class="container">
                <div class="text-center">
                    <div class="banner-parallax_raiting">
                        <a href="#"><span class="star __selected"></span></a>
                        <a href="#"><span class="star __selected"></span></a>
                        <a href="#"><span class="star __selected"></span></a>
                        <a href="#"><span class="star"></span></a>
                        <a href="#"><span class="star"></span></a>
                    </div>
                    <h2 class="banner-parallax_t">Double Luxury Room</h2>
                    <div class="banner-parallax_price"><span>$560</span> / Night (Only This Week)</div>
                    <a href="#" class="btn btn-default">Book this room</a>
                </div>
            </div>
        </div>
    </section>
    <!-- /lux banner parallax -->
    <!-- testiomonials -->
    <!-- <section class="testimonials">
         <div class="container">
             <div class="title-main"><h2 class="h2">Some Testimonails<span
                     class="title-secondary">People Says About Us</span></h2></div>
             <div class="owl-carousel">
                 <div class="item">
                     <div class="testimonials-block_i">
                         <div class="testimonials-block_t">Great <span>Service</span></div>
                         <p>Old unsatiable our now but considered travelling impression. In excuse hardly summer in
                             basket misery. By rent an part need. At wrong of of water those linen. Needed oppose seemed
                             how all</p>
                     </div>
                     <div class="testimonials-block_user">
                         <div class="user_img"><img src="images/testimonials/mike.jpg" alt=""></div>
                         <div class="user_n">Garry Carlson</div>
                     </div>
                 </div>
                 <div class="item">
                     <div class="testimonials-block_i">
                         <div class="testimonials-block_t">Thank You Very Much <span>I Am Happy!</span></div>
                         <p>Certainty listening no no behaviour existence assurance situation is. Because add why not
                             esteems amiable him. Interested the unaffected mrs law friendship add principles.</p>
                     </div>
                     <div class="testimonials-block_user">
                         <div class="user_img"><img src="images/testimonials/mila.png" alt=""></div>
                         <div class="user_n">Mila Markovna</div>
                     </div>
                 </div>
             </div>
         </div>
     </section>-->
    <!-- /testiomonials -->
    <!-- footer -->
    <%--    <footer class="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="footer-top_logo"><a href="index.jsp"><img src="images/logo/logo.png"
                                                                                  alt="Footer logo"></a></div>
                            <div class="footer-top_txt">
                                <p>Continual delighted as elsewhere am convinced unfeeling. Introduced stimulated attachment
                                    no by projection. To lady whom my mile sold four need introduced.</p>
                            </div>
                            <div class="footer-top_address">
                                <div><i class="fa fa-phone"></i> Phone: <span>8 (043) 567 - 89 - 30</span></div>
                                <div><i class="fa fa-envelope-o"></i> E-mail: <span><a href="mailto:support@email.com">support@email.com</a></span>
                                </div>
                                <div><i class="fa fa-home"></i> Location: <span>455 Martinson, Los Angeles</span></div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="footer-top_rooms">
                                <ul>
                                    <li>
                                        <div class="rooms_img">
                                            <a href="blog-detail.html"><img src="images/footer/1.jpg" alt=""></a>
                                        </div>
                                        <div class="rooms_info">
                                            <div class="rooms_t"><a href="blog-detail.html">Grang Super Luxury</a></div>
                                            <div class="rooms_props">3 Bed / Wi-Fi / 2 - Bathroom<span>$119</span></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="rooms_img">
                                            <a href="blog-detail.html"><img src="images/footer/2.jpg" alt=""></a>
                                        </div>
                                        <div class="rooms_info">
                                            <div class="rooms_t"><a href="blog-detail.html">President Room</a></div>
                                            <div class="rooms_props">4 Bed / Wi-Fi / 3 - Bathroom<span>$329</span></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="rooms_img">
                                            <a href="blog-detail.html"><img src="images/footer/3.jpg" alt=""></a>
                                        </div>
                                        <div class="rooms_info">
                                            <div class="rooms_t"><a href="blog-detail.html">Spa Double Room</a></div>
                                            <div class="rooms_props">2 Bed / Wi-Fi / 2 - Bathroom<span>$749</span></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12 marg-sm-50 col-xs-12">
                            <div class="footer-top_contact_form">
                                <div class="contact_form_t">Contact Form</div>
                                <form action="mail.php" method="POST" class="row form-horizontal form-wizzard">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="name" class="form-control" placeholder="Name ...">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <input type="email" name="email" class="form-control" placeholder="Email ...">
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea rows="6" name="message" class="form-control"
                                                  placeholder="Message ..."></textarea>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-right">
                                        <input type="submit" value="Send message" class="btn btn-default">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="footer-bottom">
                 <div class="container">
                     <div class="row">
                         <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                             <div class="footer-bottom_copy">Copyright &copy; 2017.Company name All rights reserved.<a
                                     target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                             </div>
                         </div>
                         <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                             <div class="footer-bottom_links">
                                 <a class="active" href="index.jsp">Home</a>
                                 <a href="gallery.html">Gallery</a>
                                 <a href="blog.html">Blog</a>
                                 <a href="wizzard-step1.html">Reservation</a>
                                 <a href="#">Purchase</a>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>-->
        </footer>--%>
</div>
<!-- /footer -->
<!-- Scripts -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/tether.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/moment.min.js"></script>
<script type="text/javascript" src="js/jquery.smartmenus.js"></script>
<script type="text/javascript" src="js/jquery.parallax.min.js"></script>
<script type="text/javascript" src="js/jquery.shuffle.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<!-- /Scripts -->
</body>
</html>
