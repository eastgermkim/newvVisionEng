package com.newvisioneng.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
//pageMaker
public class PageDTO {
	private int total;
	private int startPage;
	private int endPage;
	private int realEnd;
	private boolean prev,next;
	
	//Criteria안에 page, pageSize 있음
	private Criteria cri;
	
	public PageDTO(int total, Criteria cri) {
		this.total = total;
		this.cri = cri;
		//Math.ceil(실수값) : 올림
		this.endPage = (int)Math.ceil(cri.getPage()/5.0)*5;
		this.startPage = endPage-4;
		this.realEnd = (int)Math.ceil((total*1.0)/cri.getPageSize());
		if(endPage>realEnd) {
			endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
	
	
}
