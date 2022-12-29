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
	<h3>회원 정보 상세페이지</h3>
	<form action="updateMember.do" method="post">
	<table class="table table-hover" style="width:1000px;">
		<tr class="table-primary">
			<th scope="row" width="100px">이름</th>
			<td><input type="text" class="form-control" value="${member.name }" name="name"></td>
		</tr>
		<tr class="table-primary">
	      	<th scope="row">아이디</th>
	      	<td><input type="hidden" name="id" value="${member.id }">${member.id }</td>
    	</tr>
    	<tr class="table-primary">
	      	<th scope="row">비밀번호</th>
	      	<td><input type="text" class="form-control" value="${member.password }" name="password"></td>
    	</tr>
    	<tr class="table-primary">
    		<th scope="row">전화번호</th>
	      	<td><input type="text" class="form-control" value="${member.phone }" name="phone"></td>
    	</tr>
    	<tr class="table-primary">
    		<th scope="row">이메일</th>
	      	<td><input type="text" class="form-control" value="${member.mail }" name="mail"></td>
    	</tr>
    	<tr class="table-primary">
    		<th scope="row">주소</th>
	      	<td><input type="text" id="address_kakao" name="address" value="${member.address }"> <input type="button" id="address" value="주소찾기" class="btn btn-dark"></td>
    	</tr>
    	<tr class="table-primary">
    		<th scope="row">상세주소</th>
	      	<td><input type="text" name="address_detail" value="${member.address_detail }"/></td>
    	</tr>
    	<tr>
    		<th></th>
    		<td align="right">
    			<input type="submit" class="btn btn-info" value="수정">
    		</td>
    	</tr>
	</table>
	</form>
	</div>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		window.onload = function(){
		    document.getElementById("address").addEventListener("click", function(){ //주소입력칸을 클릭하면
		        //카카오 지도 발생
		        new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		                document.getElementById("address_kakao").value = data.address; // 주소 넣기
		                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
		            }
		        }).open();
		    });
		}
	</script>

	<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>