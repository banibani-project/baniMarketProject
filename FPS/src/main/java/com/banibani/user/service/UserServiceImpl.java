package com.banibani.user.service;

import org.springframework.ui.ModelMap;

import com.banibani.user.dao.UserDao;
import com.banibani.user.vo.UserVo;

public class UserServiceImpl implements UserSerivce {

	UserDao userDao;

	/**
	 *  �ۼ��� : 2021 - 10 - 31
	 *	�ۼ��� : JJH
	 *  �ۼ� ������ : openUserCreatePage.jsp
	 *  �ۼ� �Ķ���� : [ userId : value, userPassword : vale, userName : value, userPhone : value, userAge : value, userAddress : value, userTypeCode : value ]
	 */
	public ModelMap UserIdVlaueCheck(UserVo userVo) {

		userDao.UserIdVlaueCheck(userVo);

		return null;
	}

}
