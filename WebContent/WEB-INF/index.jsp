<%@page import="java.util.Collections"%>
<%@page import="com.javablog.model.domain.Board"%>
<%@page import="java.util.List"%>
<%@page import="com.javablog.model.domain.Admin"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Board> boardList=(List)request.getSession().getAttribute("boardList");
%>

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
		
		<!-- JQuery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
		
		<!-- 버튼 관련 양식 -->	
		 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		 
    </head>

    <body class="home blog">

        <!-- Left Sidebar 사이드바 안에 admin 보유중 -->
        <%@include file="/WEB-INF/Javablog/include/leftsidebar.jsp" %>
        <!-- Left Sidebar end -->

        <!-- Home Content -->
        <div id="content" class="site-content">
            <div id="blog-wrapper">
                <div class="blog-holder center-relative">


                    <article id="post-1" class="blog-item-holder featured-post">
                        <div class="entry-content relative">
                            <div class="content-1170 center-relative">
                            	<%if(boardList!=null){ %>
                                <div class="entry-date published"><%=boardList.get(0).getRegdate().substring(0,10) %></div>
                                <h2 class="entry-title">
                                    <a href="/admin/board/detail?board_id=<%=boardList.get(0).getBoard_id()%>"><%=boardList.get(0).getTitle() %></a>
                                </h2>
                                <div class="excerpt">
                                	<%=boardList.get(0).getContent() %>
                                   <a class="read-more" href="/admin/board/detail?board_id=<%=boardList.get(0).getBoard_id()%>"></a>
                                </div>
                                <%} %>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </article>

					<%if(boardList!=null){ %>
						<%for(int i=0;i<5;i++){ %>
							<%Board board= boardList.get(i); %>
		                    <article id="post-2" class="blog-item-holder">
		                        <div class="entry-content relative">
		                            <div class="content-1170 center-relative">
		                                <h2 class="entry-title">
		                                    <a href="/admin/board/detail?board_id=<%=board.getBoard_id()%>"><%=board.getTitle() %></a>
		                                </h2>
		                                <div class="entry-date published"><%=board.getRegdate().substring(0,10) %></div>
		                                <div class="clear"></div>
		                            </div>
		                        </div>
		                    </article>
	                    <%} %>
                    <%} %>



            <div class="featured-image-holder">
                <div class="featured-post-image" style="background-image: url(/Javablog/images/javablog.png); background-position: center; background-size: auto; background-repeat: no-repeat"></div>

            </div>
            <div class="clear"></div>
        </div>

        <!--Load JavaScript-->
        <%@include file="/WEB-INF/Javablog/include/javascript.jsp"%>
        
    </body>
</html>
