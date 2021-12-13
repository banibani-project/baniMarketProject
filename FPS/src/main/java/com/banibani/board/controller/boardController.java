package com.banibani.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class boardController {
	//21.12.12_존_사용자 페이지 > 상품 등록 및 수정 페이지
	@GetMapping("/boardMerge")
	public String boardMerge() {
		return "/board/boardMerge";
	}
}
