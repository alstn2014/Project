<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="com.javablog.model.domain.Admin"%>

<%
	Admin admin = (Admin) request.getSession().getAttribute("admin");
%>

<meta charset="UTF-8">

<script>
function login(){
	location.href="/admin/login";
}
function logout(){
	location.href="/admin/logout";
}
</script>

<!-- Preloader Gif -->
<table class="doc-loader">
	<tbody>
		<tr>
			<td><img src="/Javablog/images/ajax-document-loader.gif"
				alt="Loading..."></td>
		</tr>
	</tbody>
</table>

<div id="sidebar" class="sidebar">
	<div class="menu-left-part">

		<div class="search-holder">
			<label> <input type="search" class="search-field"
				placeholder="검색어를 입력하세요..." value="" name="s" title="Search for:">
			</label>
		</div>
		<div class="site-info-holder">
			<h1 class="site-title">Java Blog</h1>
			<p class="site-description">자바 블로그는 친절한 글로 자세한 설명을 곁들여 개발의 초보자에게도
				쉽게 설명합니다.</p>
		</div>
		<nav id="header-main-menu">
			<ul class="main-menu sm sm-clean">
				<li><a href="/admin/board/list" class="current">Java의 모든 것</a></li>
				<li>.</li>
				<li>.</li>
				<li>.</li>
				<li>.</li>
				<li>.</li>
				<li>.</li>
				<li>.</li>
				<li>.</li>
				<li>.</li>
				<li>.</li>
				<li>.</li>
				<%
					if (admin == null) {
				%>
				<li><button class="w3-button w3-border w3-hover-black"
						onClick="login()">관리자 로그인</button></li>
				<%
					} else {
				%>
				<li><button class="w3-button w3-border w3-hover-black"
						onClick="logout()">관리자 로그아웃</button></li>
				<%
					}
				%>
			</ul>
		</nav>
	</div>

	<div class="menu-right-part">
		<div class="logo-holder">
			<a href="/index.jsp"> <img src="/Javablog/images/logo.png"
				alt="Suppablog WP">
			</a>
		</div>
		<div class="toggle-holder">
			<div id="toggle">
				<div class="menu-line"></div>
			</div>
		</div>

		<div class="fixed scroll-top">
			<i class="fa fa-caret-square-o-up" aria-hidden="true"></i>
		</div>
	</div>

	<div class="clear"></div>
</div>