package com.newvisioneng.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeDTO {
	private Long noticeNum;
	private String noticeWriter;
	private String noticeTitle;
	private Date noticeDate;
	private String noticeContents;
	private Long readCount;
}
