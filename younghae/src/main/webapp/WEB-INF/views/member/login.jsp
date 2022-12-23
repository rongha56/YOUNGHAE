<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>로그인</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif
}

/* body {
            height: 100vh;
            background: linear-gradient(to top, #c9c9ff 50%, #9090fa 90%) no-repeat
        } */
.container {
	margin: 50px auto
}

.panel-heading {
	text-align: center;
	margin-bottom: 10px
}

#forgot {
	min-width: 100px;
	margin-left: auto;
	text-decoration: none
}

a:hover {
	text-decoration: none
}

.form-inline label {
	padding-left: 10px;
	margin: 0;
	cursor: pointer
}

.btn.btn-primary {
	margin-top: 20px;
	border-radius: 15px
}

.panel {
	min-height: 380px;
	box-shadow: 20px 20px 80px rgb(218, 218, 218);
	border-radius: 12px
}

.input-field {
	border-radius: 5px;
	padding: 5px;
	display: flex;
	align-items: center;
	cursor: pointer;
	border: 1px solid rgb(122, 122, 122);
	color: #4343ff
}

input[type='text'], input[type='password'] {
	border: none;
	outline: none;
	box-shadow: none;
	width: 100%
}

.fa-eye-slash.btn {
	border: none;
	outline: none;
	box-shadow: none
}

/* img {
            width: 40px;
            height: 40px;
            object-fit: cover;
            border-radius: 50%;
            position: relative
        } */
a[target='_blank'] {
	position: relative;
	transition: all 0.1s ease-in-out
}

.bordert {
	border-top: 1px solid rgb(122, 122, 122);
	position: relative
}

.bordert:after {
	content: "\00a0 \00a0 \00a0 간편 로그인 \00a0 \00a0";
	position: absolute;
	top: -13px;
	left: 33%;
	background-color: #fff;
	padding: 0px 8px
}

@media ( max-width : 360px) {
	#forgot {
		margin-left: 0;
		padding-top: 10px
	}
	body {
		height: 100%
	}
	.container {
		margin: 30px 0
	}
	.bordert:after {
		left: 25%
	}
}
</style>
</head>

<body>
	<nav>
		<jsp:include page="/WEB-INF/views/common/topmenubar.jsp"></jsp:include>
	</nav>
	<div class="container">
		<div class="row">
			<div class="offset-md-2 col-lg-5 col-md-7 offset-lg-4 offset-md-3 ">
				<div class="panel" style="border: 1px solid rgb(122, 122, 122);">
					<div class="panel-heading">
						<a href="#"><img src="resources/img/logo.svg" alt=""
							style="height: 60px; width: 80px;"></a> <span
							style="font-size: 20px; margin-left: 5px; vertical-align: middle; font-weight: bold;">로그인</span>
						<div style="font-size: 5px;">로그인을 통해 영해의 다양한 서비스를 사용해 보세요.</div>
					</div>
					<div class="panel-body p-3">
						<form action="${contextPath}/login.me" method="POST">
							<div class="form-group py-2">
								<div class="input-field">
									<span class="far p-2"></span> <input type="text"
										placeholder="아이디를 입력해주세요"  name="userId" id="userId"required>
								</div>
							</div>
							<div class="form-group py-1 pb-2">
								<div class="input-field">
									<span class="fas px-2"></span> <input type="password"
										placeholder="비밀번호를 입력해주세요" name="userPwd" id="userPwd" required>
								</div>
							</div>
							<div class="form-inline " style="margin-left: 280px;">
								<a href="#" id="forgotId"
									style="font-size: 10px; margin-right: 10px;"
									onclick="location.href='${contextPath}/searchIdView.me'">아이디찾기</a>
								<a href="#" id="forgotPwd" style="font-size: 10px;"
									onclick="location.href='${contextPath}/searchPwdView.me'">비밀번호
									찾기</a>
							</div>
							<div class="btn btn-primary btn-block mt-3 "
								style="background-color: rgb(0, 179, 0); border-color: rgb(0, 179, 0);"
								id="loginBtn">로그인</div>
							<button id="loginBtn">로그인</button>
							<div class="text-center pt-4 text-muted">
								아직 회원이 아니신가요? <a href="#"
									onclick="location.href='${contextPath}/enroll.me'">회원 가입</a>
							</div>
						</form>
					</div>
					<div class="mx-3 my-2 py-2 bordert">
						<div class="text-center py-3">
							<a href="https://kauth.kakao.com/oauth/authorize?client_id=6ca1f8428b3e4b30036e0a07884586be&redirect_uri=http://localhost:8081/young/kakaoLogin.me&response_type=code"><img
								src="resources/img/kakao_login_medium_narrow.png"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		
	</script>
</body>
</html>