<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="resources/bootstrap.css">
<title>회원가입</title>

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
<div align="center">
   <hr>
   <h3>회원가입</h3>
   <form name="join">
   <table class="table table-hover" style="width:600px;">
      <tr>
         <th scope="row" width="100px">ID</th>
         <td width="300px"><input type="text" name="id" class="form-control">  </td>
         <td><button onclick="idCheck();return false;" style="font-family: 'Jua', sans-serif;" class="btn btn-primary">ID중복확인</button></td>
      </tr>
      <tr>
            <th scope="row">PW</th>
            <td><input type="password" name="password" class="form-control"></td>
       </tr>
       <tr>
            <th scope="row">이름</th>
            <td><input type="text" name="name" class="form-control"></td>
       </tr>
       <tr>
          <th scope="row">전화번호</th>
            <td><input type="text" name="phone" class="form-control"></td>
       </tr>
       <tr>
          <th scope="row">E-MAIL</th>
            <td><input type="text" name="mail" class="form-control"></td>
       </tr>
       <tr>
          <th scope="row">주소</th>
            <td><input type="text" id="address_kakao" name="address2" class="form-control" value="주소찾기를 눌러주세요." readonly > </td>
            <td><input type="button" id="address" value="주소찾기" class="btn btn-primary" style="font-family: 'Jua', sans-serif;"></td>
       </tr>
       <tr>
          <th scope="row">상세주소</th>
            <td><input type="text" name="address_detail" class="form-control"/></td>
       </tr>
   </table>
   <br><button class="btn btn-primary" style="font-family: 'Jua', sans-serif;" onclick="checkJoin();return false;">가입하기</button>
   </form>
   </div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
function checkJoin() {
   var id=document.join.id.value;
   var password=document.join.password.value;
   var name=document.join.name.value;
   var phone=document.join.phone.value;
   var mail=document.join.mail.value;
   var address=document.join.address2.value;
   var address_detail=document.join.address_detail.value;
   
   if(id=="" || id.length==0){
      alert('ID를 입력하세요.');
      document.join.id.focus();
   }else if(password=="" || password.length==0){
      alert('비밀번호를 입력하세요.');
      document.join.password.focus();
   }else if(name=="" || name.length==0){
      alert('이름을 입력하세요.');
      document.join.name.focus();
   }else if(phone=="" || phone.length==0){
      alert('전화번호를 입력하세요.');
      document.join.phone.focus();
   }else if(mail=="" || mail.length==0){
      alert('이메일을 입력하세요.');
      document.join.mail.focus();
   }else if(address=="" || address.length==0){
      alert('주소를 입력하세요.');
      document.join.address2.focus();
   }else if(address_detail=="" || address_detail.length==0){
      alert('상세주소를 입력하세요.');
       document.join.address_detail.focus();
    }else{
      document.join.action="join.do";
      document.join.method="post";
      document.join.submit();
   }
}

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


function idCheck(){
   var $id=document.join.id.value;
   
   if($id=="" || $id.length==0){
      alert('id를 입력하세요.');
      document.join.id.focus();
      return;
   }else{
      $.ajax({
         url:"http://localhost:8081/biz/idCheckCtrl.do",
         type:"post",
         data:{id:$id},
         dataType:"text",
         success(data){
            if(data=="USE_ID"){
               alert($id+'는 사용할 수 있습니다.');
               $("#id").val($id);
            }else if(data=="NOT_USE_ID"){
               alert($id+'는 사용할 수 없습니다.');
               $("#id").val("");
               // val메소드로 처리할 때는 실시간 값을 변경해서 처리할 경우 사용.
               // attr은 이미 객체가 생성될 때 설정된 값을 attr속성을 넣을 경우
               // 동적으로 변하지 않는다.
               // 결론 : 동적으로 HTML요소 변경시 val메소드 사용
            }
         },
         error:function(){
            alert('전송 실패');
         }
      });
   }
}
</script>
<hr>
<%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
</html>