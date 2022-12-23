<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- http://localhost:8081/BoardWeb/login.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="resources/bootstrap.css">
<title></title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
body, h1, h3{
font-family: 'Jua', sans-serif;
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
	<div align="center" style="margin: auto auto;">
		<hr>
		<form name="login">
			<div class="form-group" style="width: 500px">
				<label>ID
				<input type="text" class="form-control" placeholder="id" name="id"  value="${member.id }"></label><br>
				<label>PW
				<input type="password" class="form-control" placeholder="Password" name="password" value="${ member.password}"></label><br><br>
				<button class="btn btn-primary" style="font-family: 'Jua', sans-serif;" onclick="checkLogin();return false;">로그인</button>
				<button type="button" class="btn btn-primary" onclick="location.href='join.do'" style="font-family: 'Jua', sans-serif;">회원가입</button><br><br>
			</div>
		</form>
		<hr>
	</div>
<script>
	function checkLogin() {
		var id=document.login.id.value;
		var password=document.login.password.value;
		
		if(id==""||id.length==0){
			alert('ID를 입력하세요.');
			document.login.id.focus();
		}else if(password==""||password.length==0){
			alert('비밀번호를 입력하세요.');
			document.login.password.focus();
		}else{
			document.login.action="login.do";
			document.login.method="post";
			document.login.submit();
		}
	}
</script>	
<%@ include file="/WEB-INF/book/footer.jsp" %> 
</body>
</html>