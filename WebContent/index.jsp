<%@page import="com.javablog.model.domain.Admin"%>
<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE HTML>
<html lang="en-US">
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
		
		<!-- 버튼 관련 양식 -->	
		 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		 
    </head>

<script>
function login(){
	location.href="/Javablog/login.jsp";
}
function logout(){
	location.href="/admin/logout";
}
</script>

    <body class="home blog">

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

        <!-- Left Sidebar 사이드바 안에 admin 보유중 -->
        <%@include file="/Javablog/include/leftsidebar.jsp" %>
        <!-- Left Sidebar end -->

        <!-- Home Content -->
        <div id="content" class="site-content">
            <div id="blog-wrapper">
                <div class="blog-holder center-relative">


                    <article id="post-1" class="blog-item-holder featured-post">
                        <div class="entry-content relative">
                            <div class="content-1170 center-relative">
                                <div class="cat-links">
                                    <ul>
                                        <li>
                                            <a href="#">Crafting</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="entry-date published">February 12, 2016</div>
                                <h2 class="entry-title">
                                    <a href="/Javablog/single.html">Whatever is begun in anger ends in shame</a>
                                </h2>
                                <div class="excerpt">
                                    Now when I had mastered the language of this water and had come to know every trifling feature that bordered the great river as familiarly as I knew the letters of the alphabet, I had made a valuable acquisition. I still keep in mind a certain wonderful sunset which I witnessed when and steamboating<a class="read-more" href="single.html"></a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </article>


                    <article id="post-2" class="blog-item-holder">
                        <div class="entry-content relative">
                            <div class="content-1170 center-relative">
                                <h2 class="entry-title">
                                    <a href="/Javablog/single.html">I like to reinvent myself</a>
                                </h2>
                                <div class="cat-links">
                                    <ul>
                                        <li>
                                            <a href="#">Science</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="entry-date published">February 12, 2016</div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </article>


                    <article id="post-3" class="blog-item-holder">
                        <div class="entry-content relative">
                            <div class="content-1170 center-relative">
                                <h2 class="entry-title">
                                    <a href="/Javablog/single.html">Everything is design</a>
                                </h2>
                                <div class="cat-links">
                                    <ul>
                                        <li>
                                            <a href="#">Art</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="entry-date published">February 12, 2016</div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </article>



                    <article id="post-4" class="blog-item-holder">
                        <div class="entry-content relative">
                            <div class="content-1170 center-relative">
                                <h2 class="entry-title">
                                    <a href="/Javablog/single.html">It’s all about experience</a>
                                </h2>
                                <div class="cat-links">
                                    <ul>
                                        <li>
                                            <a href="#">Life</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="entry-date published">February 12, 2016</div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </article>



                    <article id="post-5" class="blog-item-holder">
                        <div class="entry-content relative">
                            <div class="content-1170 center-relative">
                                <h2 class="entry-title">
                                    <a href="/Javablog/single.html">This is not my code</a>
                                </h2>
                                <div class="cat-links">
                                    <ul>
                                        <li>
                                            <a href="#">Coding</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="entry-date published">February 12, 2016</div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </article>



                    <article id="post-6" class="blog-item-holder">
                        <div class="entry-content relative">
                            <div class="content-1170 center-relative">
                                <h2 class="entry-title">
                                    <a href="/Javablog/single.html">Support human activity</a>
                                </h2>
                                <div class="cat-links">
                                    <ul>
                                        <li>
                                            <a href="#">Advocacy</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="entry-date published">February 12, 2016</div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </article>

                </div>
                <div class="clear"></div>
              
            </div>

            <div class="featured-image-holder">
                <div class="featured-post-image" style="background-image: url(/Javablog/images/javablog.png); background-position: center; background-size: auto; background-repeat: no-repeat"></div>

            </div>
            <div class="clear"></div>
        </div>

        <!--Load JavaScript-->
        <script type="text/javascript" src="Javablog/js/jquery.js"></script>
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
