<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="resources/bootstrap.css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>회원 정보 상세페이지</title>

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
body
{
  margin: 0 auto;
  width: 300px;
}
th{
	width: 200px;
}
.textLeft{
text-align: left
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
	<h3>회원 정보 상세페이지</h3>
	<hr>
	<div align="left">
		<br><br>
	</div>
	<table class="table" style="width: 800px;margin: 0 auto">
		<tr>
			<th scope="row" width="100px">이름</th>
			<td class="textLeft">${member.name} </td>
		</tr>
		<tr>
	      	<th scope="row">아이디</th>
	      	<td class="textLeft">${member.id }</td>
    	</tr>
    	<tr>
	      	<th scope="row">비밀번호</th>
	      	<td class="textLeft">${member.password }</td>
    	</tr>
    	<tr>
    		<th scope="row">전화번호</th>
	      	<td class="textLeft">${member.phone }</td>
    	</tr>
    	<tr>
    		<th scope="row">이메일</th>
	      	<td class="textLeft">${member.mail }</td>
    	</tr>
    	<tr>
    		<th scope="row">주소</th>
	      	<td class="textLeft">${member.address2 }</td>
    	</tr>
    	<tr>
    		<th scope="row">상세주소</th>
	      	<td class="textLeft">${member.address_detail }</td>
    	</tr>
    	<tr>
    		<th></th>
    		<td align="right">
    			<button type="button" class="btn btn-dark" onclick="location.href='getMemberManage.do?id=${member.id }'">수정</button>
	    		<button type="button" class="btn btn-danger" onclick="location.href='deleteMemberManage.do?id=${member.id }'">탈퇴</button>
	    	</td>
    	</tr>
	</table>
	</div>
	
	<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>