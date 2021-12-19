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
    <link rel="stylesheet" href="../static/css/sign.css">

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="../static/js/join.js"></script>

	<script>
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	var userChecked = false;

	$(document).ready(function() {
		eventHandler();
	});

	// event
	function eventHandler() {
		reset();
	};

	function reset() {
		$("#sign-name").val("");		/* 이름 */
		$("#sign-id").val("");          /* 아이디 */
		$("#sign-pw").val("");          /* 비밀번호 */
		$("#pw_check").val("");         /* 비밀번호 재확인 */
		$("#phone2").val("");           /* 전화번호 앞 */
		$("#phone3").val("");           /* 전화번호 뒤 */
		$("#year").val("");             /* 년 */
		$("#month").val("");            /* 월 */
		$("#day").val("");              /* 일 */
		$("#sign-addr1").val("");       /* 우편번호 */
		$("#sign-addr2").val("");       /* 주소 */
		$("#sign-addr3").val("");       /* 상세주소 */
	}

	// user_id checked
	function id_chk() {
		var regExpId =  /^[0-9a-zA-Z]{5,15}$/;
		var msg = "";
		// console.log(regExpId.test($("#sign-id").val()));

		if(regExpId.test($("#sign-id").val()) === false) {
			alert("아이디는 영어와 숫자 최소 5자리 혹은 최대 20자리까지 넣을 수 있습니다.");
			return
		} else {
			$.ajax({
				url : "/login/selectOneUserIdChecked.json"
				, type: "POST"
				, data : JSON.stringify({
							"user_id" : $("#sign-id").val()
						})
				, dataType : "json"
				, contentType : "application/json"
				, beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				}
				, success : function(output_data) {
					// TextSetting 
					for (var i = 0; i < 3; i++) {
			 			 clearTimeout(i);
					}
					
					// 성공시 데이터 분할
					if(output_data.msg == "success") {
						$('#ex_id').text('사용 가능한 아이디입니다.')
						$('#ex_id').removeClass('error');
						$('#ex_id').addClass('correct');
						userChecked = true;
					} else {
						$('#ex_id').text('이미 존재하는 아이디입니다.')
						$('#ex_id').addClass('error');
						$('#ex_id').removeClass('correct');
					}
					var id_empty = setTimeout(TimeoutId, 3000);
				}
				, error : function(error) {
					alert("error발생 \n관리자에게 문의해주세요.");
				}
			})
		}
	};
	
	//TimeOutSetting 
	function TimeoutId() {
		$('#ex_id').text(''); 
	};

	// address api iframe clase
    function closeDaumPostcode() {
    	var element_layer = document.getElementById('layer');
        element_layer.style.display = 'none';
    };

	// address api iframe open
    function daumAdress() {
    	var element_layer = document.getElementById('layer');
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = '';
                var extraAddr = '';

                if (data.userSelectedType === 'R') {
                    addr = data.roadAddress;
                } else {
                    addr = data.jibunAddress;
                }

                if(data.userSelectedType === 'R'){
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                }

                document.getElementById('sign-addr1').value = data.zonecode;
                document.getElementById("sign-addr2").value = addr;
                document.getElementById("sign-addr3").focus();

                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        element_layer.style.display = 'block';
        initLayerPosition();
    };

	// address api iframe produce
    function initLayerPosition() {
    	var element_layer = document.getElementById('layer');
        var width = 400;
        var height = 500;
        var borderWidth = 5;

        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    };

	// user_info_create
	function userInfoCreate() {
		var allDataYN 				= "N";																/* 데이터 체크 */
		var passwordCheckYn			= "N";																/* 패스워드 재확인 */
		var RegExpPhone				= /^01[0179]-\d{3,4}-\d{4}$/;										/* 핸드폰 정규식 */
		var RegExpPassword			= /^.*(?=^.{8,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;		/* 패스워드 정규식 */
		var RegExpDate				= /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/		/* 날짜 정규식 */
		var birthday 				= "";																/* 나이 확인 */
		var passwrodChecked 		= "";																/* 패스워드 체크 */
		var phoneMerzy				= "";																/* 핸드폰번호 병합 */
		var nowDay 					= "";																/* 현재 날짜 */
		var adressMerzy				= "";																/* 주소 병합 */
		var date					= "";																/* 생년월일 병합 */
		var passCount				= 0;																/* 통과 카운트 */

		if(userChecked == true) {
			passCount++;
		}

		if($("#sign-name").val() != "" || $("#sign-name").val() != null) {
			passCount++;
		}

		// console.log(RegExpPassword.test($("#sign-pw").val()));
		// console.log($("#sign-pw").val() === ($("#sign-pw-chk").val()));
		if(($("#sign-pw").val() === $("#sign-pw-chk").val()) == true) {
			passwordCheckYn = "Y";
			// console.log(passwordCheckYn);
		}

		if(passwordCheckYn == "Y") {
			if( RegExpPassword.test($("#sign-pw").val()) == false ) {
				alert("패스워드는 최소 8자리 최대는 20자리까지만 가능합니다.");
				return;
			} else {
				passCount++;
			}
		} else {
			alert("비밀번호와 비밀번호 체크가 일치하지 않습니다. \n확인 후 다시 회원가입을 눌러주세요.");
			return;
		}

		phoneMerzy = $("#phone1").val() + "-" + $("#phone2").val() + "-" + $("#phone3").val();
		// console.log(RegExpPhone.test(phoneMerzy));

		// 모든 데이터 확인 및 데이터 병합을 위한 로직
		if( RegExpPhone.test(phoneMerzy) == false ) {
			alert("전화번호를 정확히 넣어주세요.");
			$("#phone2").val("")
			$("#phone3").val("")
			$("#phone2").focus();
			return;
		} else {
			passCount++;
		}

		data = $("#year").val() + "-" + $("#month").val() + "-" + $("#day").val();

		if(RegExpDate.test(data) == true) {
			nowDay = new Date().getFullYear();
			birthday = Math.abs($("#year").val() - nowDay);
			// console.log(birthday);
			passCount++;
		} else {
			alert("생년월일을 정확히 넣어주세요.");
			return;
		}

		adressMerzy = $("#sign-addr2").val() + $("#sign-addr3").val();
		//console.log(adressMerzy);
		if(adressMerzy != "" || adressMerzy != null) {
			passCount++;
		}

		if(passCount == 6){
			allDataYN = "Y";
		}

		// alert(allDataYN);

		if(allDataYN == "N") {
			alert("회원가입 데이터를 모두 입력해주세요.");
			return
		} else {
			$.ajax({
				url : "/login/insertUserInfoCreate.json"
				, type: "POST"
				, data : JSON.stringify({
							"user_id" 			: $("#sign-id").val()
							, "user_age" 		: birthday
							, "user_password" 	: $("#sign-pw").val()
							, "user_name" 		: $("#sign-name").val()
							, "user_phone" 		: phoneMerzy
							, "zip_code"		: $("#sign-addr1").val()
							, "user_address" 	: adressMerzy
							/* , "user_sex" 	:  프론트 요청 : 성별 부분이 생기면 데이터 추가 */
						})
				, dataType : "json"
				, contentType :"application/json"
				, beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				}
				, success : function(output_data) {
					if(output_data.msg == "success") {
						msg = "회원가입이 완료되었습니다.";
					} else {
						msg = "회원가입이 거부되었습니다. \n관리자에게 문의주세요.";
					}

					alert(msg);

				}
				, error : function(error) {
					alert("error발생 \n관리자에게 문의해주세요.");
				}
			})
		}
	};

	</script>
</head>

<body>
	<div id="sign-wrap">
		<h1><a href="main.html"><img src="../static/images/bani_logo.png"></a></h1>
		<div id="sign-box">
			<h2>회원가입</h2>
			<form action="" method="post">
				<input type="text" name="name" id="sign-name" class="sign-design" placeholder="이름" value=""><br>
				<input type="text" name="id" id="sign-id" class="sign-design" placeholder="아이디" value="">
				<input type="button" name="id_check" id="sign-chk" class="sign-design" value="아이디체크" onclick="id_chk();">
				<p id="ex_id" class="error"></p>

				<input type="password" name="pw" id="sign-pw" class="sign-design" placeholder="비밀번호" value="">
				<input type="password" name="pw_check" id="sign-pw-chk" class="sign-design" placeholder="비밀번호 체크" value="" onkeyup="pw_chk();">
				<p id="ex_pw" class="error"></p>

				<h3>전화번호</h3>
				<div class="phone-wrap">
					<input type="number" id="phone1" name="phone1" class="sign-design sign-phone-first" value="010" oninput="maxLengthCheck(this, 3);">
					<span class="phone-mid">-</span>
					<input type="number" id="phone2" name="phone2" class="sign-design sign-phone" max="9999" value="" oninput="maxLengthCheck(this, 4);">
					<span class="phone-mid">-</span>
					<input type="number" id="phone3" name="phone3" class="sign-design sign-phone" max="9999" value="" oninput="maxLengthCheck(this, 4);">
				</div>

				<h3>성별</h3>
				<div>
					<input type="radio" name="gender" id="gender_male" checked="checked">
					<label for="gender_male" class="male_chk">남성</label>
					<input type="radio" name="gender" id="gender_female">
					<label for="gender_female" class="female_chk">여성</label>
				</div>

				<h3>생년월일</h3>
				<div class="birth-wrap">
					<input type="number" id="year" name="year" min="1901" max="2021" class="sign-design sign-year" value="" oninput="maxLengthCheck(this, 4);">
					<span class="birth-mid">년</span>
					<input type="number" id="month" name="month" class="sign-design sign-month" min="1" max="12" value="" oninput="maxLengthCheck(this, 2);">
					<span class="birth-mid">월</span>
					<input type="number" id="day" name="date" class="sign-design sign-date" min="1" max="31" value="" oninput="maxLengthCheck(this, 2);">
					<span class="birth-mid">일</span>
				</div>

				<h3>주소</h3>
				<input type="text" name="addr1" id="sign-addr1" class="sign-design" placeholder="우편번호" value="">
				<input type="button" name="addr_check" id="sign-addr-find" class="sign-design" onclick="daumAdress();" value="주소찾기">

				<div id="layer" style="display:none; position:fixed; overflow:hidden; z-index:1; -webkit-overflow-scrolling:touch;">
					<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer; position:absolute; right:-3px; top:-3px; z-index:1;" onclick="closeDaumPostcode();" alt="닫기 버튼">
				</div>

				<input type="text" name="addr2" id="sign-addr2" class="sign-design" placeholder="주소" value="">
				<input type="text" name="addr3" id="sign-addr3" class="sign-design" placeholder="상세주소" value="">

				<input type="button" id="sign-bt" class="sign-design" onclick="userInfoCreate();" value="로그인">
			</form>
		</div>
	</div>
</body>
</html>