<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="resources/bootstrap.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>희망도서 신청</title>
<style type="text/css">
   @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
   .highlght, h3 {
      font-family: 'Jua', sans-serif;
   }
</style>
</head>
<body style="width:1200px;text-align:center;margin: 0 auto;">
   <header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><img alt="로고" src="resources/logo.png" width="200px" height="100px"></h1>
   </header>
   
   <nav>
      <%@ include file="/WEB-INF/book/banner.jsp" %>
   </nav>
   
   <hr>
   <h3>희망도서 신청</h3>
   <hr>
   
   <div style="text-align: left;padding: 0 40px;">
      <h5>『희망도서 서비스』란?</h5>
      <p style="color: black;">도서관에 원하는 자료가 없을 경우, 이용자가 원하는 자료를 신청할 수 있는 서비스.<br>
      신청내역 및 현황은 <span style="color: blue;">[마이페이지]-[희망도서 신청내역]</span>에서 확인이 가능하며, 각 신청도서는 신청일을 기준으로 <span style="color: red;">30일</span>마다 초기화됩니다.</p>
      <br>
      <i class="bi bi-check" style="color: blue;">이용대상 :</i> <span style="color: black;">도서관 정회원</span><br>
      <i class="bi bi-check" style="color: blue;">신청권수 :</i> <span style="color: black;">30일 기준 1인 3권</span><br>
   </div>
   <br>
   
   <div style="text-align: center;">
   <c:choose>
      <c:when test="${id == null}">
         <div>
               <button type="button" class="btn btn-info" onclick="alert('로그인이 필요한 서비스입니다.');location.href='login.do';">희망도서 서비스 신청하기</button>
            </div>
      </c:when>
      <c:otherwise>
            <hr><br>
            <h5 style="text-align: left; padding: 0 40px;">
            	<i class="bi bi-search"> 
            		<span class="highlght">희망도서 검색</span>&nbsp; 
            		<span style="font-size: 13px">ex. 한강(저자), 채식주의자(제목), 한강 채식주의자(저자+제목)</span>
            	</i>
            </h5>
            <br>
               <label>키워드 <input type="text" id="query"></label>&nbsp;&nbsp;
               <button type="button" class="btn btn-info" id="search">검색</button><br>
      </c:otherwise>
   </c:choose>
   <br>
   </div>
   
   <!-- 검색 결과 출력 -->
   <form name="dataForm">
      <div id="resultDiv" style="width: 1000px;margin: 0 auto;"></div>
   </form>
   <hr>
   
   <!-- footer -->
   <%@ include file="/WEB-INF/book/footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 
    <script>
    var bookArray=[];
    
        $(document).ready(function () {
            var pageNum = 1;
 
            $("#search").click(function () {
                $("#resultDiv").html("");
 
                $.ajax({
                    method: "GET",
                    url: "https://dapi.kakao.com/v3/search/book?target=title",
                    data: { query: $("#query").val(), page: pageNum},
                    headers: {Authorization: "KakaoAK a862c8de35b3177579b7eec0b12c7e53"}
 
                })
                .done(function (msg) {
                    console.log(msg);
                    $("#resultDiv").append("<table class='table' style='width:800px; align:center; margin: 0 auto;'>");
                    for (var i = 0; i < 10; i++){
                       $("#resultDiv").append("<hr><tr>");
                       $("#resultDiv").append("<td style='float:left; display:inline-block;' rowspan='5'><img style='width:150px; height:210px;' src='" + msg.documents[i].thumbnail + "' height='300'></td>");
                       $("#resultDiv").append("<th style='width:70px; height:30px; padding: 0 10px;'>제목</th> <td style='text-align:left; color:black;'>" + msg.documents[i].title + "</td>");
                       $("#resultDiv").append("</tr>");
                       $("#resultDiv").append("<tr> <th style='width:70px; height:30px; padding: 0 10px;'>저자</th> <td style='text-align:left; color:black;'>" + msg.documents[i].authors + "</td> </tr>");
                       $("#resultDiv").append("<tr> <th style='width:70px; height:30px; padding: 0 10px;'>출판사</th> <td style='text-align:left; color:black;'>" + msg.documents[i].publisher + "</td> </tr>");
                       $("#resultDiv").append("<tr> <th style='width:70px; height:120px; padding: 0 10px;'>책소개</th> <td style='text-align:left; color:black;'>" + msg.documents[i].contents + "</td> </tr>");
                       
                       var book={
                    		   title: msg.documents[i].title,
                    		   authors: msg.documents[i].authors,
                    		   publisher: msg.documents[i].publisher,
                               thumbnail: msg.documents[i].thumbnail,
                               isbn: msg.documents[i].isbn
                            };
                       
                       bookArray.push(book);
                       
                       $("#resultDiv").append("<tr> <td colspan='2' style='height:50px'><button class='btn btn-primary' onclick='insertWishBook("+i+");return false;'>신청</button></td> </tr><hr>");
                    }
                    $("#resultDiv").append("</table>");
                    
                });
            })
 
            $(window).scroll(function(){  
 
                if ( Math.ceil($(window).scrollTop()) + $(window).height() >= $(document).height() ){
                    pageNum++;
 
 
                    $.ajax({
                        method: "GET",
                        url: "https://dapi.kakao.com/v3/search/book?target=title",
                        data: { query: $("#query").val(),  page: pageNum},
                        headers: {Authorization: "KakaoAK a862c8de35b3177579b7eec0b12c7e53"}
 
                    })
                    .done(function (msg) {
                        console.log(msg);
                        $("#resultDiv").append("<table class='table' style='width:800px; align:center; margin: 0 auto;'>");
                        for (var i = 0; i < 10; i++){
                           $("#resultDiv").append("<hr><tr>");
                           $("#resultDiv").append("<td style='float:left; display:inline-block;' rowspan='5'><img style='width:150px; height:210px;' src='" + msg.documents[i].thumbnail + "' height='300'></td>");
                           $("#resultDiv").append("<th style='width:70px; height:30px; padding: 0 10px;'>제목</th> <td style='text-align:left; color:black;'>" + msg.documents[i].title + "</td>");
                           $("#resultDiv").append("</tr>");
                           $("#resultDiv").append("<tr> <th style='width:70px; height:30px; padding: 0 10px;'>저자</th> <td style='text-align:left; color:black;'>" + msg.documents[i].authors + "</td> </tr>");
                           $("#resultDiv").append("<tr> <th style='width:70px; height:30px; padding: 0 10px;'>출판사</th> <td style='text-align:left; color:black;'>" + msg.documents[i].publisher + "</td> </tr>");
                           $("#resultDiv").append("<tr> <th style='width:70px; height:120px; padding: 0 10px;'>책소개</th> <td style='text-align:left; color:black;'>" + msg.documents[i].contents + "</td> </tr>");
                           
                           var book={
                        		   title: msg.documents[i].title,
                        		   authors: msg.documents[i].authors,
                        		   publisher: msg.documents[i].publisher,
                                   thumbnail: msg.documents[i].thumbnail,
                                   isbn: msg.documents[i].isbn
                                };
                           
                           bookArray.push(book);
                           
                           $("#resultDiv").append("<tr> <td colspan='2' style='height:50px'><button class='btn btn-primary' onclick='insertWishBook("+i+");return false;'>신청</button></td> </tr><hr>");
                        }
                        $("#resultDiv").append("</table>");
                        
                    });
 
                }
                
            });
        })
 
        function insertWishBook(i){
        	var image = bookArray[i].thumbnail;
        	var title = bookArray[i].title;
           	var writer = bookArray[i].authors;
           	var publisher = bookArray[i].publisher;
           	var isbn = bookArray[i].isbn;
           	var id = '<%=(String)session.getAttribute("id")%>';
           	console.log(title);
           	console.log(writer);
           	console.log(publisher);
           
           	document.dataForm.method="post";
           	document.dataForm.action = "insertWishBook.do?id="+ id +"&isbn="+ isbn +"&image="+ image +"&title="+ title +"&writer="+ writer +"&publisher="+publisher;
           	document.dataForm.submit();
        }
    </script>
</html>