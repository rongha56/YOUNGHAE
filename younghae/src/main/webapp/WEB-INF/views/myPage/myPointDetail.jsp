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
    <title>나의포인트상세보기</title>

    <style>
        .bn_index ul li {
            list-style: none;
            position: relative;
            display: inline-block;
        }

        .bn_index a {
            color: black;
        }

        .bn_index li:last-child a {
            font-weight: 800;
            color: #FD9F28;
        }
        .dataTables_paginate {
  width: 100%;
  text-align: center;
}
    </style>
	<jsp:include page="/WEB-INF/views/common/topmenubar.jsp"></jsp:include>

    <!-- dataTables GRID CDN -->
    <!-- css files for DataTables -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap.min.css"/>
   

    <!-- javascript files for DataTables & Plugins -->
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
</head>

<body>
    <div class="bn_index mt-5 col-lg-3 d-flex justify-content-end">
        <ul>
            <li><a href="#" onclick="location.href='${contextPath}/myPage.my'">마이페이지</a></li>
            <li>/</li>
            <li><a href="#" onclick="location.href='${contextPath}/myPointView.my'">내 포인트 관리</a></li>
            <li>/</li>
            <li><a href="#">상세보기</a></li>
        </ul>
    </div>
    <div class="container">
        <div class="section-title" style="padding: 30px 0 10px 0; margin-bottom: 0px;">
            <h4>내 포인트 관리</h4>
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
                                <table class="table" style="text-align: center;" id="dataTable">
                                    <thead>
                                        <tr class="text-teal-100">
                                            <th scope="col" class="col-lg-2">적립날짜</th>
                                            <th scope="col" class="col-lg-4">적립내용</th>
                                            <th scope="col" class="col-lg-2">관련주문번호</th>
                                            <th scope="col" class="col-lg-2">적립액</th>
                                            <th scope="col" class="col-lg-2">보유금액</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="s" items="${PointList}" varStatus="status">
                                            <tr>
                                                <td>${s.pointDate}</td>
                                                <td>${s.pointContent}</td>
                                                <td>${s.pointContent}</td>
                                                <td>${s.pointAmount}</td>
                                                <td>${s.pointTotal}</td>
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
    <script>
    var lang_kor = {
            decimal : "",
            emptyTable : "데이터가 없습니다.",
            info : "_START_ - _END_ (총 _TOTAL_ 명)",
            infoEmpty : "0명",
            infoFiltered : "(전체 _MAX_ 명 중 검색결과)",
            infoPostFix : "",
            thousands : ",",
            lengthMenu : "_MENU_ 개씩 보기",
            loadingRecords : "로딩중...",
            processing : "처리중...",
            search : "검색 : ",
            zeroRecords : "검색된 데이터가 없습니다.",
            paginate : {
                first : "첫 페이지",
                last : "마지막 페이지",
                next : "다음",
                previous : "이전"
            },
            aria : {
                sortAscending : " :  오름차순 정렬",
                sortDescending : " :  내림차순 정렬"
            }
        };
    
    
    $(document).ready(function() {
        $('#dataTable').DataTable({
        	searching: false,
        	ordering: true,
        	pageLength: 10,
        	paging: true, //페이징처리
            language : lang_kor, //or lang_eng
            info :false
    });	
    });
    </script>
</body>

</html>