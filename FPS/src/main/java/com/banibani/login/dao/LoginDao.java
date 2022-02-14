package com.banibani.login.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.banibani.login.vo.LoginVo;

@Repository("loginDao")
@Mapper
public interface LoginDao {

	int selectOneUserIdChecked(String user_id);

	String selectUserInfoSequence();
	int insertUserInfoCreate(LoginVo loginVo);

	int selectUserInfo(LoginVo loginVo);



}
