<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="resources/bootstrap.css">
<title>회원대출정보</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
body, h1, h3{
font-family: 'Jua', sans-serif;
}
/* .table{ */
/* 	border: 3px solid black; */
/* } */
</style>
</head>
<body style="width:1200px;text-align:center;margin: 0 auto;" >
	<header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><a href="index.do"><img alt="로고" src="resources/logo.png"  width="200px" height="100px"></a></h1>
	</header>
	<nav>
	<%@ include file="/WEB-INF/book/banner.jsp" %>
	</nav>
	<br>
	<div align="center">
		<h3>${memberName}님 회원대출정보</h3>
		<table class="table" style="width:1000px;">
			<tr>
				<th>도서코드</th>
				<th>도서제목</th>
				<th>대출일</th>
				<th>반납일</th>
				<th>잔여일</th>
			</tr>
			<c:forEach var="memberList" items="${memberList }">
				<tr>
					<td>${memberList.isbn }</td>
					<td>${memberList.title }</td>
					<td>${memberList.rentday }</td>
					<td>${memberList.returnday }</td>
					<td>${memberList.restday }</td>
				</tr>	
			</c:forEach>
		</table>
	</div>
	<br>
	<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>