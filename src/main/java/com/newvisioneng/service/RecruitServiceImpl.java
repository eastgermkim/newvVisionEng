package com.newvisioneng.service;


import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.RecruitDTO;
import com.newvisioneng.mapper.RecruitMapper;
import com.newvisioneng.util.FileUtils;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class RecruitServiceImpl implements RecruitService {
	
	private static final Logger logger = LoggerFactory.getLogger(RecruitServiceImpl.class);
	
	@Setter(onMethod_ = @Autowired)
	private RecruitMapper mapper;
	
	//전체 채용공고 목록 가져오기
	@Override
	public List<RecruitDTO> getRecruitList(Criteria cri) {
		logger.info("\ngetRecruitList...WithPaging................" );
		return mapper.getRecruitList(cri);
	}
	//공지사항 총 개수
	@Override
	public int getRecruitTotal(Criteria cri) {
		return mapper.getRecruitTotal(cri);
	}
	
	//공지사항 하나 불러오기
	@Override
	public RecruitDTO recruitGet(Long recruitNum) {
		logger.info("\nrecruitGet--------recruitNum : "+recruitNum);
		return mapper.readRecruit(recruitNum);
	}
	//공지사항 하나 불러올때 첨부한 파일도 가져오기
	@Override
	public List<Map<String, Object>> readRecruitFile(Long recruitNum) throws Exception {
		logger.info("\nreadRecruitFile--------recruitNum : "+recruitNum);
		return mapper.readRecruitFile(recruitNum);
	}

	//공지사항 글 등록
	@Override
	public long recruitRegist(RecruitDTO recruitdto, MultipartFile[] file, HttpServletRequest req) throws Exception{
		logger.info("\nrecruitRegist................");
		
		System.out.println("DB에 글 등록 전 recruitNum..................."+recruitdto.getRecruitNum());
		
		//게시글 등록
		mapper.insertRecruit(recruitdto);
		
		//등록한 게시글의 recruitNum 가져오기
		long recruitNum = recruitdto.getRecruitNum();
		System.out.println("DB에 글 등록 후 recruitNum..................."+recruitNum);

		//파일 업로드할 저장경로
		String uploadPath = req.getServletContext().getRealPath("/")+"resources/files/"+"recruit_files/";
		System.out.println("파일저장경로........................."+uploadPath);

		//파일 저장 및 정보 담기(저장경로,파일,글번호)
		List<Map<String, Object>> fileList = FileUtils.parseFileInfo(uploadPath,file,recruitNum);
		
		//파일DB에 파일정보 넣어주기
		System.out.println("(파일DB 저장전 확인)첨부되는 파일 개수.................."+fileList.size());
		for(int i=0; i<fileList.size(); i++) {
	        mapper.insertRecruitFile(fileList.get(i));
	        System.out.println("파일DB에 저장 : "+fileList.get(i).get("SYSTEMNAME"));
	    }
		
		//등록한 게시글의 recruitNum 반환
		return recruitNum;
	}
	//공지사항 글 작성 중에 이미지 삽입시
	@Override
	public void insertRecruitImg(Map<String, Object> map) {
		logger.info("\ninsertRecruitImg-----------------");
		mapper.insertRecruitImg(map);
	}
	//공지사항 글 등록, 수정 시 최종적으로 삽입된 이미지들만 DB에 글번호 넣어주기
	@Override
	public void updateRecruitNumToImgDB(String recruitContents,long recruitnum) {
		logger.info("\nupdateRecruitNumToImgDB-----------------");
		
		Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>"); //img 태그 src 추출 정규표현식
        Matcher matcher = pattern.matcher(recruitContents);
         
        ArrayList<String> imgList = new ArrayList<>();
        
        while(matcher.find()){
        	System.out.println("\n=================img 태그 src 추출=====================");
        	String imgPath = matcher.group(1);
        	System.out.println(imgPath);
        	
        	String path = "/resources/files/recruit_img/";
        	
        	if(imgPath.contains(path)) {
        		System.out.println("이건 DB 업데이트 해야징!");
        		
        		int idx = path.length()-1;
        		System.out.println("인덱스값 : "+idx);
        		
                // substring으로 뒷부분 추출
                String imgSystemName = imgPath.substring(idx+1);
                System.out.println("이미지 이름 : "+imgSystemName);
                
                imgList.add(imgSystemName);

        	}
        	System.out.println("========================================================");
        }
        
        System.out.println("imgList......................"+imgList);
        
        for (int i = 0; i < imgList.size(); i++) {
        	System.out.println("updateRecruitImg...............recruitnum : "+recruitnum+"\n이미지 이름 : "+imgList.get(i));
        	
        	Map<String, Object> map = new HashMap<String, Object>();
        	map.put("SYSTEMNAME", imgList.get(i));
        	map.put("BOARDNUM", recruitnum);
        	
			mapper.updateRecruitImg(map);
		}
        
        System.out.println("===========이미지DB에 RECRUITNUM 업데이트 완료============\n");
	}

	//공지사항 첨부파일 삭제시 파일DB에서 삭제
	@Override
	public boolean deleteRecruitFile(String fileSystemName) throws Exception {
		return mapper.deleteRecruitFile(fileSystemName);
	}
	
	//공지사항DB 수정, 이미지DB 수정, 파일DB 등록
	@Override
	public void modifyRecruit(RecruitDTO recruit, MultipartFile[] file, HttpServletRequest req) throws Exception{
		log.info("modify..........." + recruit);
		
		//게시글 수정
		mapper.updateRecruit(recruit);
		
		long recruitnum = recruit.getRecruitNum();
		
		log.info("수정 게시글 번호............" + recruitnum);
		
		//수정전에 쓰이던 이미지가 삭제되었을수도 있으니 
		//이미지DB의 recruitnum을 일단 NULL로 변경
		mapper.emptyRecruitImg(recruitnum);
		
		//파일 업로드할 저장경로
		String uploadPath = req.getServletContext().getRealPath("/")+"resources/files/"+"recruit_files/";
		System.out.println("파일저장경로........................."+uploadPath);
		
		//파일 저장 및 정보 담기(저장경로,파일,글번호)
		List<Map<String, Object>> fileList = FileUtils.parseFileInfo(uploadPath,file,recruitnum);
		
		//파일DB에 파일정보 넣어주기
		System.out.println("(파일DB 저장전 확인)첨부되는 파일 개수.................."+fileList.size());
		for(int i=0; i<fileList.size(); i++) {
	        mapper.insertRecruitFile(fileList.get(i));
	        System.out.println("파일DB에 저장 : "+fileList.get(i).get("SYSTEMNAME"));
	    }
	}
	
	//공지사항DB 삭제
	@Override
	public boolean removeRecruit(Long recruitnum) {
		log.info("remove..........." + recruitnum);
		return mapper.deleteRecruit(recruitnum) == 1;
	}

	
	//결국 공지사항 글 작성에 사용안된 이미지들 삭제하기
	@Override
	public void deleteUnusedImgs(HttpServletRequest req) {
		
		//recruitnum이 null인 이미지들의 systemname을 담은 List
		List<String> recruitImgsNULL= mapper.getRecruitImgsNULL();
		logger.info("recruitImgsNULL...................."+recruitImgsNULL);
		
		//이미지 실제 파일 삭제
		File file;
		for (int i = 0; i < recruitImgsNULL.size(); i++) {
			file = new File(req.getServletContext().getRealPath("/")
					+"resources/files/"+"recruit_img/" 
					+ recruitImgsNULL.get(i));
			
				if(file.exists()){ 
					if(file.delete()){ 
						logger.info("삭제된 파일................." + recruitImgsNULL.get(i));
					}else{
						logger.info("삭제실패");
					}
				}else{ 
					logger.info("파일이 존재하지 않습니다." + recruitImgsNULL.get(i));
				}
		}
		
		//이미지DB 삭제(NULL인것들 전체 삭제)
		mapper.deleteRecruitImgNULL();
	}

	
}


