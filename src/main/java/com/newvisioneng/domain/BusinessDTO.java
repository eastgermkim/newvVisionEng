package com.newvisioneng.domain;

import lombok.Data;

@Data
public class BusinessDTO {
	private Long resultNum;
	private String resultClass; /*군사시설, 공공기관, 민간기업*/
	private Long show_Mainpage; /*기본값 0, 메인페이지에 보여줄시 1로 변경*/
	private String resultContnents;
	
}
