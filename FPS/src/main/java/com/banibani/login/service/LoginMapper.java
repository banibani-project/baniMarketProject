package com.banibani.login.service;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.banibani.login.vo.LoginVo;

@Repository
@Mapper
public interface LoginMapper {
	List<LoginVo> selectTest();
}
