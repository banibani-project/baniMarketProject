package com.banibani.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import com.banibani.user.vo.UserVo;

@Component
public class SessionInterceptor implements HandlerInterceptor {
	/**
	 *
	 * 작성일 : 2021. 12. 18.
	 * 작성자 : jubs
	 * return :  @return
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//TODO url 생성시 추가
		HttpSession session = request.getSession();
		Object userVo = session.getAttribute("userInfo");

		if("/login/loginCheck".equals(request.getRequestURI())) {
			return true;
		}

		//로그인 페이지 시 true 로 패스.
		if("/login/loginPage".equals(request.getRequestURI())) {
			return true;
		}

		if(null == userVo) {
			response.sendRedirect("/login/loginPage");
			return false;
		}

		return true;
	}

}
