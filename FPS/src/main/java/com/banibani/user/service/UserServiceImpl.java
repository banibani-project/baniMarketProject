package com.banibani.user.service;

import org.springframework.ui.ModelMap;

import com.banibani.user.dao.UserDao;
import com.banibani.user.vo.UserVo;

public class UserServiceImpl implements UserSerivce {

	UserDao userDao;

	/**
	 *  작성일 : 2021 - 10 - 31
	 *	작성자 : JJH
	 *  작성 페이지 : openUserCreatePage.jsp
	 *  작성 파라미터 : [ userId : value, userPassword : vale, userName : value, userPhone : value, userAge : value, userAddress : value, userTypeCode : value ]
	 */
	public ModelMap UserIdVlaueCheck(UserVo userVo) {

		userDao.UserIdVlaueCheck(userVo);

		return null;
	}

}
