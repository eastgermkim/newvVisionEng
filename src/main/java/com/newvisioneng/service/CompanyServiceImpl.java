package com.newvisioneng.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.newvisioneng.domain.NewsVO;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.mapper.CompanyMapper;
import com.newvisioneng.util.FileUtils;

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
	
	@Override
	public NewsVO news_get(Long newsNum) {
		log.info("get..........." + newsNum);
		return mapper.news_read(newsNum);
	}
	
	@Override
	public boolean news_modify(NewsVO news) {
		log.info("modify..........." + news);
		return mapper.news_update(news) == 1;
	}
	
	@Override
	public boolean news_remove(Long newsNum) {
		log.info("remove..........." + newsNum);
		return mapper.news_delete(newsNum) == 1;
	}

	
	@Override
	public long newsRegist(NewsVO news, MultipartFile[] file, HttpServletRequest req) throws Exception{
		log.info("------regist------");
		
		//게시글 등록
		mapper.news_register(news);
		
		//등록한 게시글의 newsNum 가져오기
		long newsNum = mapper.getNewsNum(news.getNewsWriter());
		System.out.println("newsNum........................."+newsNum);

		//파일 업로드할 저장경로
		String uploadPath = req.getServletContext().getRealPath("/")+"resources/files/"+"notice_files/";
		System.out.println("파일저장경로........................."+uploadPath);

		//파일정보 담기(저장경로,파일,글번호)
		List<Map<String, Object>> fileList = FileUtils.parseFileInfo(uploadPath,file,newsNum);
		
		//파일DB에 파일정보 넣어주기
		for(int i=0; i<fileList.size(); i++) {
	        mapper.insertNewsFile(fileList.get(i));
	        System.out.println("저장된 파일 이름 : "+fileList.get(i).get("SYSTEMNAME"));
	    }
		
		//등록한 게시글의 noticeNum 반환
		return newsNum;
	}
	
}
