<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- security token -->
	<meta name="_csrf_header" id="_csrf_header" content="${_csrf.headerName}">
	<meta name="_csrf" content="${_csrf.token}"/>

    <title>바니마켓 로그인</title>

	<link rel="shortcut icon" type="image/x-icon" href="../static/images/favicon.ico">
    <link rel="stylesheet" href="../static/css/login.css">
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script type="text/javascript">

	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");

		/* 세션 테스트
		function sessionCheck() {
			let loginForm = document.querySelector('#login-form');
			loginForm.action = '/login/sessionCheck'
			loginForm.submit()
		}
		*/

		function joinUsCreate() {
			location.href= '/login/joinPage';
			location.method="post";
			location.submit();
		}

		$(document).ready(function() {
			eventHandler();
		});


		// event
		function eventHandler() {
			reset();
		};

		function reset() {
			$("#user_id").val("");          /* 아이디 */
			$("#login-pw").val("");          /* 비밀번호 */
		}


		// 로그인
		function loginCheck() {
			$.ajax({
				url : "/login/selectUserInfo.json"
				, type: "POST"
				, data : JSON.stringify({
							"user_id" 			: $("#login-id").val()
							, "user_password" 	: $("#login-pw").val()
						})
				, dataType : "json"
				, contentType :"application/json"
				, beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				}
				, success : function(output_data) {
								alert(output_data.msg);
				}
				, error : function(error) {
							console.log($("#login-id").val());
							console.log($("#login-pw").val());
							alert("error발생 \n관리자에게 문의해주세요.");
				}
			})
		};

	</script>
</head>
<body>
	<div id="login-wrap">
		<h1><a href="main.html"><img src="../static/images/bani_logo.png"></a></h1>
		<div id="login-box">
			<h2>LOGIN</h2>
			<!-- <form action="" method="post"> -->
				<input type="text" id="login-id" class="login-design" placeholder="아이디">
				<input type="password" id="login-pw" class="login-design" placeholder="비밀번호">
				<input type="checkbox" id="login-keep" value="Y"> <label for="login-keep">로그인 유지</label>
				<input type="button" id="login-bt" class="login-design" onclick="loginCheck();" value="로그인">
				<input type="button" id="join-bt" class="login-design" onclick="joinUsCreate();" value="회원가입">

				<a href="#" class="login-sns"><img src="../static/images/login_kakao.png">카카오톡으로 로그인</a>
				<a href="#" class="login-sns"><img src="../static/images/login_naver.png">네이버로 로그인</a>
			<!-- </form> -->
		</div>
	</div>
</body>
</html>