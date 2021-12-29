package com.newvisioneng.service;

import java.util.List;

import com.newvisioneng.domain.BusinessDTO;
import com.newvisioneng.domain.Criteria;

public interface BusinessService {

	//사업실적 목록 가져오기
	public List<BusinessDTO> getBusinessList(Criteria cri,String resultClass);
	//사업실적 총 글 개수
	public int getBusinessTotal(String resultClass);
	//사업실적 새 글 등록
	public boolean registBusinessResult(String resultClass, String resultContnents);
	//사업실적 글 수정
	public boolean modifyBusinessResult(long resultNum, String resultClass, String resultContnents);
	//사업실적 글 삭제
	public boolean deleteBusinessResult(long resultNum);
	
	//사업실적 메인페이지에 등록
	public boolean addMainBusinessResult(long resultNum, String fileName);
	//메인페이지에 보여주는 사업실적의 이미지 파일명
	public String getMainImgName(long resultNum);
	
	//메인페이지 등록된 사업실적 목록 가져오기
	public List<BusinessDTO> getMainBusinessList();

}
