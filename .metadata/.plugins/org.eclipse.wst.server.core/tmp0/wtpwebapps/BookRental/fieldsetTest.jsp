<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset style="border: 1 solid">
		<legend><i class="bi bi-search"> 희망도서 검색</i></legend>
		<label>제목 <input type="text" id="title"></label>&nbsp;&nbsp;
		<label>작자 <input type="text" id="writer"></label>&nbsp;&nbsp;
		<label>출판사 <input type="text" id="publisher"></label>&nbsp;
		<button type="button" class="btn btn-info" onclick="alert('도서 api 이용 검색');">검색</button>
	</fieldset>
</body>
</html>