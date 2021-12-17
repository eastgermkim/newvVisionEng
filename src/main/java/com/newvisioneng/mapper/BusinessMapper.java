package com.newvisioneng.mapper;

import java.util.List;
import java.util.Map;

import com.newvisioneng.domain.BusinessDTO;
import com.newvisioneng.domain.Criteria;

public interface BusinessMapper {

	//사업실적 전체 목록 불러오기
	public List<BusinessDTO> getBusinessList(Map<String, Object> map);
	//사업실적 전체개수
	public int getBusinessTotal(String resultClass);
	//사업실적 등록
	public void insertBusinessResult(Map<String, Object> map);
	//사업실적 삭제
	public int deleteBusinessResult(Long resultNum);

}
