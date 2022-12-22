<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문게시판 - 질문하기</title>

	<jsp:include page="../common/topmenubar.jsp" flush="true"/>

    <!--내가만든 css-->
    <link rel="stylesheet" href="resources/css/bn_style.css" type="text/css">
	
</head>
<body style="background-color: #f8f8fa;">

    <div class="container">
        <div class="bn_index mt-5">
            <ul>
                <li>Q&A</li>
                <li> <b>/</b> </li>
                <li><a href="${contextPath}/home.qa">둘러보기</a></li>
            </ul>
        </div>
		
		<c:if test="${loginUser==null }">
			<button class="loginBtn">1</button>관리자<br>
			<button class="loginBtn">2</button>일반유저<br>
			<button class="loginBtn">4</button>약사<br>
		</c:if>

		<c:if test="${ loginUser != null }">
		<button>logout</button>
        <div style="padding: 30px 0 10px 0;">
            <h3 class="text-start" style="font-weight: 700;">내가 남긴 질문</h3>
            <h6 class="mt-3"><b>전문가와 함께 건강관리를 시작하세요</b></h6>
            <h6>Q&A는 의사와 약사, 전문 의료인에게 영양제 정보 등 건강과 관련된 질문을 할 수 있는 게시판입니다</h6>
            <hr style="border:1px solid #24E082; background-color: #24E082;">
        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="bn_homebox_2 bn_homebox_2_main row justify-content-between">
                    <div>
                        <span style="display: inline-block; line-height:2.5rem;">내가 남긴 질문 보기</span>&nbsp;&nbsp;
                        <div class="bn_round"><button class="btn" id="checkMyQa">5</button><div class="bn_round_badge" id="checkMyQaBadge"></div></div>
                    </div>
                    <!-- 내가 확인하지 않은 답변이 생기면 checkMyQa id 요소 다음의 div에 bn_round_badge라는 클래스 생성 -->
                    <!-- 답변확인시 checkMyQaBadge 에서 스타일클래스 사라짐-->
                    <button class="btn">더보기</button>
                </div>
                <div class="bn_homebox_3 row">
                    <div class="col-lg-10">
                        <h6>복용상담</h6>
                        <h5>운동 후 영양제 섭취 관련 질문드립니다</h5>
                        <h6>
                            <i class="fa-solid fa-arrow-right-long" style="color: rgb(212, 212, 212);"></i>
                            <span>1</span>개의 답변
                        </h6>
                    </div>
                    <div class="col-lg-2">
                        <button class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi lg bi-three-dots" style="font-size: 1.5rem; color:darkgray;"></i>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">수정하기</a></li>
                            <li><a class="dropdown-item" onclick="deleteBoard();">삭제하기</a></li>
                            <li><a class="dropdown-item" onclick="openPopUp();" >신고하기</a></li>
                        </ul>
                    </div>
                </div>
                <div class="bn_homebox_3 row">
                    <div class="col-lg-9"><h5>운동 후 영양제 섭취 관련 질문드립니다</h5></div>
                    <div class="col-lg-3">
                        <h6><i class="fa-solid fa-arrow-right-long" style="color: rgb(212, 212, 212);"></i><span>1</span>개의 답변</h6></div>
                </div>
                <div class="bn_homebox_3 row">
                    <div class="col-lg-9"><h5>운동 후 영양제 섭취 관련 질문드립니다</h5></div>
                    <div class="col-lg-3">
                        <h6><i class="fa-solid fa-arrow-right-long" style="color: rgb(212, 212, 212);"></i><span>1</span>개의 답변</h6></div>
                </div>

            </div>

            <div class="col-lg-6">
                <div class="bn_homebox" style="padding-left: 2rem;" onclick="location.href='${contextPath}/writequestion.qa'"><h4><b>질문하러 가기</b></h4></div>
                <div class="bn_homebox row" onclick="location.href='${contextPath}/open.ch'">
                    <div class="col-lg-9">
                        <h4><b>안전한 복용을 위해</b></h4>
                        <h6><b>전문 의료인과</b></h6>
                        <h6><b>1:1채팅 서비스를 시작해보세요</b></h6>
                        <br>
                        <h6>영해는 전문 의료인과 1:1 채팅 서비스를 제공합니다</h6>
                    </div>
                    <div class="col-lg-3">
                        <img src="resources/img/qna/chat.png" alt="채팅" width="">
                    </div>
                    
                </div>
            </div>
        </div>
        </c:if>


        <div style="padding: 30px 0 10px 0;" >
			<div class="row justify-content-between">
            <h3 class="text-start" style="display:inline-block; font-weight: 700; cursor:pointer;" onclick="location.href='${contextPath}/boardList.qa'">Q&A 최신글</h3>
            <h6 class="text-end bn_more" style="display:inline-block;cursor:pointer;" onclick="location.href='${contextPath}/boardList.qa'">더보기</h6>
            </div>
            <hr style="border:1px solid #24E082; background-color: #24E082;">
        </div>

        <div class="bn_boardlist mt-2" style="background-color: #ffffff;">
            <table class="table" >
                <thead>
                  <tr class="text-teal-100">
                    <div class="col-lg-3">
                        <th scope="col">해결되었어요</th>
                        <th scope="col">글번호</th>
                    </div>
                    <th scope="col" class="col-lg-4">제목</th>
                    <th scope="col" class="col-lg-1">글쓴이</th>
                    <th scope="col" class="col-lg-1">답변수</th>
                    <th scope="col" class="col-lg-1">조회수</th>
                    <th scope="col" class="col-lg-2">날짜</th>
                  </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row" class="d-flex justify-content-center bn_board_check"><i class="bi bi-check-square-fill"></i></th>
                        <td>1</td>
                        <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">Otto</td>
                        <td>@mdo</td>
                        <td>1</td>
                        <td>1</td>
                        <td>2022-12-06</td>
                    </tr>
                    <tr>
                        <th scope="row" class="d-flex justify-content-center bn_board_check"><i class="bi bi-square"></i></th>
                        <td>2</td>
                        <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">Thornton</td>
                        <td>@fat</td>
                        <td>1</td>
                        <td>1</td>
                        <td>2022-12-06</td>
                    </tr>
                    <tr>
                        <th scope="row" class="d-flex justify-content-center bn_board_check"><i class="bi bi-check-square-fill"></i></th>
                        <td>3</td>
                        <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">Larry the Bird</td>
                        <td>@twitter</td>
                        <td>1</td>
                        <td>1</td>
                        <td>2022-12-06</td>
                    </tr>
                    <tr>
                        <th scope="row" class="d-flex justify-content-center bn_board_check"><i class="bi bi-check-square-fill"></i></th>
                        <td>4</td>
                        <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">Larry the Bird</td>
                        <td>@twitter</td>
                        <td>1</td>
                        <td>1</td>
                        <td>2022-12-06</td>
                    </tr>
                    <tr>
                        <th scope="row" class="d-flex justify-content-center bn_board_check"><i class="bi bi-check-square-fill"></i></th>
                        <td>5</td>
                        <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">Larry the Bird</td>
                        <td>@twitter</td>
                        <td>1</td>
                        <td>1</td>
                        <td>2022-12-06</td>
                    </tr>
                    <tr>
                        <th scope="row" class="d-flex justify-content-center bn_board_check"><i class="bi bi-check-square-fill"></i></th>
                        <td>6</td>
                        <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;"">왜 border-bottom 생겨서 날 괴롭게 해?</td>
                        <td>@twitter</td>
                        <td>1</td>
                        <td>1</td>
                        <td>2022-12-06</td>
                    </tr>
                </tbody>
            </table>
        </div>

            <div class="row d-flex justify-content-center">
                <div class="input-group mt-3 col-lg-6">
                    <select class="form-select form-select-sm bn_detail-search">
                        <option selected>카테고리 선택</option>
                        <option value="제목내용">제목+내용</option>
                        <option value="제목">제목</option>
                        <option value="내용">내용</option>
                        <option value="글쓴이">글쓴이</option>
                    </select>
                    <input type="text" class="form-control" id="bn_detail-search-point" placeholder="내용을 입력하세요">
                    <button class="btn bn_btn_search2" >검색</button>
                </div>
            </div>


            <div style="padding: 30px 0 10px 0;">
                <h3 class="text-start" style="font-weight: 700;">많이 보는 질문글</h3>
                <hr style="border:1px solid #24E082; background-color: #24E082;">
                <h6>지난 24시간 동안 조회수가 가장 높은 질문글입니다</h6>
            </div>

            <div class="row" style="padding: 1.25rem;">
                <div class="col bn_homebox_4">
                    <div class="row" id="titel1" style="font-size: 1.25rem; font-weight: 600; color:#24E082;">영양제 복용법 질문</div>
                    <div class="row" id="titel1">
                        <span style="font-size: 0.5rem; font-weight: 600;" >20대 / 남 </span>&nbsp;&nbsp;
                        <span style="font-size: 0.5rem;" >2022/11/07</span>
                    </div>
                    <div style="overflow: hidden; line-height:1.2rem; height:3.6rem; text-overflow: ellipsis; margin-right: 1.5rem;">안녕하세요. 수험생 영양제로 챙겨 먹어보려고 하는데
                        수험생 영양제로 멀티비타민은 먹으도 괜찮은가요?
                        찾아보니까 수험생 영양제로 보통 한약을 먹는거 같은데
                        저는 한약이 맞지 않거든요ㅠㅠ
                        그래서 수험생 영양제로 피로회복 도움되는거 먹으면 되지 않을까 싶어서요
                        영양제는 비타민B군이 다양하게 있으면 좋다고 하는데 맞나요?
                        비타민이 수험생 영양제로 괜찮을까요??
                        </div>
                    <hr style="border: 1px solid darkgrey; width: 5rem; text-align:left; margin-left: 0;">
                    <div class="row">
                        <span style="line-height:1.5rem; font-size: 1rem; font-weight: 600; color:#24E082;">약사</span>
                        <span style="line-height:1.5rem; font-size: 1.25rem; font-weight: 600; color:#24E082;">김가람</span>
                    </div>
                    <div style="overflow: hidden; line-height:1.2rem; height:3.6rem; text-overflow: ellipsis; margin-right: 1.5rem;">안녕하세요. 네이버 지식iN 상담 약사 강병구 입니다.
                        오랜시간 앉아서 공부를 해야 하는 수험생의 경우 필요한 영양제에 대해서 문의하신 것으로 보입니다.
                        우선 말씀하신 비타민B 군의 경우 에너지 생성에 도움을 줄 수 있어 매일 오전에 섭취하는 것이 좋습니다.
                        그리고 활발한 두뇌활동을 위해 고함량의 오메가3가 권장되는데 중요한 점은 DHA 함량이 뛰어난 식물성오메가3를 섭취하는 것이 권장됩니다.
                        추가로 햇빛을 많이 보지 못하는 경우 5000IU 단위의 비타민D 의 섭취도 면역력 및 지구력 강화에 도움이 될 수 있습니다.
                        식물성오메가3에 대한 자세한 내용은 아래를 참고하세요.</div>
                    <div class="row  justify-content-end" style="margin-right: 1.5rem;">
                        <i class="view fa-solid fa-eye m-2"></i><span class="m-1">85</span>
                        <i class="save fa-regular fa-bookmark m-2"></i><span class="m-1">10</span>

                    </div>
                </div>
                <div class="col bn_homebox_4">
                    <div class="row" id="titel1" style="font-size: 1.25rem; font-weight: 600; color:#24E082;">영양제 복용법 질문</div>
                    <div class="row" id="titel1">
                        <span style="font-size: 0.5rem; font-weight: 600;" >20대 / 남 </span>&nbsp;&nbsp;
                        <span style="font-size: 0.5rem;" >2022/11/07</span>
                    </div>
                    <div style="overflow: hidden; line-height:1.2rem; height:3.6rem; text-overflow: ellipsis; margin-right: 1.5rem;">안녕하세요. 수험생 영양제로 챙겨 먹어보려고 하는데
                        수험생 영양제로 멀티비타민은 먹으도 괜찮은가요?
                        찾아보니까 수험생 영양제로 보통 한약을 먹는거 같은데
                        저는 한약이 맞지 않거든요ㅠㅠ
                        그래서 수험생 영양제로 피로회복 도움되는거 먹으면 되지 않을까 싶어서요
                        영양제는 비타민B군이 다양하게 있으면 좋다고 하는데 맞나요?
                        비타민이 수험생 영양제로 괜찮을까요??
                        </div>
                    <hr style="border: 1px solid darkgrey; width: 5rem; text-align:left; margin-left: 0;">
                    <div class="row">
                        <span style="line-height:1.5rem; font-size: 1rem; font-weight: 600; color:#24E082;">약사</span>
                        <span style="line-height:1.5rem; font-size: 1.25rem; font-weight: 600; color:#24E082;">김가람</span>
                    </div>
                    <div style="overflow: hidden; line-height:1.2rem; height:3.6rem; text-overflow: ellipsis; margin-right: 1.5rem;">안녕하세요. 네이버 지식iN 상담 약사 강병구 입니다.
                        오랜시간 앉아서 공부를 해야 하는 수험생의 경우 필요한 영양제에 대해서 문의하신 것으로 보입니다.
                        우선 말씀하신 비타민B 군의 경우 에너지 생성에 도움을 줄 수 있어 매일 오전에 섭취하는 것이 좋습니다.
                        그리고 활발한 두뇌활동을 위해 고함량의 오메가3가 권장되는데 중요한 점은 DHA 함량이 뛰어난 식물성오메가3를 섭취하는 것이 권장됩니다.
                        추가로 햇빛을 많이 보지 못하는 경우 5000IU 단위의 비타민D 의 섭취도 면역력 및 지구력 강화에 도움이 될 수 있습니다.
                        식물성오메가3에 대한 자세한 내용은 아래를 참고하세요.</div>
                    <div class="row  justify-content-end" style="margin-right: 1.5rem;">
                        <i class="view fa-solid fa-eye m-2"></i><span class="m-1">85</span>
                        <i class="save fa-regular fa-bookmark m-2"></i><span class="m-1">10</span>

                    </div>
                </div>
            </div>
            
    </div>

<br>
<br>
<br>
<br>

<script>
window.onload=()=>{
	const loginBtn= document.getElementsByClassName("loginBtn");
	console.log(loginBtn);
	for(const btn of loginBtn){
		btn.addEventListener('click', function(){
			const userNum = this.innerText;
			console.log(userNum);
			location.href='${contextPath}/login.qa?userNum='+userNum;
		})
	}
}
</script>
</body>
</html>