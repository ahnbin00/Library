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
<title>QNA</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
th, td{
	width: 200px;
}
</style>
</head>
<body style="width:1200px; text-align:center; margin: 0 auto;" >
	   <header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><img alt="로고" src="resources/logo.png" width="200px" height="100px"></h1>
   </header>
   <nav>
   <%@ include file="/WEB-INF/book/banner.jsp" %>
   </nav>
   <br>
   <h3>도서관에 물어보세요</h3>
   <br>
   <div align="center">
   <table>
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
   <button onclick="location.href='getQnaListManage.do'">목록</button>
	<c:if test="${ reply.seq != null }">
		   <table>
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
	<c:if test="${reply.seq == null }">
		
	</c:if>
	   <br>
   		<form action="insertReply.do">
			<textarea cols="50" rows="10" name="content"></textarea>
			<input type="hidden" name="seq" value="${qna.seq }">
			<input type="hidden" name="name" value="관리자">
			<!-- 게시글의 닉네임을 저장하는 것이 아니고 로그인 한 사람의 닉네임을 답글에 달아야 함. 따라서 name값을 value속성에 지정 -->
			
			<input type="hidden" name="id" value="admin">
			<input type="submit" value="답변등록">
			<input type="reset" value="다시작성">
		</form>
		
		<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>