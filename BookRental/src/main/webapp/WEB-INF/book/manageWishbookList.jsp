<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="resources/bootstrap.css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>희망도서 신청현황</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
h1, h3, h5{
font-family: 'Jua', sans-serif;
}
th{
text-align: center;
}
td{
text-align: left;
color: black;
}
ul li a{
text-decoration: none;
padding: 10px;
}
ul li a:hover{
background-color: #78c2ad;
color: white;
border-radius:5px; 
}
.moveTopBtn{
	position: fixed;
	bottom: 8em;
	right: 3rem;
}
.moveBottomBtn{
	 position: fixed;
	 bottom: 4rem;
	 right: 3rem;
}
</style>
</head>
<body style="width:1200px;text-align:center;margin: 0 auto;">
	<header>
		<h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;">
			<a href="index.do">
			<img alt="로고" src="resources/logo.png"  width="200px" height="100px"></a>
		</h1>
	</header>
	
	<nav>
		<%@ include file="/WEB-INF/book/banner.jsp" %>
	</nav>
	
	<hr>
	<h3>희망도서 신청내역</h3>
	<hr>
	<br>
	
	<table class="table" style="width:1100px; text-align:center; margin: 0 auto;">
		<tr> <th>신청일</th> <th>제목</th> <th>저자</th> <th>출판사</th> <th>상태</th> </tr>
		<c:forEach var="wishbookList" items="${wishbookList}">
			<tr>
				<c:choose>
					<c:when test="${wishbookList.state == 'W'}"> <!-- 대기상태 -->
						<td>${wishbookList.regdate}</td>
						<td>${wishbookList.title}</td>
						<td>${wishbookList.writer}</td>
						<td>${wishbookList.publisher}</td>
						<td style="text-align: center;">
							<button class="btn btn-info" onclick="location.href='updateWishbookToP.do?isbn=${wishbookList.isbn}'">승인</button>
							<button class="btn btn-danger" onclick="location.href='updateWishbookToX.do?isbn=${wishbookList.isbn}'">취소</button>
						</td>
					</c:when>
					<c:when test="${wishbookList.state == 'P'}"> <!-- 승인 후 비치대기 상태 -->
						<td>${wishbookList.regdate}</td>
						<td>${wishbookList.title}</td>
						<td>${wishbookList.writer}</td>
						<td>${wishbookList.publisher}</td>
						<td><button class="btn btn-info" onclick="location.href='updateWishbookToC.do?isbn=${wishbookList.isbn}'">비치완료</button></td>
					</c:when>
				</c:choose>
			</tr>
		</c:forEach>
	</table>
	
	<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>