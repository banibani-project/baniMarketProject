package com.banibani.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	//21.11.21 회원 가입 페이지
	@GetMapping("/joinPage")
    public String joinPage() {
        return "/login/joinPage";
    }
	
	//21.11.21 로그인 페이지
	@GetMapping("/loginPage")
    public String postsSave() {
        return "/login/loginPage";
    }
<<<<<<< HEAD
=======
	
	//21.11.21 회원 여부 확인
	@GetMapping("/loginCheck")
	public String loginCheck() {
		List<LoginVo> testList = loginService.selectTest();
		for(int a=0;a<testList.size();a++) {
			System.out.println("나는야"+testList.get(a));
		}
		
		return "/login/loginPage";
	}
>>>>>>> branch 'main' of https://github.com/banibani-project/baniMarketProject.git

}