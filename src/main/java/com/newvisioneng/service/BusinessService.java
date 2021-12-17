package com.newvisioneng.service;

import java.util.List;

import com.newvisioneng.domain.BusinessDTO;
import com.newvisioneng.domain.Criteria;

public interface BusinessService {

	//사업실적 목록 가져오기
	public List<BusinessDTO> getBusinessList(Criteria cri,String resultType);
	//사업실적 총 글 개수
	public int getBusinessTotal(String resultClass);
	//사업실적 새 글 등록
	public boolean registBusinessResult(String resultClass, String resultTitle);
	//사업실적 글 삭제
	public boolean deleteBusinessResult(Long resultNum);

}
