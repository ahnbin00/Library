<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="resources/bootstrap.css">
<title>마이페이지</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
body, h1, h3{
font-family: 'Jua', sans-serif;
}
</style>
</head>
<body style="width:1200px;text-align:center;margin: 0 auto;" >
	<header>
		<h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><img alt="로고" src="resources/logo.png" width="200px" height="100px"></h1>
	</header>
	
	<nav>
		<%@ include file="/WEB-INF/book/banner.jsp" %>
	</nav>
	
	<h3>${memberName }님의 마이페이지</h3> 
	<a href="getMember.do?id=${id} ">회원정보수정</a>
	<a href="memberRental.do?id=${id }">회원대출정보</a>
	<a href="logout.do">로그아웃</a>
	
	<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>