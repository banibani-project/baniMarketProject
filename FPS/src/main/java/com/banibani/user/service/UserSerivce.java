package com.banibani.user.service;

import org.springframework.ui.ModelMap;

import com.banibani.user.vo.UserVo;

public interface UserSerivce {

	/**
	 *	�ۼ��� : JJH
	 *  �ۼ� ������ : openUserCreatePage.jsp
	*/
	ModelMap UserIdVlaueCheck(UserVo userVo);

}
