package com.banibani.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
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

}
