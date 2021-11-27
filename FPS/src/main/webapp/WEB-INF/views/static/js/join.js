		var id_empty;
		var pw_empty;

		function TimeoutId() { $('#ex_id').text(''); }
		function TimeoutPw() { $('#ex_pw').text(''); }

		function id_chk() { // 일단은 공백일 땐 가능한 아이디, 값이 있으면 존재하는 아이디로 설정했습니다
			for (var i = 0; i < 3; i++) {
			  clearTimeout(i);
			}

			if (document.getElementById('sign-id').value == "") {
				$('#ex_id').text('사용 가능한 아이디입니다.')
				$('#ex_id').removeClass('error');
				$('#ex_id').addClass('correct');
			}
			else {
				$('#ex_id').text('이미 존재하는 아이디입니다.')
				$('#ex_id').addClass('error');
				$('#ex_id').removeClass('correct');
			}

			var id_empty = setTimeout(TimeoutId, 3000);
		}

		function pw_chk() {

			pw_first = document.getElementById('sign-pw').value;
			pw_sec = document.getElementById('sign-pw-chk').value;

			if (pw_first != "" && pw_first == pw_sec) {  // 비밀번호란이 공백이 아니고 비밀번호값 = 비밀번호체크값일때
				$('#ex_pw').text('사용 가능한 비밀번호입니다.')
				$('#ex_pw').removeClass('error');
				$('#ex_pw').addClass('correct');
			}
			else if (pw_first != "" && pw_first != pw_sec) { // 비밀번호란이 공백이 아니고 비밀번호값 != 비밀번호체크값일때
				$('#ex_pw').text('서로 유효하지 않는 비밀번호입니다.')
				$('#ex_pw').addClass('error');
				$('#ex_pw').removeClass('correct');
			}
			else if (pw_first == "") { // 비밀번호란이 공백일때
				$('#ex_pw').text('비밀번호란이 공백입니다.')
				$('#ex_pw').addClass('error');
				$('#ex_pw').removeClass('correct');
			}

			for (var i = 0; i<100; i++) {clearTimeout(pw_empty);}
			
			pw_empty = setTimeout(TimeoutPw, 3000); // 3초 후에 글씨 공백
		}
		
		function maxLengthCheck(object, maxnum){
			if (object.value.length > maxnum){
				object.value = object.value.slice(0, maxnum);
			}    
		}