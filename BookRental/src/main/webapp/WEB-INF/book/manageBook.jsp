<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="resources/bootstrap.css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>도서 상세페이지</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
th{
width: 130px
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
	<h3>도서 수정</h3>
	<form action="updateBook.do">
	<input type="hidden" name="seq" value="${book.seq }">
	<table class="table" style="width:1200px;">
		<tr>
			<td rowspan="7" width="200px"><img src="${book.image }" height="320px"></td>
			<th scope="row">이미지 소스</th>
			<td><input type="text" class="form-control" value="${book.image }" name="image"></td>
		</tr>
		<tr>
	      	<th scope="row">제목</th>
	      	<td><input type="text" class="form-control" value="${book.title }" name="title"></td>
    	</tr>
    	<tr>
	      	<th scope="row">ISBN</th>
	      	<td><input type="text" class="form-control" value="${book.isbn }" name="isbn"></td>
    	</tr>
    	<tr>
    		<th scope="row">작가</th>
	      	<td><input type="text" class="form-control" value="${book.writer }" name="writer"></td>
    	</tr>
    	<tr>
    		<th scope="row">출판사</th>
	      	<td><input type="text" class="form-control" value="${book.publisher }" name="publisher"></td>
    	</tr>
    	<tr>
    		<th scope="row">소개</th>
	      	<td><textarea class="form-control" id="exampleTextarea" rows="3" name="content">${book.content}</textarea></td>
    	</tr>
    	<tr>
    		<th></th>
    		<td align="right">
    			<button type="button" class="btn btn-dark" onclick="location.href='getBookListManage.do'">돌아가기</button>&nbsp;&nbsp;
    			<input type="submit" class="btn btn-info" value="수정">
    		</td>
    	</tr>
	</table>
	</form>
	</div>
	
	<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>