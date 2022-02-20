<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>프로필 수정페이지</title>

	<script type="text/javascript" src="../static/js/common.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

    <link rel="stylesheet" href="../static/css/profile_edit.css">
</head>

<body>
	<form class="profile_box">
		<div class="profile_img">
			<input type="file" id="profile_search" style="display: none;">
			<label for="profile_search" class="img_edit_bt"><img src="../static/images/edit.png"></label>
		</div>
		<input type="text" max="10" class="profile_name" value="익명이"></p>
		<a class="profile_edit">프로필 수정</a>
	</form>
</body>
</html>