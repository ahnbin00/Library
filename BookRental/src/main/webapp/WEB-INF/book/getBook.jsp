<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="resources/bootstrap.css">
<title>도서 상세페이지/대여</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
body, h1, h3, h5{
font-family: 'Jua', sans-serif;
}
th{
width:100px;
font-size:17px;
}
td{
font-size:17px;
text-align:left;
}
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
   <h3>도서 상세/대여</h3>
   <br>
   <form name="book">
   <input type="hidden" name="isbn" value="${book.isbn }">
   <input type="hidden" name="id" value="${id }">
   <table class="table" style="width:1000px; align:center; margin: 0 auto;">
      <tr>
         <td style="height:100px" rowspan="5"><img src="${book.image }" height="300"></td>
         <th>제목</th>
         <td>${book.title }</td>
         <input type="hidden" name="title" value="${book.title }">
      </tr>
      <tr>
         <th>저자</th>
         <td>${book.writer }</td>
      </tr>
      <tr>
         <th>출판사</th>
         <td>${book.publisher }</td>
      </tr>
      <tr>
         <th>책소개</th>
         <td>${book.content }</td>
      </tr>
      <tr>
         <th colspan="2">
         <c:if test="${book.state eq 'Y'}">
            <h5>대여 가능</h5>
            <c:if test="${empty id }">
            <h5>로그인 후 대출 가능 / <a href="login.do">로그인</a> </h5>
            </c:if>
            <c:if test="${not empty id}">
<!--          <input type="submit" class="btn btn-primary" style="font-family: 'Jua', sans-serif;" value="대여"> -->
            <button class="btn btn-primary" style="font-family: 'Jua', sans-serif;" onclick="checkRental();return false;">대여</button>
            </c:if>
         </c:if>
         <c:if test="${book.state eq 'N'}">
            <h5 style="color:red;">대여 불가능</h5>
         </c:if>
         </th>
      </tr>
   </table>
   </form>
   <br>
   <p style="color: red;font-style: italic; text-align: right;">✓ 대여 현황은 [마이페이지] - [회원대출정보] 탭에서 확인하실 수 있습니다!</p>
   
      <%@ include file="/WEB-INF/book/footer.jsp" %>
      
<script>
      function checkRental() {
         var id=document.book.id.value;
         var isbn=document.book.isbn.value;
         var title=document.book.title.value;
         if (confirm("대여하시겠습니까?") == true){    //확인
            document.book.action="insertRental.do";
             document.book.method="post";
             document.book.submit();
         }else{   //취소
             return false;
         }
      }
   </script> 
</body>
</html>