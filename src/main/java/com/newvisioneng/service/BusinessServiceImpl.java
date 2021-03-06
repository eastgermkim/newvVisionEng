package com.newvisioneng.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newvisioneng.domain.BusinessDTO;
import com.newvisioneng.domain.Criteria;
import com.newvisioneng.mapper.BusinessMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BusinessServiceImpl implements BusinessService{
	
private static final Logger logger = LoggerFactory.getLogger(BusinessServiceImpl.class);
	
	@Setter(onMethod_ = @Autowired)
	private BusinessMapper mapper;
	
	//전체 사업실적 목록 가져오기
	@Override
	public List<BusinessDTO> getBusinessList(Criteria cri,String resultClass) {
		logger.info("\ngetBusinessList...WithPaging................" );
		Map<String, Object> map = new HashMap<String, Object>();
			
		map.put("resultClass", resultClass);
    	map.put("pageStart", cri.getPageStart());
    	map.put("pageSize", cri.getPageSize());
    	map.put("s_keyword", cri.getS_keyword());
    	
		return mapper.getBusinessList(map);
	}
	
	//사업실적 총 개수
	@Override
	public int getBusinessTotal(String resultClass, String s_keyword) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("resultClass", resultClass);
		map.put("s_keyword", s_keyword);
		return mapper.getBusinessTotal(map);
	}
	
	//사업실적 등록
	@Override
	public boolean registBusinessResult(String resultClass, String resultContents) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("resultClass", resultClass);
		map.put("resultContents", resultContents);
		
		return mapper.insertBusinessResult(map)==1;
	}
	//사업실적 수정
	@Override
	public boolean modifyBusinessResult(long resultNum, String resultClass, String resultContents) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("resultNum", resultNum);
		map.put("resultClass", resultClass);
		map.put("resultContents", resultContents);
		
		return mapper.updateBusinessResult(map)==1;
	}
	
	//사업실적 삭제
	@Override
	public boolean deleteBusinessResult(long resultNum) {
		return mapper.deleteBusinessResult(resultNum) == 1;
	}

	
	//사업실적 메인페이지에 등록
	@Override
	public boolean addMainBusinessResult(long resultNum,String fileName) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("resultNum", resultNum);
		map.put("fileName", fileName);
		return mapper.updateMainBusinessResult(map) == 1;
	}
	
	//메인페이지에 보여주는 사업실적의 이미지 파일명 가져오기
	@Override
	public String getMainImgName(long resultNum) {
		
		return mapper.getMainImgName(resultNum);
	}

	//메인 사업실적 목록 가져오기
	@Override
	public List<BusinessDTO> getMainBusinessList() {
		logger.info("\ngetMainBusinessList................" );
		
		return mapper.getMainBusinessList();
	}

	//사업실적 메인페이지에서 등록 취소
	@Override
	public boolean cancelMainBusinessResult(long resultNum) {
		return mapper.cancelMainBusinessResult(resultNum) == 1;
	}

}
