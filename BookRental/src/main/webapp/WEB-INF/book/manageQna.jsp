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
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><a href="index.do"><img alt="로고" src="resources/logo.png"  width="200px" height="100px"></a></h1>
   </header>
   <nav>
   <%@ include file="/WEB-INF/book/banner.jsp" %>
   </nav>
   <br>
   <h3>도서관에 물어보세요</h3>
   <br>
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
   <br>
   <br>
	<c:if test="${reply.replyseq != null }">
		<form action="updateReply.do?">
		<table class="table" style="width:800px;">
		<input type="hidden" name="replyseq" value="${reply.replyseq }">
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
			<td><textarea cols="90" rows="10" name="content">${reply.content }</textarea></td>
		</tr>
		</table>
		<input class="btn btn-primary" type="submit" value="수정">
		</form>
	</c:if>
	<hr>
	<c:if test="${reply.replyseq == null }">
		<h3>답변 작성</h3>
		   	<form name="reply">
			<textarea cols="100" rows="10" name="content"></textarea>
			<input type="hidden" name="seq" value="${qna.seq }">
			<input type="hidden" name="name" value="관리자">
			<!-- 게시글의 닉네임을 저장하는 것이 아니고 로그인 한 사람의 닉네임을 답글에 달아야 함. 따라서 name값을 value속성에 지정 -->
			
			<input type="hidden" name="id" value="admin">
			<hr>
			<button class="btn btn-primary" onclick="insertReply();return false;">답변작성</button>
			<input class="btn btn-primary" type="reset" value="취소">
		</form>
	</c:if>
	   <br>

		
		<button class="btn btn-primary" onclick="location.href='getQnaListManage.do'">목록</button>
		
		<%@ include file="/WEB-INF/book/footer.jsp" %>
		
	<script>
      function insertReply() {
         var seq=document.reply.seq.value;
         var name=document.reply.name.value;
         var id=document.reply.id.value;
         if (confirm("답변을 등록하시겠습니까?") == true){    //확인
            document.reply.action="insertReply.do";
             document.reply.method="post";
             document.reply.submit();
         }else{   //취소
             return false;
         }
      }
	</script> 
</body>
</html>