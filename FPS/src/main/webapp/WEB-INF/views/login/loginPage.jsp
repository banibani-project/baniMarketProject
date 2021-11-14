<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">

function fnLoginCheck() {
	$("#form1").submit();
}
</script>
</head>
<body>
	[프론트]로그인페이지입니다.
	<form action="/login/loginCheck" method="get" id="form1">
		<input type="text" name="id">
		<input type="button" onclick="fnLoginCheck()">
	</form>
</body>
</html>