<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="resources/bootstrap.css">
<title>문의글 작성</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
h3{
font-family: 'Jua', sans-serif;
}

</style>
</head>
<body style="width:1200px;text-align:center;margin: 0 auto;">
   <header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><a href="index.do"><img alt="로고" src="resources/logo.png"  width="200px" height="100px"></a></h1>
   </header>
   <nav>
   <%@ include file="/WEB-INF/book/banner.jsp" %>
   </nav>
   <br>
   <div align="center">
   <h3>도서관에 물어보세요</h3>
   <br>
	<form action="insertQna.do">
	
   <input type="hidden" name="id" value="${id }">
	<table class="table" style="width:800px;">
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" class="form-control"></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="name" value="${memberName }" class="form-control" readonly> </td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="50" rows="10" name="content" class="form-control"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="등록" class="btn btn-primary">
			<input type="reset" value="다시작성" class="btn btn-primary">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>