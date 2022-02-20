package com.banibani.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


import lombok.extern.slf4j.Slf4j;
@Slf4j
@Component
public class SessionInterceptor implements HandlerInterceptor {

	/**
	 *
	 * 작성일 : 2021. 12. 18.
	 * 작성자 : jubs
	 * return :  @return
	 */
	//- preHandle() : Controller가 수행되기 전 호출
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//TODO url 생성시 추가


		HttpSession session = request.getSession();


		//Redirect-Url
		String requestURI 		= request.getRequestURI();

		if (session == null) {
			response.sendRedirect("/login/loginPage");
			return false;

		}else {
			Object userInfo=session.getAttribute("userId");
			if(null==userInfo) {
				response.sendRedirect("/login/loginPage");
				return false;
			}

		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		Object obj=modelAndView;

		log.info("pohstHandler [{}]", modelAndView);
	}

	//afterCompletion() : View 작업까지 완료한 후 호출
    //(responseBody를 이용할 경우 UI에 이미 값을 전달한 후 해당부분이 호출 됨)
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		String requestURI = request.getRequestURI();
		String uuid = (String) request.getAttribute("user_id");
//		log.info("RESPONSE [{}][{}][{}]", uuid, requestURI, handler);
		if (ex != null) {
			log.error("afterCompletion error:", ex);
		}
	}

}
