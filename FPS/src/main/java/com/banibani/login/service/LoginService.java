package com.banibani.login.service;

import org.springframework.ui.ModelMap;

import com.banibani.login.vo.LoginVo;

public interface LoginService {


	ModelMap selectOneUserIdChecked(LoginVo loginVo);

	ModelMap insertUserInfoCreate(LoginVo loginVo);


}
