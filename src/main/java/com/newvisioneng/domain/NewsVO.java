package com.newvisioneng.domain;

import lombok.Data;

@Data
public class NewsVO {
	private Long newsNum;
	private String newsWriter;
	private String newsTitle;
	private String newsDate;
	private String newsContents;
	private Long readcount;
}
