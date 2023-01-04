<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 리뷰 관리</title>

    <style>
        /*목차*/
        .bn_index ul li{
            list-style: none;
            position: relative;
            display: inline-block;
        }
        
        .bn_index a {
            color: black;
        }
        
        .bn_index li:last-child a{
            font-weight: 800;
            color : #FD9F28;
        }

        th, td{
            text-align: center;
        }
    </style>
</head>
<body>
    
	<jsp:include page="/WEB-INF/views/common/topmenubar.jsp"></jsp:include>    
        <div class="container">
            <div class="bn_index mt-5">
                <ul>
                    <li>관리자 페이지</li>
                    <li> <b>/</b> </li>
                    <li><a href="#">리뷰 관리</a></li>
                </ul>
            </div>
            <br>
            <div class="reviewTable">
                <label for="" style="color: #24E082; font-weight: 700; font-size: 23px;">리뷰 관리</label>
            </div>
            <div class="bn_boardlist mt-2">
                <div class="col-lg-12" style="border: 1px solid #24E082; height: 90px; padding: 2%;">
                    <label style="font-size: 20px; font-weight: 600;">총 리뷰 수</label>
                        <input type="text" value="${ reviewCount }" id="listCount"
                        style="height: 40px; width: 150px; text-align:center; font-size: 30px;
                        border: none; padding-top: 1%;" readonly>
                    <label style="font-size: 20px; font-weight: 600;">개</label>
                </div>
                <br>
               	<input type="hidden" id="check" name="check" value="">
                <table class="table">
                    <thead>
                        <tr class="text-teal-100">
                            <td scope="col" colspan="12">
                                <select id="selectBtn" style="width: 150px;" onchange="selectedopntion();">
                                    <option value="productNumber">제품 번호 순</option>
                                    <option value="productName">제품 이름 순</option>
                                    <option value="productGood">추천 순</option>
                                </select>
                            </td>
                        </tr>
                        <tr class="text-teal-100" style="text-align: center;">
                            <th scope="col" class="col-lg-1">제품 번호</th>
                            <th scope="col" class="col-lg-1">제품 이름</th>
                            <th scope="col" class="col-lg-2">리뷰 내용</th>
                            <th scope="col" class="col-lg-1">작성자</th>
                            <th scope="col" class="col-lg-1">작성일</th>
                            <th scope="col" class="col-lg-1">추천수</th>
                            <th scope="col" class="col-lg-1">상태</th>
                        </tr>
                    </thead>
                    <tbody id="selectTbody">
	                    <c:forEach items="${ review }" var="r">
	                    	<tr>
	                            <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${ r.proNum }</td>
	                            <td>${ r.rvContent }</td>
	                            <td>${ r.member.userNickname }</td>
	                            <td>${ r.rvMOdifyDate }</td>
	                            <td>
	                                <c:if test="${ r.rvStatus eq 'N' }">
	                                    <i class="bi bi-x-circle" style="color: red;"></i>
	                                </c:if>
	                                <c:if test="${ r.rvStatus ne 'N'}">
	                                    <i class="bi bi-circle" style="color: #24E082;"></i>
	                                </c:if>
	                            </td>
	                        </tr>
	                    </c:forEach>
                    </tbody>
                </table>
            </div>
            
            
            <!-- 페이징 -->
			<div class="col-lg-12 text-center">
					<div class="pagination-wrapper clearfix" stlye="text-align: center;">
						<ul class="pagination float--right" id="pages"></ul>
					</div>
			</div>
			<br><br>
        </div>


        <!-- Footer Section Begin -->
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="./index.html"><img src="img/logo.png" alt=""></a>
                            </div>
                            <ul>
                                <li>Address: 60-49 Road 11378 New York</li>
                                <li>Phone: +65 11.188.888</li>
                                <li>Email: hello@colorlib.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                        <div class="footer__widget">
                            <h6>Useful Links</h6>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">About Our Shop</a></li>
                                <li><a href="#">Secure Shopping</a></li>
                                <li><a href="#">Delivery infomation</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Our Sitemap</a></li>
                            </ul>
                            <ul>
                                <li><a href="#">Who We Are</a></li>
                                <li><a href="#">Our Services</a></li>
                                <li><a href="#">Projects</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">Innovation</a></li>
                                <li><a href="#">Testimonials</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="footer__widget">
                            <h6>Join Our Newsletter Now</h6>
                            <p>Get E-mail updates about our latest shop and special offers.</p>
                            <form action="#">
                                <input type="text" placeholder="Enter your mail">
                                <button type="submit" class="site-btn">Subscribe</button>
                            </form>
                            <div class="footer__widget__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer__copyright">
                            <div class="footer__copyright__text">
                                <p>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;
                                    <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                                    template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
                                        href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>
                            </div>
                            <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <script>
            window.onload=()=>{
            	selectedopntion();
            	
                function reviewLisg(){
                    // reviewList 출력
                    const tbody = document.getElementById('selectTbody');
                    console.log(tbody);
                    const tds = tbody.querySelectorAll('td');
                    console.log(tds);
                    // for(const td of tds){
                    //     td.addEventListener('click', function() {
                    //         const trTds = this.parentElement.querySelectorAll('td');
                    //         const reviewNum = trTds[0].innerText;
                    //         const reviewWriter = trTds[2].innerText;
    
                    //         location.href  = '${contextPath}/selectBoard.bo?reviewNum='+ reviewNum+ "&reviewWriter=" + reviewWriter + "&page=" + ${pi.currentPage};
                    //     });
                    // }
                }
                
                	
            }

// 			$(document).on("focusout", "#selectBtn", function(){
// // 				console.log(this.value);
// 				location.href="${ contextPath }/adminReviewList.su?check="+this.value;
// 			});

            function selectedopntion(){
                // 카테고리에 따라 정렬
//                 const span = document.getElementsByClassName('nice-select')[1].firstChild;
//                 console.log(span.innerText);

				const selectValue = document.getElementById('selectBtn').value;
				console.log(selectValue);
				
				if(selectValue == "productName"){
					console.log("제품 이름 순");
				}else if(selectValue == "productNumber"){
					console.log("제품 번호 순");
				}else{
					console.log("추천 순");
				}
				
				$.ajax({
					url: '${contextPath}/adminReviewList.su',
					data:{check: selectValue},
					success:(data)=>{
						const tbody = document.querySelector('tbody');
						console.log(data.r);
						tbody.innerHTML  = '';
						
						const listCount = document.getElementById('listCount');
						listCount.value = data.listCount;
						
						for(const d of data.r){
							const tr = document.createElement('tr');
							
							const pronum = document.createElement('td');
							pronum.setAttribute("style", "overflow:hidden;white-space:nowrap;text-overflow:ellipsis;");
							pronum.innerText = d.proNum;
							
							const proname = document.createElement('td');
							proname.innerText = d.supplement.proName;
							
							const content = document.createElement('td');
							content.innerText = d.rvContent;
							
							const nickname = document.createElement('td');
							nickname.innerText = d.member.userNickname;
							
							const modifyDate = document.createElement('td');
							
							var date = new Date(d.strMOdifyDate);
// 							var ymd  = date.getFullYear() + '-' + (date.getMonth()+1) + '-' + date.getDate();
							modifyDate.innerText = d.strMOdifyDate;
							
							const good = document.createElement('td');
							good.innerText = d.rvRecommend;
							
							const status = document.createElement('td');
							
							if(d.rvStatus ==  'Y'){
								status.innerHTML = '<i class="bi bi-x-circle" style="color: red;"></i>';
							}else{
								status.innerHTML = '<i class="bi bi-circle" style="color: #24E082;"></i>';
							}
							
							tr.append(pronum);
							tr.append(proname);
							tr.append(content);
							tr.append(nickname);
							tr.append(modifyDate);
							tr.append(good);
							tr.append(status);
							
							tbody.append(tr);
						}
						
						const totalData = data.listCount;
						
						paging();
						
			            function paging(totalData, currentPage){
			            	const dataPerPage = 10;
			            	const pageCount = 5;
			            	
			            	const totalPage = Math.ceil(data.listCount/dataPerPage);
			            	const pageGroup = Math.ceil(data.pi.currentPage/pageCount);
			            	
// 			            	console.log("dataPerPage : " + dataPerPage);
// 			            	console.log("pageGroup : " + pageGroup);
			            	
			            	var last = pageGroup * pageCount;
			            	
			            	if(last > totalPage){
			            		last = totalPage;
			            	}
			            	
// 			            	console.log("last : "+ last);
			            	
			            	let first = last - (pageCount - 1);
			            	
			            	
			            	const prev = data.pi.startPage - 1;
			            	const next = data.pi.endPage + 1;
			            	
// 			            	console.log("prev : " + prev);
// 			            	console.log("next : " + next);
			            	
			            	
			            	if(totalPage < 1){
			            		first = last;
			            	}
			            	
// 			            	console.log("first : " + first);
			            	
			            	const pages = $('#pages');
			            	pages.empty();
			            	
			            	// < 그려줌
			            	if (first > 5) { 
			            		pages.append('<li class="pagination-item">' + '<a onclick="GetTarget('+ (prev) + ');" style="margin-left: 2px">prev</a></li>');
			            	} 
			            	// 그려주는 페이지
			            	for(var j = first; j <= last; j++){
			            		if (currentPage === (j)){
			            			pages.append('<li class="pagination-item">' + '<a class="active" onclick="GetTarget(' + (j) + ');" style="margin-left: 2px">' + (j) + '</a></li>');
			            		}else if(j > 0){
		            				pages.append('<li class="pagination-item">' + '<a onclick="GetTarget(' + (j) + ');" style="margin-left: 2px">' + (j) + '</a></li>'); 
			            		}
			            	}
			            	
			            	// > 그려줌
		            		if (next > 5 && next < totalPage){
        						pages.append('<li class="pagination-item">' + '<a onclick="GetTarget(' + (next) + ');" style="margin-left: 2px">next</a></li>');
		            		}
			            }
					},
					error:(data)=>{
						console.log(data);
					}
				});
            }
            
            function GetTarget(currentPage){
    			
    			var goNum = arguments[0];
            	console.log(goNum);
            	
            	const selectValue = document.getElementById('selectBtn').value;
            	
            	$.ajax({
            		url: '${contextPath}/adminReviewList.su',
					data:{page: arguments[0], check: selectValue},
					success:(data)=>{
						const tbody = document.querySelector('tbody');
						console.log(data.r);
						tbody.innerHTML  = '';
						
						const listCount = document.getElementById('listCount');
						listCount.value = data.listCount;
						
						for(const d of data.r){
							const tr = document.createElement('tr');
							
							const pronum = document.createElement('td');
							pronum.setAttribute("style", "overflow:hidden;white-space:nowrap;text-overflow:ellipsis;");
							pronum.innerText = d.proNum;
							
							const proname = document.createElement('td');
							proname.innerText = d.supplement.proName;
							
							const content = document.createElement('td');
							content.innerText = d.rvContent;
							
							const nickname = document.createElement('td');
							nickname.innerText = d.member.userNickname;
							
							const modifyDate = document.createElement('td');
							
							var date = new Date(d.strMOdifyDate);
// 							var ymd  = date.getFullYear() + '-' + (date.getMonth()+1) + '-' + date.getDate();
							modifyDate.innerText = d.strMOdifyDate;
							
							const good = document.createElement('td');
							good.innerText = d.rvRecommend;
							
							const status = document.createElement('td');
							
							if(d.rvStatus ==  'Y'){
								status.innerHTML = '<i class="bi bi-x-circle" style="color: red;"></i>';
							}else{
								status.innerHTML = '<i class="bi bi-circle" style="color: #24E082;"></i>';
							}
							
							tr.append(pronum);
							tr.append(proname);
							tr.append(content);
							tr.append(nickname);
							tr.append(modifyDate);
							tr.append(good);
							tr.append(status);
							
							tbody.append(tr);
						}
					},
					error: (data)=>{
						console.log(data);
					}
            	});
            }

            
        </script>
</body>
</html>