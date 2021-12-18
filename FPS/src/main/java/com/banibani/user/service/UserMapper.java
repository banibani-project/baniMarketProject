package com.banibani.user.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;

import com.banibani.board.vo.BoardVo;
import com.banibani.user.vo.UserVo;

@Repository
@Mapper
public interface UserMapper {
	ModelMap UserIdVlaueCheck();

	List<BoardVo> selectGoodsList(BoardVo boardVo);

	int selectGoodsCount();

	UserVo selectGoodsDetail(BoardVo boardVo);

}
