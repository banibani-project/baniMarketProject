package com.banibani.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class UserVo {

	/* �����ڵ� */ 		private String user_cd;
	/* �������̵� */ 		private String user_id;
	/* �����н����� */ 		private String user_password;
	/* �����̸� */ 		private String user_name;
	/* ������й�ȣ ���� */ 	private String user_useToDay;
	/* �����ڵ��� */ 		private String user_phone;
	/* �����ڵ��� ���� */ 	private String user_phone_check;
	/* ����������� */ 		private String user_age;
	/* ���� �ּ� */ 		private String user_address;
	/* ���� Ÿ�� */ 		private String user_type_code;

}
