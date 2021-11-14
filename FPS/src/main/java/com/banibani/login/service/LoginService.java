package com.banibani.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.banibani.login.vo.LoginVo;

@Service
public class LoginService {
	@Autowired
	public LoginMapper loginMapper;
	
	public List<LoginVo> selectTest() {
		return loginMapper.selectTest();
	}
}
