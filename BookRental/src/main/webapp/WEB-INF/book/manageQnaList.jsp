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
<title>QNALIST</title>
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
	<hr>
	   <table class="table" style="width:1000px; align:center; margin:0 auto; ">
      <c:forEach var="qnaList" items="${qnaList }">
         <tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>상태</th>
			<th>조회수</th>
          </tr>
          <tr>
          <td>${qnaList.seq }</td>
          <td><a href="getQnaManage.do?seq=${qnaList.seq }&state=${qnaList.state }">${qnaList.title }</a></td>
          <td>${qnaList.name }</td>
          <td>${qnaList.regdate }</td>
             <td>
                <c:if test="${qnaList.state eq 'N' }">
                  <h5 style="color:red;line-height: 40px;" >대기중</h5>
               </c:if>
               <c:if test="${qnaList.state eq 'Y' }">
                  <h5 style="color:black;line-height: 40px;" >답변완료</h5>
               </c:if>
             </td>
             <td>${qnaList.cnt }</td>
          </tr>
       </c:forEach>
   </table>
   
   <%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>