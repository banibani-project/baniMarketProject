package com.banibani.login.service.impl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.banibani.login.dao.LoginDao;
import com.banibani.login.service.LoginService;
import com.banibani.login.vo.LoginVo;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;

	// 아이디 중복체크 검사
	@Override
	public ModelMap selectOneUserIdChecked(LoginVo loginVo) {
		String msg = "";
		String user_id = loginVo.getUser_id();

		int resultCnt = loginDao.selectOneUserIdChecked(user_id);

		if(resultCnt == 1) {
			msg = "false";
		} else if(resultCnt == 0) {
			msg = "success";
		}

		ModelMap output_data = new ModelMap();
		output_data.put("msg", msg);
		return output_data;
	}

	// 회원가입
	@Override
	public ModelMap insertUserInfoCreate(LoginVo loginVo) {
		String msg = "";
		System.out.println(loginVo);

		/* user_type_code  U = 유저  A = 관리자 */
		loginVo.setUser_type_code("U");
		/* user_cd  유저인 경우  : U00001  관리자인 경우 : A00001 */
		String seq = loginDao.selectUserInfoSequence();
		loginVo.setUser_cd("U" + seq);
		System.out.println("User_cd : " + loginVo.getUser_cd());

		// 암복화 로직
		loginVo.setUser_password(BCrypt.hashpw(loginVo.getUser_password(), BCrypt.gensalt()));
		System.out.println("User_password" + loginVo.getUser_password());
		System.out.println("입력 데이터 : " + loginVo);

		int resultCnt = loginDao.insertUserInfoCreate(loginVo);

		if(resultCnt == 1) {
			msg = "success";
		} else if(resultCnt == 0) {
			msg = "false";
		}

		ModelMap output_data = new ModelMap();
		output_data.put("msg", msg);
		System.out.println("output_data : " + output_data);
		return output_data;
	}

	// 로그인
	@Override
	public ModelMap selectUserInfo(LoginVo loginVo, HttpServletRequest req) {
		int cpUserInfo;
		String msg;
		System.out.println("암복화 전 loginVo : " + loginVo);

		// 들어온 데이터 암호화 비교
		loginVo.setUser_password(BCrypt.hashpw(loginVo.getUser_password(), BCrypt.gensalt()));
		System.out.println("암복화 후 loginVo : " + loginVo);

		cpUserInfo = loginDao.selectUserInfo(loginVo);

		// kakao 혹은 naver 로그인 제작시 추가 로직 필요
		if(cpUserInfo == 1) {
			msg = loginVo.getUser_name() + "님 환영합니다.";
		} else if(cpUserInfo > 1) {
			// 검색 카운트가 1이상일 때 중복자의 처리가 잘못된 것임으로 관리자의 개입이 필요하다.
			msg = "문제가 발생하였습니다. \n관리자에게 문의 주세요.";
		} else {
			msg = "입력된 아이디 혹은 비밀번호가 틀립니다.";
		}

		ModelMap outputMsg = new ModelMap();
		outputMsg.put("msg", msg);

		return outputMsg;
	};




}
