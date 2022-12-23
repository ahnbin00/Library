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
</head>
<body style="width:1200px;text-align:center;margin: 0 auto;">
   <header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><img alt="로고" src="resources/logo.png" width="200px" height="100px"></h1>
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
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="name" value="${memberName }" readonly> </td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="50" rows="10" name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="등록">
			<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>