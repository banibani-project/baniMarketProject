package com.banibani.login.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginVo {

	private String user_cd;
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_phone;
	private String user_phone_check;
	private String user_date;
	private String user_age;
	private String user_sex;
	private String user_zip_code;
    private String user_address;
    private String user_type_code;

}