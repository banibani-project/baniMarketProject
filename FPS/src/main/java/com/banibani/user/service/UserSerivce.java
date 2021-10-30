package com.banibani.user.service;

import org.springframework.ui.ModelMap;

import com.banibani.user.vo.UserVo;

public interface UserSerivce {

	/**
	 *	작성자 : JJH
	 *  작성 페이지 : openUserCreatePage.jsp
	*/
	ModelMap UserIdVlaueCheck(UserVo userVo);

}
