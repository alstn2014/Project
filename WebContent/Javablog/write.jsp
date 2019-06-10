<%@page import="com.javablog.model.domain.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
	Board write = new Board();
%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdn.ckeditor.com/ckeditor5/12.1.0/classic/ckeditor.js"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=button] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=button]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>

</head>
<body>

<h3>Contact Form</h3>

<div class="container">
  <form>
    <label>제목 입력</label>
    <input type="text" id="title" name="title" placeholder="title">
    <label>내용입력</label>
	   	<textarea name="content" id="editor" style="height:200px">
	   		
	    </textarea>
	    
	
   <!-- https://ckeditor.com/docs/ckeditor5/latest/framework/guides/deep-dive/upload-adapter.html
   			https://ckeditor.com/docs/ckeditor5/latest/builds/guides/integration/saving-data.html
			https://ckeditor.com/docs/ckeditor5/latest/framework/guides/deep-dive/upload-adapter.html
			
			
			https://huskdoll.tistory.com/121
			https://pkbad.tistory.com/28
			https://lalwr.blogspot.com/2018/09/ckeditor-spring.html
			https://zzznara2.tistory.com/443
    -->
    	<!-- <textarea id="subject" name="subject"  style="height:200px"></textarea> -->

    <input type="button" value="글쓰기">
  </form>
</div>

</body>
</html>