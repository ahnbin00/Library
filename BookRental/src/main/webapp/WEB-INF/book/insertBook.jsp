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
<title>도서 등록</title>
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
   
   <h3>도서 등록</h3>
   <form action="insertBook.do">
   <table class="table" style="width:1000px;">
      <tr>
         <td rowspan="7" width="200px"><img src="https://secure.webtoolhub.com/static/resources/icons/set113/ce45f72d.png" width="330px"></td>
         <th scope="row" width="100px">이미지 소스</th>
         <td><input type="text" class="form-control" name="image"></td>
      </tr>
      <tr>
            <th scope="row">제목</th>
            <td><input type="text" class="form-control" name="title"></td>
       </tr>
       <tr>
            <th scope="row">ISBN</th>
            <td><input type="text" class="form-control" name="isbn"></td>
       </tr>
       <tr>
          <th scope="row">작가</th>
            <td><input type="text" class="form-control" name="writer"></td>
       </tr>
       <tr>
          <th scope="row">출판사</th>
            <td><input type="text" class="form-control" name="publisher"></td>
       </tr>
       <tr>
          <th scope="row">소개</th>
            <td><textarea class="form-control" id="exampleTextarea" rows="3" name="content"></textarea></td>
       </tr>
       <tr>
          <th></th>
          <td align="right">
             <input type="submit" class="btn btn-info" value="등록">&nbsp;&nbsp;
             <input type="reset" class="btn btn-danger"  value="취소">
          </td>
       </tr>
   </table>
   </form>
   
   <%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>