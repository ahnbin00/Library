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
<title>도서 목록/검색</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
ul li a{
text-decoration: none;
padding: 10px;
}
ul li a:hover{
background-color: #78c2ad;
color: white;
border-radius:5px; 
}
th{
width: 80px;
}
.textLeft{
text-align: left;
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
<body style="width:1200px; text-align:center; margin: 0 auto;" >
	<header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><a href="index.do"><img alt="로고" src="resources/logo.png"  width="200px" height="100px"></a></h1>
    </header>

	<nav>
		<%@ include file="/WEB-INF/book/banner.jsp" %>
	</nav>
   <br>
   
   <h3>도서 관리</h3>
   
   
   
   <!-- 검색 시작 -->
   <form action="getBookListManage.do" method="post">
      <table class="table">
         <tr>
            <td align="right">
            <p style="color: red;font-style: italic;">✓전체 검색 옵션을 선택시 검색창을 비우고 검색버튼을 눌러주세요!</p>
            
            <div style="width: 100px; float: left;">
      			<button type="button" class="btn btn-info" onclick="location.href='insertBookPage.do'">새 책 등록</button>
   			</div>
   			
            <select id="searchCondition" name="searchCondition">
                  <option value="TITLE" ${vo.searchCondition == 'TITLE' ? 'selected="selected"' : '' }>책제목</option>
                  <option value="WRITER" ${vo.searchCondition == 'WRITER' ? 'selected="selected"' : '' }>저자</option>
                  <option value="PUBLISHER" ${vo.searchCondition == 'PUBLISHER' ? 'selected="selected"' : '' }>출판사</option>
                  <option value="TITLE">전체 검색</option>
            </select>
            <input type="text" name="searchKeyword" value="${vo.searchKeyword }"> 
            <input type="submit" value="검색"></td><br>
         </tr>
      </table>
   </form>
   <!-- 검색 종료 -->
   
   
   <table class="table" style="width:1200px;">
      <c:forEach var="bookList" items="${bookList }">
         <tr>
            <td style="height:100px" rowspan="6"><img src="${bookList.image }" width="160"></td>
               <th>제목</th>
               <td class="textLeft">${bookList.title }</td>
          </tr>
          <tr>
               <th>ISBN</th>
               <td class="textLeft">${bookList.isbn }</td>
          </tr>
          <tr>
             <th>작가</th>
               <td class="textLeft">${bookList.writer}</td>
          </tr>
          <tr>
             <th>출판사</th>
               <td class="textLeft">${bookList.publisher}</td>
          </tr>
          <tr>
             <th>소개</th>
               <td class="textLeft">${bookList.content}</td>
          </tr>
          <tr>
             <td colspan="2">
                <button type="button" class="btn btn-dark" onclick="location.href='getBookManage.do?isbn=${bookList.isbn }'">수정</button>
                <button type="button" class="btn btn-danger" onclick="location.href='deleteBook.do?seq=${bookList.seq }'">삭제</button>
             </td>
          </tr>
       </c:forEach>
   </table>
   <div style="width: 100px; float: right;">
      <button type="button" class="btn btn-info" onclick="location.href='insertBookPage.do'">새 책 등록</button>
   </div>
   
      <!-- 페이지 상하단 이동 버튼 -->
      <div class="moveTopBtn" style="cursor:pointer;" onclick="window.scrollTo(0,0);">
      	<i style="font-size: 40px" class="bi bi-arrow-up-square-fill"></i>
      </div>
      <div class="moveBottomBtn" style="cursor:pointer;" onclick="window.scrollTo(0,document.body.scrollHeight);">
      	<i style="font-size: 40px" class="bi bi-arrow-down-square-fill"></i>
      </div>
   
   <!-- 페이징 --> 
 	<div>
         <ul class="pagination" style="text-align: center; width:100px; margin: auto auto;" >
<!--             이전 페이지 시작 -->
            <c:if test='${map.startPage > 10}'>
            <li class="paginate_button page-item previous" id="dataTable_previous">
            <a href="getBookList.do?pageNum=${map.startPage-10 }" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">이전페이지</a>
            </li>
            </c:if>
<!--             이전 페이지 끝 -->

<!--             페이징 넘버링 시작 -->
            <c:forEach var="num" begin="${map.startPage }" end="${map.endPage }">
               <li class="pagination_button-item  <c:if test='${vo.pageNum eq num }'>active</c:if>">
                  <a href="getBookList.do?pageNum=${num }&searchKeyword=${vo.searchKeyword}&searchCondition=${vo.searchCondition}">${num }&nbsp;</a>
               </li>
            </c:forEach>
<!--             페이징 넘버링 끝 -->

<!--             다음 페이지 시작 -->
            <c:if test='${map.totalPages > map.endPage }'>
            <li class="paginate_button page-item next" id="dataTable_next">
            <a href="getBookList.do?pageNum=${vo.pageNum+map.nextFirstNumPage }" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">다음페이지</a>
            </li>
            </c:if>
<!--             다음 페이지 끝 -->
         </ul>
      </div>
      <br>

	<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>