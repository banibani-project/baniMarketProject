package com.banibani.login.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.banibani.login.service.LoginService;
import com.banibani.login.vo.LoginVo;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	LoginService loginService;
	
	//21.11.21 회원 가입 페이지
	@GetMapping("/joinPage")
    public String joinPage() {
        return "/login/joinPage";
    }
	
	//21.11.21 로그인 페이지
	@GetMapping("/loginPage")
    public String loginPage() {
        return "/login/loginPage";
    }
	
	//21.11.21 회원 여부 확인
	@GetMapping("/loginCheck")
	public String loginCheck() {
		List<LoginVo> testList = loginService.selectTest();
		for(int a=0;a<testList.size();a++) {
			System.out.println("나는야"+testList.get(a));
		}
		
		return "/login/loginPage";
	}

}