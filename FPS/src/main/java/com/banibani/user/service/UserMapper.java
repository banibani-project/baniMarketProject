package com.banibani.user.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

import com.banibani.user.vo.UserVo;

@Repository
@Mapper
public interface UserMapper {
	ModelMap UserIdVlaueCheck();

	List<UserVo> selectGoodsList();

	int selectGoodsCount();

}
