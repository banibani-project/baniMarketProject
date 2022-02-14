package com.banibani.board.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVo {
	//21.12.07 페이징 처리
	private int startLimit;
	private int limitSize;
		
	//21.12.09 상품 관련
	private String production_cd;	//제품코드
	private String production_title;	//제품제목
	private String production_content;	//제품내용
	private int production_cost;	//제품가격
	private int like_count;	//호감개수
	private int comment_count;	//채팅개수
	private String type_list;	//인기매물(P),우리동네매물(T)
	private String file_whole;	//파일 경로 + 파일 이름(서버저장용)
}
