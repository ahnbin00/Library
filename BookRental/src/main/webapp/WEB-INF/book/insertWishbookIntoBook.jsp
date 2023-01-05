<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="resources/bootstrap.css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>도서 등록</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
th, td{
	width: 200px;
}
</style>
</head>
<body style="width:1000px; text-align:center; margin: 0 auto;" >
   
   <br>
   <h3>도서 등록</h3>
   <hr>
   <form action="insertWishbookIntoBook.do">
   <table class="table">
      <tr>
         <td rowspan="7" width="200px"><img src="${vo.image}" width="330px"></td>
         <th scope="row" width="100px">이미지 소스</th>
         <td><input type="text" class="form-control" name="image" value="${vo.image}"></td>
      </tr>
      <tr>
            <th scope="row">제목</th>
            <td><input type="text" class="form-control" name="title" value="${vo.title}"></td>
       </tr>
       <tr>
            <th scope="row">ISBN</th>
            <td><input type="text" class="form-control" name="isbn" value="${vo.isbn}"></td>
       </tr>
       <tr>
          <th scope="row">작가</th>
            <td><input type="text" class="form-control" name="writer" value="${vo.writer}"></td>
       </tr>
       <tr>
          <th scope="row">출판사</th>
            <td><input type="text" class="form-control" name="publisher" value="${vo.publisher}"></td>
       </tr>
       <tr>
          <th scope="row">소개</th>
            <td><textarea class="form-control" id="exampleTextarea" rows="3" name="content"></textarea></td>
       </tr>
       <tr>
          <th></th>
          <td align="right">
             <input type="submit" class="btn btn-info" value="비치완료">&nbsp;&nbsp;
             <input type="button" class="btn btn-danger" onclick="self.close()"  value="취소">
          </td>
       </tr>
   </table>
   </form>
</body>
</html>