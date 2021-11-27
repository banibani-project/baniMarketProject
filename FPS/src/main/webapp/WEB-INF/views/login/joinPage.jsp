<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>바니마켓 로그인</title>

	<link rel="shortcut icon" type="image/x-icon" href="../static/images/favicon.ico">
    <link rel="stylesheet" href="../static/css/sign.css">

    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="../static/js/join.js"></script>
</head>

<body>
	<div id="sign-wrap">
		<h1><a href="main.html"><img src="../static/images/bani_logo.png"></a></h1>
		<div id="sign-box">
			<h2>회원가입</h2>
			<form action="" method="post">
				<input type="text" name="id" id="sign-id" class="sign-design" placeholder="아이디" value="">
				<input type="button" name="id_check" id="sign-chk" class="sign-design" value="아이디체크" onclick="id_chk();">
				<p id="ex_id" class="error"></p>

				<input type="password" name="pw" id="sign-pw" class="sign-design" placeholder="비밀번호" value="">
				<input type="password" name="pw_check" id="sign-pw-chk" class="sign-design" placeholder="비밀번호 체크" value="" onkeyup="pw_chk();">
				<p id="ex_pw" class="error"></p>

				<h3>전화번호</h3>
				<div class="phone-wrap">
					<input type="number" name="phone1" class="sign-design sign-phone-first" value="010" oninput="maxLengthCheck(this, 3);">
					<span class="phone-mid">-</span>
					<input type="number" name="phone2" class="sign-design sign-phone" max="9999" value="" oninput="maxLengthCheck(this, 4);">
					<span class="phone-mid">-</span>
					<input type="number" name="phone3" class="sign-design sign-phone" max="9999" value="" oninput="maxLengthCheck(this, 4);">
				</div>

				<h3>생년월일</h3>
				<div class="birth-wrap">
					<input type="number" name="year" min="1901" max="2021" class="sign-design sign-year" value="" oninput="maxLengthCheck(this, 4);">
					<span class="birth-mid">년</span>
					<input type="number" name="month" class="sign-design sign-month" min="1" max="12" value="" oninput="maxLengthCheck(this, 2);">
					<span class="birth-mid">월</span>
					<input type="number" name="date" class="sign-design sign-date" min="1" max="31" value="" oninput="maxLengthCheck(this, 2);">
					<span class="birth-mid">일</span>
				</div>

				<h3>주소</h3>
				<input type="text" name="addr1" id="sign-addr1" class="sign-design" placeholder="우편번호" value="">
				<input type="button" name="addr_check" id="sign-addr-find" class="sign-design" value="주소찾기">
				<input type="text" name="addr2" id="sign-addr2" class="sign-design" placeholder="주소" value="">
				<input type="text" name="addr3" id="sign-addr3" class="sign-design" placeholder="상세주소" value="">

				<input type="submit" id="sign-bt" class="sign-design" value="로그인">
			</form>
		</div>
	</div>
</body>
</html>