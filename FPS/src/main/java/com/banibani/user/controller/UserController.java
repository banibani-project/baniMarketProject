package com.banibani.user.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.banibani.user.service.UserSerivce;
import com.banibani.user.vo.UserVo;


@RequestMapping(value="/user")
public class UserController {

	UserSerivce userService;

	@RequestMapping(value="/openUserCreate.do")
	public String openUserCreate() {

		return "";
	}

	/**
	 *  �ۼ��� : 2021 - 10 - 31
	 *	�ۼ��� : JJH
	 *  �ۼ� ������ : openUserCreatePage.jsp
	 *  �ۼ� �Ķ���� : [ userId : value, userPassword : vale, userName : value, userPhone : value, userAge : value, userAddress : value, userTypeCode : value ]
	 */
	@ResponseBody
	@RequestMapping(value="/UserIdVlaueCheck")
	public ModelMap UserIdVlaueCheck (@RequestBody UserVo userVo) {

		return userService.UserIdVlaueCheck(userVo);

	}


}
