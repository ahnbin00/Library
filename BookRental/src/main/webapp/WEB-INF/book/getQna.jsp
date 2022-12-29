<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="resources/bootstrap.css">
<title>QNA</title>
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
   <h3>도서관에 물어보세요</h3>
   	<c:if test="${reply.replyseq == null }">
	<c:if test="${qna.id eq id }">
	<button class="btn btn-primary" onclick="location.href='deleteQna.do?seq=${qna.seq}'">삭제</button>
   </c:if>
	</c:if>
	<hr>
   <div align="center">
   <table class="table" style="width:800px;">
		<tr>
			<th>제목</th>
			<td>${qna.title }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${qna.name }</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>${qna.regdate }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${qna.cnt }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${qna.content }</td>
		</tr>
   </table>
		<c:if test="${ reply.replyseq != null }">
		   <table class="table" style="width:800px;">
		   <h3>답변</h3>
		<tr>
			<th>작성자</th>
			<td>${reply.name }</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>${reply.regdate }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${reply.content }</td>
		</tr>
		</table>
	</c:if>
   <button class="btn btn-primary" onclick="location.href='getQnaList.do'">목록</button>
	<c:if test="${qna.id ne id }">
   </c:if>
   <%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>