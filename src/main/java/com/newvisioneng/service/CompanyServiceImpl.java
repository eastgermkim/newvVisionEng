package com.newvisioneng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newvisioneng.domain.NewsVO;
import com.newvisioneng.mapper.CompanyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CompanyServiceImpl implements CompanyService {
	
	@Setter(onMethod_ = @Autowired)
	private CompanyMapper mapper;
	
	@Override
	public List<NewsVO> getNewsList() {
		log.info("getNewsList................" );
		return mapper.getNewsList();
	}
	
	@Override
	public void news_register(NewsVO news) {
		log.info("news_register................" + news);
		mapper.news_register(news);
	}
	
}
