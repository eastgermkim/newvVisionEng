package com.newvisioneng.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.newvisioneng.domain.Criteria;
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
	
	//뉴스 목록
	@Override
	public List<NewsVO> getNewsList(Criteria cri) {
		log.info("getNewsList................" );
		return mapper.getNewsList(cri);
	}
	
	//뉴스 총 개수
	@Override
	public int getNewsTotal(Criteria cri) {
		return mapper.getNewsTotal(cri);
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
	
	//수정
	@Override
	public long news_modify(NewsVO news, MultipartFile[] file,HttpServletRequest req) throws Exception {
		log.info("modify..........." + news);
		
		mapper.news_update(news);
		
		long newsNum = news.getNewsNum();
		
		log.info("수정 게시글 번호............" + newsNum);
		
		//수정전에 쓰이던 이미지가 삭제되었을수도 있으니 
		//이미지DB의 noticenum을 일단 NULL로 변경
		mapper.emptyNewsImg(newsNum);
		
		//파일 업로드할 저장경로
		String uploadPath = req.getServletContext().getRealPath("/")+"resources/files/"+"news_files/";
		System.out.println("파일저장경로........................."+uploadPath);
		
		//파일정보 담기(저장경로,파일,글번호)
		List<Map<String, Object>> fileList = FileUtils.parseFileInfo(uploadPath,file,newsNum);
		
		//파일DB에 파일정보 넣어주기
		for(int i=0; i<fileList.size(); i++) {
	        mapper.insertNewsFile(fileList.get(i));
	        System.out.println("저장된 파일 이름 : "+fileList.get(i).get("SYSTEMNAME"));
	    }
		
		return newsNum;
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
		long newsNum = news.getNewsNum();
		System.out.println("newsNum........................."+newsNum);

		//파일 업로드할 저장경로
		String uploadPath = req.getServletContext().getRealPath("/")+"resources/files/"+"news_files/";
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
	
	@Override
	public void insertNewsImg(Map<String,Object> map) {
		log.info("insertNewsImg...............");
		mapper.insertNewsImg(map);
	}
	
	@Override
	public List<Map<String, Object>> readNewsFile(Long newsNum) throws Exception {
		return mapper.readNewsFile(newsNum);
	}
	
	@Override
	public boolean deleteNewsFile(String fileSystemName) throws Exception {
		return mapper.deleteNewsFile(fileSystemName);
	}
	
	@Override
	public void updateNewsNumToImgDB(String newsContents,long newsNum) {
		log.info("\ninsertNewsNumToImgDB-----------------");
		
		Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>"); //img 태그 src 추출 정규표현식
        Matcher matcher = pattern.matcher(newsContents);
         
        ArrayList<String> imgList = new ArrayList<>();
        
        while(matcher.find()){
        	System.out.println("\nimg 태그 src 추출=====================");
        	String imgPath = matcher.group(1);
        	System.out.println(imgPath);
        	
        	if(imgPath.contains("/resources/files/news_img/")) {
        		System.out.println("이건 DB 업데이트 해야징!");
        		
        		int idx = 25;
        		System.out.println("인덱스값 : "+idx);
        		
                // substring으로 뒷부분 추출
                String imgSystemName = imgPath.substring(idx+1);
                System.out.println("이미지 이름 : "+imgSystemName);
                
                imgList.add(imgSystemName);

        	}
        	System.out.println("============================");
        }
        
        System.out.println("imgList......................"+imgList);
        
        for (int i = 0; i < imgList.size(); i++) {
        	System.out.println("updateNoticeImg...............noticenum : "+newsNum+"\n이미지 이름 : "+imgList.get(i));
        	
        	Map<String, Object> map = new HashMap<String, Object>();
        	map.put("SYSTEMNAME", imgList.get(i));
        	map.put("BOARDNUM", newsNum);
        	
			mapper.updateNewsImg(map);
		}
		
		
        System.out.println("===========이미지DB에 NEWSNUM 업데이트 완료============\n");
	}

	
	@Override
	public void deleteUnusedImgs(HttpServletRequest req) {
		
		//newsnum이 null인 이미지들의 systemname을 담은 List
		List<String> newsImgsNULL= mapper.getNewsImgsNULL();
		log.info("newsImgsNULL...................."+newsImgsNULL);
		
		//이미지 실제 파일 삭제
		File file;
		for (int i = 0; i < newsImgsNULL.size(); i++) {
			file = new File(req.getServletContext().getRealPath("/")
					+"resources/files/"+"news_img/" 
					+ newsImgsNULL.get(i));
			
				if(file.exists()){ 
					if(file.delete()){ 
						log.info("삭제된 파일................." + newsImgsNULL.get(i));
					}else{
						log.info("삭제실패");
					}
				}else{ 
					log.info("파일이 존재하지 않습니다." + newsImgsNULL.get(i));
				}
		}
		
		//이미지DB 삭제(NULL인것들 전체 삭제)
		mapper.deleteNewsImgNULL();
	}
}
