package com.banibani.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.banibani.login.service.LoginService;
import com.banibani.login.vo.LoginVo;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private LoginService loginService;

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

	// 21.12.12 유저아이디 중복체크
	@PostMapping("/selectOneUserIdChecked.json")
	@ResponseBody
	public ModelMap selectOneUserIdChecked(@RequestBody LoginVo loginVo) {
		return loginService.selectOneUserIdChecked(loginVo);
	}

	// 21.12.12 유저 회원가입
	@PostMapping("/insertUserInfoCreate.json")
	@ResponseBody
	public ModelMap insertUserInfoCreate(@RequestBody LoginVo loginVo) {
		return loginService.insertUserInfoCreate(loginVo);
	}

	// 21.12.31 유저 로그인
	@PostMapping("/selectUserInfo.json")
	@ResponseBody
	public ModelMap selectUserInfo(@RequestBody LoginVo loginVo, HttpServletRequest req) {
		return loginService.selectUserInfo(loginVo);
	}
	/**
	 *
	 * 작성일 : 2021. 12. 18.
	 * 작성자 : jubs
	 * parm :vo,req
	 * return :
	 */
	@PostMapping("/loginCheck")
	//@ResponseBody
	public String loginTest(LoginVo loginVo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("userId", loginVo.getUser_id());
		session.setAttribute("userInfo", loginVo);


		return "/login/loginPage";
	}

	/**
	 * 작성일 : 2021. 12. 18.
	 * 작성자 : jubs
	 * parm : request
	 * return :  null
	 */
	@GetMapping("/sessionCheck")
	public ModelMap sessionCheck(HttpServletRequest request) {
		HttpSession session = request.getSession();

		return null;
	}

}