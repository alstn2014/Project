<%@page import="com.javablog.model.domain.Board"%>
<%@page import="java.util.List"%>
<%@page import="com.javablog.commons.Pager"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Pager pager=(Pager)request.getAttribute("pager");   
	List<Board> boardList = (List)request.getAttribute("boardList");
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
		
		<!-- Left Sidebar 사이드바 안에 admin 보유중 -->
        <%@include file="/Javablog/include/leftsidebar.jsp" %>
        <!-- Left Sidebar end -->
		
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
							 <%int num=pager.getNum(); %>
   							 <%int curPos=pager.getCurPos(); %>
   							 <%for(int i=0;i<pager.getPageSize();i++){ %>
   							    <%if(num<1)break; %>
   							    <%Board board=boardList.get(curPos++); %>
								<tr onClick="loadSingle()">
								  <td><%=num-- %></td>
								  <td><%=board.getTitle() %></td>
								  <td><%=board.getRegdate() %></td>
								</tr>
							<%} %>
							<tr>
						         <td colspan="3" align="center">
						         <%if(pager.getFirstPage()-1>0){ %>
						                 <a href="/admin/board/list?currentPage=<%=pager.getFirstPage()-1%>">◀</a>
						              <%}else{ %>
						                 <a href="javascript:alert('첫번째 페이지입니다');">◀</a>
						              <%} %>
						                        
						         <%for(int i=pager.getFirstPage();i<pager.getLastPage();i++){%>
						         <%if(i>pager.getTotalPage())break; %>
						         <a href="/admin/board/list?currentPage=<%=i %>">[<%=i %>]</a>                 
						         <%} %>
						            
						         <%if(pager.getLastPage()+1<pager.getTotalPage()){ %>
						                 <a href="/admin/board/list?currentPage=<%=pager.getLastPage()+1%>">▶</a>
						              <%}else{ %>
						                 <a href="javascript:alert('마지막 페이지입니다!');">▶</a>
						              <%} %>
						         </td>
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
        <%@include file="/Javablog/include/javascript.jsp"%>
        
    </body>
</html>

