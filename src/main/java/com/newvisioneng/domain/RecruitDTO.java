package com.newvisioneng.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class RecruitDTO {
	private Long recruitNum;
	private String recruitWriter;
	private String recruitTitle;
	private Date recruitDate;
	private String recruitContents;
	private String recruitContentsText;
	private Long readCount;
	
	//이전글번호(더 최신글)
	private long prevRecruitNum;
	//다음글번호
	private long nextRecruitNum;
}
