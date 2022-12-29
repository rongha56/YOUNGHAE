<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문게시판 - 병원정보보기</title>

	<jsp:include page="../common/topmenubar.jsp" flush="true"/>

    <!--내가만든 css-->
    <link rel="stylesheet" href="resources/css/bn_style.css" type="text/css">
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8b90a6a9e244fbb09fb6577c048f86d0&libraries=services"></script>
	
	
</head>
<body>
    
    
    <div class="container">
        <div class="bn_index mt-5">
            <ul>
                <li>Q&A</li>
                <li> / </li>
                <li><a href="#">전문가찾기</a></li>
                <li> / </li>
                <li><a href="#">상세프로필조회</a></li>
                <li> <b>/</b> </li>
                <li><a href="#">병원정보보기</a></li>
            </ul>
        </div>
        ${expert }
        <!-- Contact Section Begin -->
        <section class="contact spad">
            <div class="section-title" style="padding: 30px 0 10px 0;">
                <h2>${expert.expertDept} </h2>
                <hr style="width:50vw; border:2px solid #24E082; background-color: #24E082;">
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_phone"></span>
                        <h4>Phone</h4>
                        <p>+01-3-8888-6868</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_pin_alt"></span>
                        <h4>주소</h4>
                        <p>(${expert.expertPostAdd}) ${expert.expertAddress} ${expert.expertAddDetail}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_clock_alt"></span>
                        <h4>Open time</h4>
                        <p>10:00 am to 23:00 pm</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_mail_alt"></span>
                        <h4>홈페이지</h4>
                        <p>${expert.expertHomepage } </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact Section End -->
         
        <div id="map" style="width:500px;height:400px;"></div>
        
        <div class="row">
        <!-- Map Begin -->
	        <div class="map col">
	            <iframe
	                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d49116.39176087041!2d-86.41867791216099!3d39.69977417971648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x886ca48c841038a1%3A0x70cfba96bf847f0!2sPlainfield%2C%20IN%2C%20USA!5e0!3m2!1sen!2sbd!4v1586106673811!5m2!1sen!2sbd"
	                height="500" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
	            <div class="map-inside">
	                <i class="icon_pin"></i>
	                <div class="inside-widget">
	                    <h4>New York</h4>
	                    <ul>
	                        <li>Phone: +12-345-6789</li>
	                        <li>Add: 16 Creek Ave. Farmingdale, NY</li>
	                    </ul>
	                </div>
	            </div>
	        </div>
	        <!-- Map End -->
	
		    <!-- Contact Form Begin -->
		    <div class="contact-form spad col-lg-6">
		        <div class="container">
		            <div class="row">
		                <div class="col-lg-12">
		                    <div class="contact__form__title">
		                        <h2>Leave Message</h2>
		                    </div>
		                </div>
		            </div>
		            <form action="#">
		                <div class="row">
		                    <div class="col-lg-6 col-md-6">
		                        <input type="text" placeholder="Your name">
		                    </div>
		                    <div class="col-lg-6 col-md-6">
		                        <input type="text" placeholder="Your Email">
		                    </div>
		                    <div class="col-lg-12 text-center">
		                        <textarea placeholder="Your message"></textarea>
		                        <button type="submit" class="site-btn">SEND MESSAGE</button>
		                    </div>
		                </div>
		            </form>
		        </div>
		    </div>
		    <!-- Contact Form End -->
	    </div>
	</div>
${expert}
<script>
var addressKey = "${expert.expertAddress}";

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//주소로 좌표를 검색합니다
geocoder.addressSearch(addressKey, function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });

    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
});    
</script>

</body>
</html>
