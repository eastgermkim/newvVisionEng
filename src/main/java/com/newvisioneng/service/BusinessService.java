package com.newvisioneng.service;

import java.util.List;

import com.newvisioneng.domain.BusinessDTO;
import com.newvisioneng.domain.Criteria;

public interface BusinessService {

	//사업실적 목록 가져오기
	public List<BusinessDTO> getBusinessList(Criteria cri,String resultType);
	//사업실적 총 글 개수
	public int getBusinessTotal(String resultClass);

}
