<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>바니마켓 로그인</title>

	<link rel="shortcut icon" type="image/x-icon" href="../static/images/favicon.ico">
    <link rel="stylesheet" href="../static/css/login.css">
</head>

<body>
	<div id="login-wrap">
		<h1><a href="main.html"><img src="../static/images/bani_logo.png"></a></h1>
		<div id="login-box">
			<h2>LOGIN</h2>
			<form action="" method="post">
				<input type="text" id="login-id" class="login-design" placeholder="아이디">
				<input type="password" id="login-pw" class="login-design" placeholder="비밀번호">
				<input type="checkbox" id="login-keep" value="Y"> <label for="login-keep">로그인 유지</label>
				<input type="submit" id="login-bt" class="login-design" value="로그인">

				<a href="#" class="login-sns"><img src="../static/images/login_kakao.png">카카오톡으로 로그인</a>
				<a href="#" class="login-sns"><img src="../static/images/login_naver.png">네이버로 로그인</a>
			</form>
		</div>
	</div>
</body>
</html>