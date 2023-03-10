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

</style>
</head>
<body style="width:1200px; text-align:center; margin: 0 auto;">
	
	<header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><a href="index.do"><img alt="로고" src="resources/logo.png"  width="200px" height="100px"></a></h1>
	</header>
	
	<nav>
		<%@ include file="/WEB-INF/book/banner.jsp" %>
   	</nav>
   <br>
   
   <h3>대여 현황</h3>
   
   <!-- 검색 시작 -->
   <form action="getRentalList.do" method="get">
      <table class="table">
         <tr>
            <td align="right">
               <select name="searchCondition">
                  <option value="TITLE">제목</option>
                  <option value="ID">아이디</option>
                  <option value="ISBN">ISBN</option>
               </select>
               <input type="text" name="searchKeyword">
               <input type="submit" value="검색">
            </td>   
         </tr>
      </table>
   </form>
   
   <!-- 목록 출력 -->
   <table class="table" style="width:1200px; text-align:center; margin: 0 auto;">
      <tr>
      <th>제목</th>
      <th>대여자</th>
      <th>대여일</th>
      <th>반납일</th>
      <th>남은 기한</th>
      <th>반납 / 연장</th>
      </tr>
      <c:forEach var="rentalList" items="${rentalList }">
         <tr>
               <td>${rentalList.title }</td>
               <td>${rentalList.id }</td>
               <td>${rentalList.rentday }</td>
               <td>${rentalList.returnday }</td>
               		<c:choose> 
						<c:when test="${rentalList.restday >= 0}">
							<td>${rentalList.restday } 일</td>
							 <td>
				                <button type="button" class="btn btn-danger" onclick="location.href='deleteRental.do?rentalseq=${rentalList.rentalseq}&isbn=${rentalList.isbn}'">반납</button>
				                <button type="button" class="btn btn-warning" onclick="location.href='extendRental.do?rentalseq=${rentalList.rentalseq}'">연장</button>
				             </td>
						</c:when>
						<c:otherwise> 
							<td style="color: red;">${rentalList.restday } 일(연체)</td>
							<td>
				                <button type="button" class="btn btn-danger" onclick="location.href='deleteRental.do?rentalseq=${rentalList.rentalseq}&isbn=${rentalList.isbn}'">반납</button>
				             </td>
						</c:otherwise>
					</c:choose>
          </tr>
       </c:forEach>
   </table>
   </div>
   
   <%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>