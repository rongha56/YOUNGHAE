<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="resources/img/younghae_icon.png"/>
    <title>관리 | 멤버관리</title>
    <jsp:include page="/WEB-INF/views/common/topmenubar.jsp"></jsp:include>
    <!-- dataTables GRID CDN -->
    <!-- css files for DataTables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap.min.css" />


    <!-- javascript files for DataTables & Plugins -->
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
</head>

<body>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-2" style="margin-left:-100px; margin-top:50px;">
                    <div class="hero__categories">
                        <ul>
                            <li><a href="#" onclick="location.href='${contextPath}/insertPage.su'">상품관리</a></li>
                            <li><a href="#" onclick="location.href='${contextPath}/adminMember.ad'">회원관리</a></li>
                            <li><a href="#" onclick="location.href='${contextPath}/adminCoupon.ad'">쿠폰관리</a></li>
                            <li><a href="#" onclick="location.href='${contextPath}/AdminReview.su'">리뷰관리</a></li>
                            <li><a href="#" onclick="location.href='${contextPath}/AdminStoryList.st'">이야기 관리</a></li>
                            <li><a href="#" onclick="location.href='${contextPath}/AdminwriteStory.st'">이야기 작성</a></li>
                            <li><a href="#" onclick="location.href='${contextPath}/adminDeclare.ad'">신고관리</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-10">
     				 <div class="container">
        <div class="section-title" style="padding: 30px 0 10px 0; margin-bottom: 0px;">
            <h4>회원 관리</h4>
            <div style="display: block;">
                <hr style="width: 50vw; background-color: #24E082;">
            </div>
        </div>
        <div class="col-lg-12">
            <div class="product__details__tab" style="padding-top: 0px;">
                <div class="tab-content">
                    <div class="tab-pane active" id="tabs" role="tabpanel">
                        <div class="product__details__tab__desc" style="padding-top: 0px;">
                            <div class="bn_boardlist mt-2">
                                <table class="table" id="dataTable">
                                    <thead>
                                        <tr class="text-teal-100">
                                        	<th scope="col" class="col-lg-1">번호</th>
                                            <th scope="col" class="col-lg-1">회원ID</th>
                                            <th scope="col" class="col-lg-2">회원구분</th>
                                            <th scope="col" class="col-lg-2">이메일</th>
                                            <th scope="col" class="col-lg-2">가입날짜</th>
                                            <th scope="col" class="col-lg-2">상태</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbody">
                                        <c:forEach var="i" items="${ memberList }">
                                                <tr>
                                                	<td>${ i.userNum }</td>
                                                    <td>${ i.userId }</td>
                                                    <c:if test="${i.userCNumber eq 1 }">	
                                                    <td>일반회원</td>
                                                    </c:if>
                                                    <c:if test="${i.userCNumber eq 2 }">
                                                    <td>전문회원</td>
                                                    </c:if>
                                                    <c:if test="${i.userCNumber eq 3 }">
                                                    <td>관리자</td>
                                                    </c:if>
                                                    <td>${ i.email }</td>
                                                    <td>${ i.userEnrollDate }</td>
                                                    <c:if test="${ i.userStatus eq 'Y'}">
                                                    <td>
                                                    <button class="otherDetail">정보수정</button>
                                                    <button class="deleteMember">탈퇴</button>           
                                                    </td>
                                                    </c:if>
                                                    <c:if test="${ i.userStatus eq 'D'}">
                                                    <td><button class="checkExpert">가입승인</button></td>
                                                    </c:if>
                                                    <c:if test="${ i.userStatus eq 'N'}">
                                                    <td><button class="returnMember">복구</button></td>
                                                    </c:if>                                                
                                                </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    </div>
    
    </section>
    <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
    <script>
		
        var lang_kor = {
            decimal: "",
            emptyTable: "데이터가 없습니다.",
            info: "_START_ - _END_ (총 _TOTAL_ 명)",
            infoEmpty: "0명",
            infoFiltered: "(전체 _MAX_ 명 중 검색결과)",
            infoPostFix: "",
            thousands: ",",
            lengthMenu: "_MENU_ 개씩 보기",
            loadingRecords: "로딩중...",
            processing: "처리중...",
            search: "검색 : ",
            zeroRecords: "검색된 데이터가 없습니다.",
            paginate: {
                first: "첫 페이지",
                last: "마지막 페이지",
                next: "다음",
                previous: "이전"
            },
            aria: {
                sortAscending: " :  오름차순 정렬",
                sortDescending: " :  내림차순 정렬"
            }
        };
        
        


        $(document).ready(function() {
            $('#dataTable').DataTable({
                searching: false,
                ordering: true,
                pageLength: 10,
                paging: true, //페이징처리
                language: lang_kor, //or lang_eng
                info: false
            });
        });

        $(".otherDetail").click(function(){
            var table = $('#dataTable').DataTable();
            var no = null;	
        		var str = ""
        		var tdArr = new Array();	// 배열 선언
        		var checkBtn = $(this);
        		
        		// checkBtn.parent() : checkBtn의 부모는 <td>이다.
        		// checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
        		var tr = checkBtn.parent().parent();
        		var td = tr.children();
        		
        		no = td.eq(0).text();
        		
        		location.href = '${contextPath}/otherDetail.ad?id='+no;
            
		});
        
        $(".deleteMember").click(function(){
            var table = $('#dataTable').DataTable();
            var no = null;	
        		var str = ""
        		var tdArr = new Array();	// 배열 선언
        		var checkBtn = $(this);
        		
        		// checkBtn.parent() : checkBtn의 부모는 <td>이다.
        		// checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
        		var tr = checkBtn.parent().parent();
        		var td = tr.children();
        		
        		no = td.eq(0).text();
        		
        		if(confirm('정말로 탈퇴시키겠습니까?')){
    				location.href= '${contextPath}/deleteMember.ad?id='+no;
    			}
        		           
		});
        
        $(".returnMember").click(function(){
            var table = $('#dataTable').DataTable();
            var no = null;	
        		var str = ""
        		var tdArr = new Array();	// 배열 선언
        		var checkBtn = $(this);
        		
        		// checkBtn.parent() : checkBtn의 부모는 <td>이다.
        		// checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
        		var tr = checkBtn.parent().parent();
        		var td = tr.children();
        		
        		no = td.eq(0).text();
        		
        		if(confirm('정말로 복구시키겠습니까?')){
    				location.href= '${contextPath}/updateMember.ad?id='+no;
    			}
        		           
		});
        
        $(".checkExpert").click(function(){
            var table = $('#dataTable').DataTable();
            var no = null;	
        	var str = ""
        	var tdArr = new Array();	// 배열 선언
        	var checkBtn = $(this);
        		
        		// checkBtn.parent() : checkBtn의 부모는 <td>이다.
        		// checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
        	var tr = checkBtn.parent().parent();
        	var td = tr.children();
        		
        	no = td.eq(0).text();
        		
        	location.href = '${contextPath}/confirmExpert.ad?id='+no;
            
		});
    </script>
</body>

</html>