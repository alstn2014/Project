<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
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

	<!--w3school 양식-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	
	<!-- Bootstrap 양식 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<script>
function loadSingle(){
	location.href="/Javablog/single.html";
}
</script>

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
		<%@include file="/Javablog/include/leftsidebar.jsp"%>
		
        <!-- Single Content -->
        <div id="content" class="site-content center-relative">
            <div class="single-post-wrapper content-1070 center-relative">

                <article class="center-relative">
  
                    <div class="entry-content">
						<div class="w3-container">
						  <h2>글목록</h2>

						  <table class="w3-table-all w3-hoverable">
							<thead>
							  <tr class="w3-light-grey">
								<th>No</th>
								<th>제목</th>
								<th>등록일</th>
							  </tr>
							</thead>
							<tr onClick="loadSingle()">
							  <td>[javaEE]</td>
							  <td>Thread의 기초</td>
							  <td>2019.06.03</td>
							</tr>
							<tr onClick="loadSingle()">
							  <td>[javaEE]</td>
							  <td>JNDI의 기초</td>
							  <td>2019.06.02</td>
							</tr>
							<tr onClick="loadSingle()">
							  <td>[javaEE]</td>
							  <td>URI와 URL의 차이</td>
							  <td>2019.06.01</td>
							</tr>
							<tr>
								<td colspan="3">
									<button type="button" class="btn btn-secondary">글등록</button>
								</td>
							</tr>
						  </table>
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

