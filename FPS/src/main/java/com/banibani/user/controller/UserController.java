package com.banibani.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.banibani.login.vo.LoginVo;
import com.banibani.user.service.UserSerivce;
import com.banibani.user.vo.UserVo;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserSerivce userService;
	
	//21.12.02_존_사용자 페이지 > 메인 페이지 (상품 리스트)
	@GetMapping("/userList")
    public String userList() {
        return "/user/userList";
    }
	
	//21.12.02_존_사용자 페이지 > 인기매물/우리동네매물 리스트 가져오기 동작
	@GetMapping("/selectGoodsListPs")
	@ResponseBody
	public Map<String, Object> selectGoodsListPs() throws Exception{
		Map<String, Object> result = new HashMap();
		
		int totalCount = userService.selectGoodsCount();
		
		List<UserVo> goodList = userService.selectGoodsList();
		for(int a=0;a<goodList.size();a++) {
			System.out.println("나는야"+goodList.get(a));
		}
		
		
		// 응답 데이터 셋팅
        result.put("code", "0000");
        
        return result;
		
    }
	
	//21.12.02_존_사용자 페이지 > 특정 상품 페이지
	@GetMapping("/userDetail")
    public String userDetail() {
        return "/user/userDetail";
    }
	
	//21.12.02_존_사용자 페이지 > 본인 정보 수정 페이지 
	@GetMapping("/myInfo")
    public String myInfo() {
        return "/user/myInfo";
    }

	@RequestMapping(value="/openUserCreate.do")
	public String openUserCreate() {

		return "";
	}

	/**
	 * 작성일 : 2021 - 10 - 31
	 * 작성자 : JJH
	 * 바라보는 데이터 : openUserCreatePage.jsp
	 * 파라미터 데이터 : [ userId : value, userPassword : vale, userName : value, userPhone : value, userAge : value, userAddress : value, userTypeCode : value ]
	 */
	@ResponseBody
	@RequestMapping(value="/UserIdVlaueCheck")
	public ModelMap UserIdVlaueCheck (@RequestBody UserVo userVo) {

		return userService.UserIdVlaueCheck(userVo);

	}


}
