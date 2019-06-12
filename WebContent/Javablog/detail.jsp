<%@page import="com.javablog.model.domain.Board"%>
<%@page import="com.javablog.model.domain.Admin"%>
<%@page contentType="text/html; charset=utf-8" %>

<%
   Board board=(Board)request.getAttribute("board");
%>


<!DOCTYPE HTML>
    <head>
        <title>Javablog - Minimal Java Blog</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Template by Colorlib" />
        <meta name="keywords" content="HTML, CSS, JavaScript, PHP" />
        <meta name="author" content="Colorlib" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link rel="shortcut icon" href="/Javablog/images/favicon.png" />
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CLibre+Baskerville:400,400italic,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css"  href='/Javablog/css/clear.css' />
        <link rel="stylesheet" type="text/css"  href='/Javablog/css/common.css' />
        <link rel="stylesheet" type="text/css"  href='/Javablog/css/font-awesome.min.css' />
        <link rel="stylesheet" type="text/css"  href='/Javablog/css/carouFredSel.css' />
        <link rel="stylesheet" type="text/css"  href='/Javablog/css/sm-clean.css' />
        <link rel="stylesheet" type="text/css"  href='/Javablog/style.css' />
        <!--[if lt IE 9]>
                <script src="js/html5.js"></script>
        <![endif]-->

    </head>


    <body class="single-post">

        <!-- Preloader Gif -->
        <table class="doc-loader">
            <tbody>
                <tr>
                    <td>
                        <img src="/Javablog/images/ajax-document-loader.gif" alt="Loading...">
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Left Sidebar -->
      <%@include file="/Javablog/include/leftsidebar.jsp" %>
      <!-- Left Sidebar end -->

        <!-- Single Content -->
        <div id="content" class="site-content center-relative">
            <div class="single-post-wrapper content-1070 center-relative">

                <article class="center-relative">
                    <h1 class="entry-title">
                        <%=board.getTitle() %>
                    </h1>
                    <div class="post-info content-660 center-relative">
                        <div class="cat-links">
                            <ul>
                                <li><a href="#">작성일</a></li>
                            </ul>
                        </div>
                        <div class="entry-date published"><%=board.getRegdate() %></div>
                        <div class="clear"></div>
                    </div>

                    <div class="entry-content">
                        <div class="content-wrap content-660 center-relative">
                            <p><%=board.getContent()%></p>
                            <br>
                            <div class="clear"></div>
                        </div>
                        <div class="post-full-width">
                            <script>
                                var slider1_speed = "500";
                                var slider1_auto = "true";
                                var slider1_pagination = "true";
                                var slider1_hover = "true";
                            </script>
                            <div class="image-slider-wrapper">
                                <div class="caroufredsel_wrapper">
                                    <ul id="slider1" class="image-slider slides center-text">
                                        <li><img src="/Javablog/demo-images/01_blogpost_galery.jpg" alt=""></li>
                                        <li><img src="/Javablog/demo-images/02_blogpost_galery.jpg" alt=""></li>
                                        <li><img src="/Javablog/demo-images/03_blogpost_galery.jpg" alt=""></li>
                                    </ul>
                                </div>
                                <div class="slider1_pagination carousel_pagination left"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                      
                    </div>
                    <div class="clear"></div>
                </article>
            </div>
        </div>



        <!--Load JavaScript-->
        <script type="text/javascript" src="/Javablog/js/jquery.js"></script>
        <script type='text/javascript' src='/Javablog/js/imagesloaded.pkgd.js'></script>
        <script type='text/javascript' src='/Javablog/js/jquery.nicescroll.min.js'></script>
        <script type='text/javascript' src='/Javablog/js/jquery.smartmenus.min.js'></script>
        <script type='text/javascript' src='/Javablog/js/jquery.carouFredSel-6.0.0-packed.js'></script>
        <script type='text/javascript' src='/Javablog/js/jquery.mousewheel.min.js'></script>
        <script type='text/javascript' src='/Javablog/js/jquery.touchSwipe.min.js'></script>
        <script type='text/javascript' src='/Javablog/js/jquery.easing.1.3.js'></script>
        <script type='text/javascript' src='/Javablog/js/main.js'></script>
    </body>
</html>