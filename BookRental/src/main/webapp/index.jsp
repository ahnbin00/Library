<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
/>
<link rel="stylesheet" href="resources/bootstrap.css">
<script src="resources/fullcalendar-6.0.1/dist/index.global.js"></script>
<title>LIBRARY</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
body, h1, h3{
font-family: 'Jua', sans-serif;
color: black;
}
ul{
list-style: none;
}
.img{
float: left;
padding: 15px
}
nav{
margin-bottom: 15px;
}
</style>
</head>
<body style="width:1200px;text-align:center;margin: 0 auto;" >
   <header>
      <h1 style="text-align: center; padding-top: 30px; padding-bottom: 30px;"><a href=""><img alt="로고" src="resources/logo.png"  width="200px" height="100px"></a></h1>
   </header>
   <nav>
   <%@ include file="/WEB-INF/book/banner.jsp" %>
   </nav>
   
   <c:if test="${not empty id}"> 
       <span class="badge bg-info">Info</span> ${id }님, 반갑습니다.<br><br>
   </c:if>
   
	<%--    <c:import url="index.do"/> --%>
	<div style="float: left; width: 600px; display:inline-block;">
	   <h3> " 신작 도서 안내 " </h3>
	   <br>
<div class="swiper">
  <div class="swiper-wrapper">
	   <c:forEach var="newBookList" items="${newBookList }" >
    <div class="swiper-slide" style="width: 168.31px;height: 400px;padding: 50px;"><a style="text-decoration: none;"href="getBook.do?isbn=${newBookList.isbn }&state=${newBookList.state}"><img src="${newBookList.image }" width="140" height="200" style="margin-bottom:10px;"><br><p style="color:black;font-family: 'Jua', sans-serif;font-size:18px;">${newBookList.title }</p></a>
    </div>
    </c:forEach>
  </div>
  <div class="swiper-pagination"></div>

  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>

  <div class="swiper-scrollbar"></div>
</div>
</div>

	<div style="float: left; width: 600px; display:inline-block;">
   <h3> " 오시는 길 " </h3>
   <br>
   <div style="width: 500px; height: 400px;text-align:center;margin: 0 auto;" id="map"></div>

   <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb47c5ab2a62810712d005d5bf9eabff"></script>

   <script>
      var mapContainer = document.getElementById('map'),
      mapOption = {
         center : new kakao.maps.LatLng(37.2681,127.0051),
         level : 3
      };
      var map = new kakao.maps.Map(mapContainer, mapOption);
      var markerPosition = new kakao.maps.LatLng(37.2681,127.0051);
      var marker = new kakao.maps.Marker({
         position : markerPosition
      });
      marker.setMap(map);
   </script>
      <br>
      <p style="font-size:18px;">경기도 수원시 팔달구 매산로2가 63-4 다성빌딩 3층&nbsp;
   </p>
   <br>
   </div>
   
   <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
   <script type="text/javascript">
   const swiper = new Swiper('.swiper', {
	   autoplay: {
		    delay: 2000,
		    disableOnInteraction: false,
		  },
	   loop:true,	
	   
	   pagination: {
	     el: '.swiper-pagination',
	   },

	   navigation: {
	     nextEl: '.swiper-button-next',
	     prevEl: '.swiper-button-prev',
	   },

	 });
   </script>
   <script>
    	document.addEventListener('DOMContentLoaded', function() {
        	var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                // Tool Bar 목록 document : https://fullcalendar.io/docs/toolbar
                headerToolbar: {
                    left: 'prevYear,prev,next,nextYear today',
                    center: 'title',
                    right: 'dayGridMonth,dayGridWeek,dayGridDay'
                },

                selectable: true,
                selectMirror: true,

                navLinks: true, // can click day/week names to navigate views
                editable: true,
                // Create new event
                select: function (arg) {
                    Swal.fire({
                        html: "<div class='mb-7'>Create new event?</div><div class='fw-bold mb-5'>Event Name:</div><input type='text' class='form-control' name='event_name' />",
                        icon: "info",
                        showCancelButton: true,
                        buttonsStyling: false,
                        confirmButtonText: "Yes, create it!",
                        cancelButtonText: "No, return",
                        customClass: {
                            confirmButton: "btn btn-primary",
                            cancelButton: "btn btn-active-light"
                        }
                    }).then(function (result) {
                        if (result.value) {
                            var title = document.querySelector("input[name=;event_name']").value;
                            if (title) {
                                calendar.addEvent({
                                    title: title,
                                    start: arg.start,
                                    end: arg.end,
                                    allDay: arg.allDay
                                })
                            }
                            calendar.unselect()
                        } else if (result.dismiss === "cancel") {
                            Swal.fire({
                                text: "Event creation was declined!.",
                                icon: "error",
                                buttonsStyling: false,
                                confirmButtonText: "Ok, got it!",
                                customClass: {
                                    confirmButton: "btn btn-primary",
                                }
                            });
                        }
                    });
                },

                // Delete event
                eventClick: function (arg) {
                    Swal.fire({
                        text: "Are you sure you want to delete this event?",
                        icon: "warning",
                        showCancelButton: true,
                        buttonsStyling: false,
                        confirmButtonText: "Yes, delete it!",
                        cancelButtonText: "No, return",
                        customClass: {
                            confirmButton: "btn btn-primary",
                            cancelButton: "btn btn-active-light"
                        }
                    }).then(function (result) {
                        if (result.value) {
                            arg.event.remove()
                        } else if (result.dismiss === "cancel") {
                            Swal.fire({
                                text: "Event was not deleted!.",
                                icon: "error",
                                buttonsStyling: false,
                                confirmButtonText: "Ok, got it!",
                                customClass: {
                                    confirmButton: "btn btn-primary",
                                }
                            });
                        }
                    });
                },
                dayMaxEvents: true, // allow "more" link when too many events
                // 이벤트 객체 필드 document : https://fullcalendar.io/docs/event-object
                events: [
                    {
                    title: 'All Day Event',
                    start: '2022-12-01'
                    },
                    {
                    title: 'Long Event',
                    start: '2022-12-07',
                    end: '2022-12-10'
                    },
                    {
                    groupId: 999,
                    title: 'Repeating Event',
                    start: '2022-12-09T16:00:00'
                    },
                    {
                    groupId: 999,
                    title: 'Repeating Event',
                    start: '2022-07-16T16:00:00'
                    }
                ]
            });

            calendar.render();
        });

    </script>
	
   <div style="float: left; width: 1200px; display:inline-block;">
   <h3> " 도서관 휴관일 " </h3>
   <br>
   <div id='calendar'></div>
   </div>
   <br><br>
   <div style="float: left; width: 1200px; display:inline-block;">
   <%@ include file="/WEB-INF/book/footer.jsp" %>
   </div>
	
</body>
</html>      