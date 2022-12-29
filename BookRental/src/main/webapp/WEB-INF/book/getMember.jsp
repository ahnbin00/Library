<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="resources/bootstrap.css">
<title>회원정보수정</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
body, h1, h3{
font-family: 'Jua', sans-serif;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body style="width:1200px;text-align:center;margin: 0 auto;" >
	<header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><a href="index.do"><img alt="로고" src="resources/logo.png"  width="200px" height="100px"></a></h1>
	</header>
	<nav>
	<%@ include file="/WEB-INF/book/banner.jsp" %>
	</nav>
	<br>
<h3>회원정보수정</h3>
<div>
<form action="getMember.do" method="post">
<div class="form-group" style="margin: auto auto;width: 600px" align="center">
<table >
<tr>
<th width="80px">ID </th>
<td width="300px"> ${vo.id } <input type="hidden" name="id" value="${vo.id }"> </td>
</tr>
<tr>
<th>PW </th>
<td > <input type="password" name="password" class="form-control" value="${vo.password }"> </td>
</tr>
<tr>
<th>이름 </th>
<td> <input type="text" name="name" class="form-control" value="${vo.name }"> </td>
</tr>
<tr>
<th>전화번호 </th>
<td> <input type="text" name="phone" class="form-control" value="${vo.phone }"> </td>
</tr>
<tr>
<th>E-MAIL </th>
<td> <input type="text" name="mail" class="form-control" value="${vo.mail }"> </td>
</tr>
<tr>
<th>주소 </th>
<td> <input type="text" id="address_kakao" name="address2" class="form-control" value="${vo.address2 }" readonly> </td>
<td> <input type="button" id="address" class="btn btn-primary" style="font-family: 'Jua', sans-serif;" value="주소찾기"> </td>
</tr>
<tr>
<th>상세주소 </th>
<td> <input type="text" name="address_detail" class="form-control" value="${vo.address_detail }"/> </td>
</tr>
</table>
</div>
<br><input type="submit" class="btn btn-primary" align="center" style="font-family: 'Jua', sans-serif;" value="수정하기">
</form>
</div>

<br>
<%@ include file="/WEB-INF/book/footer.jsp" %>

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

</body>
</html>