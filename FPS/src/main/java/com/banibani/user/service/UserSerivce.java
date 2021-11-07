package com.banibani.user.service;

import org.springframework.ui.ModelMap;

import com.banibani.user.vo.UserVo;

public interface UserSerivce {

	/**
	 * 작성자 : JJH
	 * 바라보는 데이터 : openUserCreatePage.jsp
	*/
	ModelMap UserIdVlaueCheck(UserVo userVo);

}
