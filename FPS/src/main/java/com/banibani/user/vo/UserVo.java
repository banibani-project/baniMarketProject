package com.banibani.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class UserVo {

	/* 유저코드 */ 		private String user_cd;
	/* 유저아이디 */ 		private String user_id;
	/* 유저패스워드 */ 		private String user_password;
	/* 유저이름 */ 		private String user_name;
	/* 유저비밀번호 변경 */ 	private String user_useToDay;
	/* 유저핸드폰 */ 		private String user_phone;
	/* 유저핸드폰 인증 */ 	private String user_phone_check;
	/* 유저생년월일 */ 		private String user_age;
	/* 유저 주소 */ 		private String user_address;
	/* 유저 타입 */ 		private String user_type_code;

}
