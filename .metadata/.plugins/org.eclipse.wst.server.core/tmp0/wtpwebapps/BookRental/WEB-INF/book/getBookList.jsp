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
body, h1, h3, h5{
font-family: 'Jua', sans-serif;
}
td{
text-align: left;
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
<body style="width:1200px;text-align:center;margin: 0 auto;" >
   <header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><img alt="로고" src="resources/logo.png" width="200px" height="100px"></h1>
   </header>
   <nav>
   <%@ include file="/WEB-INF/book/banner.jsp" %>
   </nav>
   <br>
   <h3>도서 목록</h3>
   <p style="color: red;font-style: italic; text-align: left; width: 700px; float: left; margin: 0">✓ 대여 현황은 [마이페이지] - [회원대출정보] 탭에서 확인하실 수 있습니다!</p>
      <!-- 검색 시작 -->
    <form action="getBookList.do" method="post" class="d-flex" style="width: 400px; float: right; margin-bottom: 30px">
    <select id="searchCondition" name="searchCondition" class="form-select" style="width: 100px;">
                  <option value="TITLE" ${vo.searchCondition == 'TITLE' ? 'selected="selected"' : '' }>책제목</option>
                  <option value="WRITER" ${vo.searchCondition == 'WRITER' ? 'selected="selected"' : '' }>저자</option>
                  <option value="PUBLISHER" ${vo.searchCondition == 'PUBLISHER' ? 'selected="selected"' : '' }>출판사</option>
    </select>
        <input class="form-control me-sm-2" type="text" placeholder="Search" name="searchKeyword" value="${vo.searchKeyword }">
        <input type="submit" value="검색" style="font-family: 'Jua', sans-serif;" class="btn btn-primary">
      </form>
   <!-- 검색 종료 -->
   
   <!-- 목록 수정 후 -->
   <table class="table" style="width:1000px; align:center; margin:0 auto; ">
      <c:forEach var="bookList" items="${bookList }">
         <tr>
            <td scope="row" style="height:100px;width:170px; align:center;" rowspan="4"><a href="getBook.do?isbn=${bookList.isbn }&state=${bookList.state}"><img src="${bookList.image }" width="150px" height="210px"></a></td>
               <th scope="row" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; line-height: 40px;">제목</th>
               <td><a style="color: black;line-height: 40px;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; text-decoration: none;"  href="getBook.do?isbn=${bookList.isbn }&state=${bookList.state}">${bookList.title }</a></td>
          </tr>
          <tr>
             <th scope="row" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;line-height: 40px;">저자</th>
               <td><a style="color: black;line-height: 40px;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; text-decoration: none;" href="getBook.do?isbn=${bookList.isbn }&state=${bookList.state}">${bookList.writer }</a></td>
          </tr>
          <tr>
             <th scope="row" style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;line-height: 40px;">출판사</th>
               <td><a style="color: black;line-height: 40px;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; text-decoration: none;" href="getBook.do?isbn=${bookList.isbn }&state=${bookList.state}">${bookList.publisher }</a></td>
          </tr>
          <tr>
             <th scope="row"></th>
             <td scope="row">
                <c:if test="${bookList.state eq 'N' }">
                  <h5 style="color:red;line-height: 40px;" >대여 불가능</h5>
               </c:if>
               <c:if test="${bookList.state eq 'Y' }">
                  <h5 style="color:black;line-height: 40px;" >대여 가능</h5>
               </c:if>
             </td>
             <td></td>
          </tr>
       </c:forEach>
   </table>

      <!-- 페이지 상하단 이동 버튼 -->
      <div class="moveTopBtn" style="cursor:pointer;" onclick="window.scrollTo(0,0);">
      	<i style="font-size: 40px" class="bi bi-arrow-up-square-fill"></i>
      </div>
      <div class="moveBottomBtn" style="cursor:pointer;" onclick="window.scrollTo(0,document.body.scrollHeight);">
      	<i style="font-size: 40px" class="bi bi-arrow-down-square-fill"></i>
      </div>
      
      <br><br>
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