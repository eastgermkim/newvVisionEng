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
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.EmailDTO;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.mapper.SupportMapper;
import com.newvisioneng.util.FileUtils;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SupportServiceImpl implements SupportService {
	
	private static final Logger logger = LoggerFactory.getLogger(SupportServiceImpl.class);
	
	@Setter(onMethod_ = @Autowired)
	private SupportMapper mapper;
	
	@Autowired
	private JavaMailSender mailSender;
	
	

//11.11 이메일 재시도
	@Override
	public void sendMail(EmailDTO dto) {
    try {
        MimeMessage mail = mailSender.createMimeMessage();
        MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
        // true는 멀티파트 메세지를 사용하겠다는 의미
        
        mailHelper.setFrom(new InternetAddress(dto.getFromMail()));
        // 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
        // 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
        //mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
        
        //제목에 들어갈 substring 수 구하기
        int sub_n = 20;
        if(dto.getContent().length() < 20) {
        	sub_n = dto.getContent().length();
        }
        
        
        mailHelper.setTo(dto.getToMail());
        mailHelper.setSubject(dto.getSubject()+" - "+dto.getFromCompany()+" / "+dto.getContent().substring(0, sub_n)+"...");
        
        String content = org.springframework.web.util.HtmlUtils.htmlEscape(dto.getContent());
        System.out.println("test1................."+content);
        content = content.replaceAll("\n", "<br/>");
        System.out.println("test2................."+content);
        dto.setContent(content);
        
        /*
         * 여기까지 계속 줄바꿈 된 상태로 들어옴.
         * System.out.println("content.........."+dto.getContent());*/
       
        
       mailHelper.setText(
    		   "<table>"
    		   		+"<tr>"
    				   +"<td>"+"<strong>문의종류</strong>"+"</td>"
    				   +" "+dto.getSubject()
    				+"</tr>"
    				+"<tr>"
	    				+"<td>"+"<strong>회사명</strong>"+"</td>"
	    				+" "+dto.getFromCompany()
    				+"</tr>"
	    				+"<td>"+"<strong>담당자</strong>"+"</td>"
	    				+" "+dto.getFromName()
    				+"</tr>"
    				+"<tr>"
	    				+"<td>"+"<strong>핸드폰 번호</strong>"+"</td>"
	    				+" "+dto.getFromPhone()
    				+"</tr>"
    				+"<tr>"
	    				+"<td>"+"<strong>이메일</strong>"+"</td>"
	    				+" "+dto.getFromMail()
    				+"</tr>"
    			+"</table>"
        		+"<br>"+"<hr style=\""+"width: 50%;\""+"align=\""+"left\""+">"
    			+"<strong> 내용</strong>"
        		+"<br>"
        		+dto.getContent(),true);
       
        
        // true는 html을 사용하겠다는 의미입니다.
        
        /*
         * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. mailHelper.setText(content);
         */
        mailSender.send(mail);
        
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	}

	@Override
	public long noticeRegist(NoticeDTO noticedto, MultipartFile[] file, HttpServletRequest req) throws Exception{
		logger.info("\nnoticeRegist................");
		
		System.out.println("DB에 글 등록 전 noticeNum..................."+noticedto.getNoticeNum());
		
		//게시글 등록
		mapper.insertNotice(noticedto);
		
		//등록한 게시글의 noticeNum 가져오기
		long noticeNum = noticedto.getNoticeNum();
		System.out.println("DB에 글 등록 후 noticeNum..................."+noticeNum);

		//파일 업로드할 저장경로
		String uploadPath = req.getServletContext().getRealPath("/")+"resources/files/"+"notice_files/";
		System.out.println("파일저장경로........................."+uploadPath);

		//파일정보 담기(저장경로,파일,글번호)
		List<Map<String, Object>> fileList = FileUtils.parseFileInfo(uploadPath,file,noticeNum);
		
		//파일DB에 파일정보 넣어주기
		System.out.println("(파일DB 저장전 확인)첨부되는 파일 개수.................."+fileList.size());
		for(int i=0; i<fileList.size(); i++) {
	        mapper.insertNoticeFile(fileList.get(i));
	        System.out.println("파일DB에 저장 : "+fileList.get(i).get("SYSTEMNAME"));
	    }
		
		//등록한 게시글의 noticeNum 반환
		return noticeNum;
	}
	
	//전체 공지사항 목록 가져오기
	@Override
	public List<NoticeDTO> getNoticeList(Criteria cri) {
		logger.info("\ngetNoticeList...WithPaging................" );
		return mapper.getNoticeList(cri);
	}
	//공지사항 총 개수
	@Override
	public int getNoticeTotal(Criteria cri) {
		return mapper.getNoticeTotal(cri);
	}
	
	
	//공지사항 하나 불러오기
	@Override
	public NoticeDTO noticeGet(Long noticeNum) {
		logger.info("\nnoticeGet--------noticeNum : "+noticeNum);
		return mapper.readNotice(noticeNum);
	}
	//공지사항 하나 불러올때 첨부한 파일도 가져오기
	@Override
	public List<Map<String, Object>> readNoticeFile(Long noticeNum) throws Exception {
		logger.info("\nreadNoticeFile--------noticeNum : "+noticeNum);
		return mapper.readNoticeFile(noticeNum);
	}

	@Override
	public void insertNoticeImg(Map<String, Object> map) {
		logger.info("\ninsertNoticeImg-----------------");
		mapper.insertNoticeImg(map);
	}

	@Override
	public void updateNoticeNumToImgDB(String noticeContents,long noticenum) {
		logger.info("\ninsertNoticeNumToImgDB-----------------");
		
		Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>"); //img 태그 src 추출 정규표현식
        Matcher matcher = pattern.matcher(noticeContents);
         
        ArrayList<String> imgList = new ArrayList<>();
        
        while(matcher.find()){
        	System.out.println("\nimg 태그 src 추출=====================");
        	String imgPath = matcher.group(1);
        	System.out.println(imgPath);
        	
        	if(imgPath.contains("/resources/files/notice_img/")) {
        		System.out.println("이건 DB 업데이트 해야징!");
        		
        		int idx = 37;
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
        	System.out.println("updateNoticeImg...............noticenum : "+noticenum+"\n이미지 이름 : "+imgList.get(i));
        	
        	Map<String, Object> map = new HashMap<String, Object>();
        	map.put("SYSTEMNAME", imgList.get(i));
        	map.put("BOARDNUM", noticenum);
        	
			mapper.updateNoticeImg(map);
		}
		
		
        System.out.println("===========이미지DB에 NOTICENUM 업데이트 완료============\n");
	}

	
	
	@Override
	public void deleteUnusedImgs(HttpServletRequest req) {
		
		//noticenum이 null인 이미지들의 systemname을 담은 List
		List<String> noticeImgsNULL= mapper.getNoticeImgsNULL();
		logger.info("noticeImgsNULL...................."+noticeImgsNULL);
		
		//이미지 실제 파일 삭제
		File file;
		for (int i = 0; i < noticeImgsNULL.size(); i++) {
			file = new File(req.getServletContext().getRealPath("/")
					+"resources/files/"+"notice_img/" 
					+ noticeImgsNULL.get(i));
			
				if(file.exists()){ 
					if(file.delete()){ 
						logger.info("삭제된 파일................." + noticeImgsNULL.get(i));
					}else{
						logger.info("삭제실패");
					}
				}else{ 
					logger.info("파일이 존재하지 않습니다." + noticeImgsNULL.get(i));
				}
		}
		
		//이미지DB 삭제(NULL인것들 전체 삭제)
		mapper.deleteNoticeImgNULL();
	}
}


