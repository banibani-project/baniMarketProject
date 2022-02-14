package com.banibani.login.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;

import com.banibani.login.vo.LoginVo;

public interface LoginService {


	ModelMap selectOneUserIdChecked(LoginVo loginVo);

	ModelMap insertUserInfoCreate(LoginVo loginVo);

	ModelMap selectUserInfo(LoginVo loginVo, HttpServletRequest req);


}
