package com.newvisioneng.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
//pageMaker
public class PageDTO {
	//전체 글 개수
	private int total;
	//현재 페이지에서 보이는 첫번째 페이지
	private int startPage;
	//현재 페이지에서 보이는 마지막 페이지
	private int endPage;
	//실제 마지막 페이지
	private int realEnd;

	private boolean prev,next;
	
	//Criteria안에 page, pageSize 있음
	private Criteria cri;
	
	public PageDTO(int total, Criteria cri) {
		this.total = total;
		this.cri = cri;
		//Math.ceil(실수값) : 올림
		this.endPage = (int)Math.ceil(cri.getPage()/5.0)*5; //5페이지씩 
		this.startPage = endPage-4; //5페이지씩
		this.realEnd = (int)Math.ceil((total*1.0)/cri.getPageSize());
		if(endPage>realEnd) {
			endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
	
	
}
