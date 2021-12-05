package com.banibani.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.banibani.user.vo.UserVo;

@Service
public class UserSerivce {
	@Autowired
	public UserMapper userMapper;

	/**
	 * 작성자 : JJH
	 * 바라보는 데이터 : openUserCreatePage.jsp
	*/
	public ModelMap UserIdVlaueCheck(UserVo userVo) {
		return userMapper.UserIdVlaueCheck();
	}

	//21.12.02_존_인기매물/우리동네매물 리스트
	public List<UserVo> selectGoodsList() {
		return userMapper.selectGoodsList();
	}

	//21.12.02_존_인기매물/우리동네매물 갯수
	public int selectGoodsCount() {
		return userMapper.selectGoodsCount();
	}

}
