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
	public int insertBusinessResult(Map<String, Object> map);
	//사업실적 수정
	public int updateBusinessResult(Map<String, Object> map);
	//사업실적 삭제
	public int deleteBusinessResult(Long resultNum);
	
	//사업실적 메인페이지 등록
	public int updateMainBusinessResult(Map<String, Object> map);
	//메인페이지에 보여주는 사업실적의 이미지 파일명
	public String getMainImgName(long resultNum);
	
	//메인페이지 등록된 사업실적 목록 가져오기
	public List<BusinessDTO> getMainBusinessList();
	//사업실적 메인페이지에서 등록 취소
	public int cancelMainBusinessResult(long resultNum);

}
