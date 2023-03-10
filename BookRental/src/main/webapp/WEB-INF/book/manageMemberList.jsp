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
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>대여 현황</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
th, td{
	width: 200px;
}
</style>
</head>
<body style="width:1200px; text-align:center; margin: 0 auto;" >
	   <header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><a href="index.do"><img alt="로고" src="resources/logo.png"  width="200px" height="100px"></a></h1>
   </header>
   <nav>
   <%@ include file="/WEB-INF/book/banner.jsp" %>
   </nav>
   <br>
	<h3>회원 관리</h3>
	
	<!-- 검색 시작 -->
	<form action="getMemberList.do">
		<table class="table">
			<tr>
				<td align="right">
					<select name="searchCondition">
						<option value="ID">아이디</option>
						<option value="NAME">이름</option>
					</select>
					<input type="text" name="searchKeyword">
					<input type="submit" value="검색">
				</td>	
			</tr>
		</table>
	</form>
	
	<!-- 목록 출력 -->
	<table class="table">
		<tr>
			<th scope="row">아이디</th>
			<th scope="row">이름</th>
			<th scope="row">연락처</th>
			<th scope="row">이메일</th>
		</tr>
		<c:forEach var="memberList" items="${memberList }">
			<tr class="table">
		      	<td><a href="getMemberInfo.do?id=${memberList.id }">${memberList.id }</a></td>
		      	<td>${memberList.name }</td>
		      	<td>${memberList.phone }</td>
		      	<td>${memberList.mail }</td>
	    	</tr>
	    </c:forEach>
	</table>
	<!-- 목록 끝 -->
	</div>	
	
	<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>