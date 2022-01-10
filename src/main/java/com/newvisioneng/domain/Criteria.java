package com.newvisioneng.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString 
//검색의 기준
public class Criteria {
	//현재 페이지 번호
	private int page;
	//한 페이지에 출력할 글 개수
	private int pageSize;
	private String s_type;
	private String s_keyword;
	
	public Criteria() {
		//this() : 이 클래스의 생성자
		//this.page = 1;
		//this.pageSize = 10;
		this(1,10);
	}

	public Criteria(int page, int pageSize) {
		this.page = page;
		this.pageSize = pageSize;
	}
	
	//페이징처리 시작하는 값생성
		//멤버변수가 아니지만 gettet와 setter를 생성하면 Mapper에서 접근가능하다.
		//Mapper에서 사용하는 법 #{pageStart}
	public int getPageStart() {
		return (this.page - 1)*this.pageSize;
	}
	
	
	//toString()
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", pageSize=" + pageSize + ", s_keyword=" + s_keyword + "]";
	}
	
	
	//현재 객체가 가지고 있는 page과 pageSize 등으로 쿼리스트링을 만들어서 리턴하는 메소드
	public String getListLink() {
		//?page=3&pageSize=10
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("s_type", this.s_type)
				.queryParam("s_keyword", this.s_keyword)
				.queryParam("page", this.page);
		return builder.toUriString();
	}
}

















