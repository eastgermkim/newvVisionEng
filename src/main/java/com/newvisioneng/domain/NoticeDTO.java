package com.newvisioneng.domain;

import lombok.Data;

@Data
public class NoticeDTO {
	private Long noticeNum;
	private String noticeWriter;
	private String noticeTitle;
	private String noticeDate;
	private String noticeContents;
	private Long readCount;
}
