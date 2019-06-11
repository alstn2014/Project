<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.javablog.model.domain.Admin"%>

<%
	Admin admin = (Admin) request.getSession().getAttribute("admin");
%>

<meta charset="UTF-8">
<div id="sidebar" class="sidebar">
	<div class="menu-left-part">

		<div class="search-holder">
			<label> <input type="search" class="search-field"
				placeholder="검색어를 입력하세요..." value="" name="s" title="Search for:">
			</label>
		</div>
		<div class="site-info-holder">
			<h1 class="site-title">Java Blog</h1>
			<p class="site-description">자바 블로그는 친절한 글과 이미지를 결합하여 개발의 초보자에게도 쉽게 설명합니다.</p>
		</div>
		<nav id="header-main-menu">
			<ul class="main-menu sm sm-clean">
				<li><a href="/Javablog/list.jsp" class="current">JavaScript</a></li>
				<li><a href="/Javablog/list.jsp">JavaEE</a></li>
				<li><a href="/Javablog/list.jsp">JavaSE</a></li>
				<li><a href="/Javablog/list.jsp">HTML/CSS</a></li>
				<li><a href="/Javablog/list.jsp">개발환경</a></li>
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
			<a href="/index.jsp"> 
				<img src="/Javablog/images/logo.png"	alt="Suppablog WP">
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