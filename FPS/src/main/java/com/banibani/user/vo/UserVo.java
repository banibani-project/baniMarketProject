package com.banibani.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVo {
	
	private String user_cd;
	private String user_id;
	private String user_password;
	private String user_name;
 	private String user_useToDay;
	private String user_phone;
 	private String user_phone_check;
	private String user_age;
	private String user_address;
	private String user_type_code;
	
	//21.12.07 페이징 처리
	private int startLimit;
	private int limitSize;
	
	//21.12.09 상품 관련
	private String production_title;
	private String production_content;

	
}
