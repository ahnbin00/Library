<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="resources/bootstrap.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>희망도서 신청</title>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
	h3, h5{
		font-family: 'Jua', sans-serif;
	}
</style>
</head>
<body style="width:1200px;text-align:center;margin: 0 auto;">
	<header>
		<h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><img alt="로고" src="resources/logo.png" width="200px" height="100px"></h1>
	</header>
	<nav>
		<%@ include file="/WEB-INF/book/banner.jsp" %>
	</nav>
	
	<hr>
	<h3>희망도서 신청</h3>
	<hr>
	
	<div style="text-align: left;padding: 0 40px;">
		<h5>『희망도서 서비스』란?</h5>
		<p style="color: black;">도서관에 원하는 자료가 없을 경우, 이용자가 원하는 자료를 신청할 수 있는 서비스.<br>
		신청내역 및 현황은 <span style="color: blue;">[마이페이지]-[희망도서 신청내역]</span>에서 확인이 가능하며, 각 신청도서는 신청일을 기준으로 <span style="color: red;">30일</span>마다 초기화됩니다.</p>
		<br>
		<i class="bi bi-check" style="color: blue;">이용대상 :</i> <span style="color: black;">도서관 정회원</span><br>
		<i class="bi bi-check" style="color: blue;">신청권수 :</i> <span style="color: black;">30일 기준 1인 2권</span><br>
	</div>
	<br>
	
	<div style="text-align: center;">
	<c:choose>
		<c:when test="${id == null}">
			<div>
      			<button type="button" class="btn btn-info" onclick="alert('로그인이 필요한 서비스입니다.');location.href='login.do';">희망도서 서비스 신청하기</button>
   			</div>
		</c:when>
		<c:otherwise>
				<hr><br>
				<form>
				<!-- fieldset 적용하고 싶은데 적용이 안 됨 -->
<!-- 				<fieldset> -->
<!-- 					<legend><i class="bi bi-search"> 희망도서 검색</i></legend> -->
<!-- 					<label>제목 <input type="text" id="title"></label>&nbsp;&nbsp; -->
<!-- 					<label>작자 <input type="text" id="writer"></label>&nbsp;&nbsp; -->
<!-- 					<label>출판사 <input type="text" id="publisher"></label>&nbsp; -->
<!-- 					<button type="button" class="btn btn-info" onclick="alert('도서 api 이용 검색');">검색</button> -->
<!-- 				</fieldset> -->
				
				<h5 style="text-align: left; padding: 0 40px;"><i class="bi bi-search"> 희망도서 검색</i></h5>
					<label>제목 <input type="text" id="title"></label>&nbsp;&nbsp;
					<label>작자 <input type="text" id="writer"></label>&nbsp;&nbsp;
					<label>출판사 <input type="text" id="publisher"></label>&nbsp;
					<button type="button" class="btn btn-info" onclick="alert('도서 api를 이용한 검색');">검색</button>
				</form>
		</c:otherwise>
	</c:choose>
	<br>
	</div>
	
	<hr>
	
	<!-- footer -->
	<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>