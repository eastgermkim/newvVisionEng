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
    	
		return mapper.getBusinessList(map);
	}
	//사업실적 총 개수
	@Override
	public int getBusinessTotal(String resultClass) {
		
		return mapper.getBusinessTotal(resultClass);
	}

}
