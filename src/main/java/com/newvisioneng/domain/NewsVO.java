package com.newvisioneng.domain;

import lombok.Data;

@Data
public class NewsVO {
	private Long newsNum;
	private String newsTitle;
	private String newsSubTitle;
	private String newsLink;
	private String newsWriter;
	private String newsContents;
	private String newsDate;
	private String newsWriteDate;
}
