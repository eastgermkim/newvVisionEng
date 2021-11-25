package com.newvisioneng.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.newvisioneng.domain.EmailDTO;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.service.SupportService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/support/*")
//고객지원 탭 
public class SupportController {
	
	@Setter(onMethod_=@Autowired)
	private SupportService service;
	
	//공지사항 페이지로 연결
	@GetMapping("/notice")
	public void notice() {
		
	}

	//공지사항 게시글 하나 클릭시
	@GetMapping("/notice/{noticeNum}")
	public String notice_detail(@PathVariable("noticeNum") Long noticeNum,Model model) throws Exception {
		NoticeDTO notice = service.noticeGet(noticeNum);
		model.addAttribute("notice",notice);
		
		List<Map<String, Object>> fileList = service.readNoticeFile(noticeNum);
		model.addAttribute("file", fileList);
		
		return "/support/notice_detail";
	}
	//공지사항 게시글 파일 다운로드시
	@PostMapping("/noticeFiledown")
	public void download(HttpServletRequest req, HttpServletResponse response, 
			@RequestParam(value="FILE_SYSTEMNAME") String systemName,  
			@RequestParam(value="FILE_ORGNAME") String orgName) 
		throws Exception {
			System.out.println("파일 저장 시작..................");
			System.out.println("업로드 된 이름 : "+systemName);
			System.out.println("원래이름 : "+orgName);
			System.out.println("==========================================");
		
        	String location = "notice_files/"+systemName;
        	String path = req.getServletContext().getRealPath("/")+"resources/files/" + location; 
        	// 경로에 접근할 때 역슬래시('\') 사용
        	
        	File file = new File(path);
        	response.setHeader("Content-Disposition", "attachment;filename=" + orgName); // 다운로드 되거나 로컬에 저장되는 용도로 쓰이는지를 알려주는 헤더
        	
        	FileInputStream fileInputStream = new FileInputStream(path); // 파일 읽어오기 
        	OutputStream out = response.getOutputStream();
        	
        	int read = 0;
                byte[] buffer = new byte[1024];
                while ((read = fileInputStream.read(buffer)) != -1) { // 1024바이트씩 계속 읽으면서 outputStream에 저장, -1이 나오면 더이상 읽을 파일이 없음
                    out.write(buffer, 0, read);
                }
    }
	
	//공지사항 글 등록 view단으로 이동하는 요청
	@GetMapping("/notice_write")
	public void notice_write() {
		
	}
	//공지사항 글 등록 메소드
	@PostMapping("/notice_writeOK")
	public ModelAndView notice_writeOK(NoticeDTO noticedto,RedirectAttributes ra, MultipartFile[] file,HttpServletRequest req) throws Exception {
		
		ModelAndView mav = new ModelAndView();

		System.out.println("날짜 : ");
		System.out.println("제목 : "+noticedto.getNoticeTitle());
		System.out.println("작성자 : "+noticedto.getNoticeWriter());
		System.out.println("내용 : "+noticedto.getNoticeContents());

		long noticenum = service.noticeRegist(noticedto,file,req);
		
		//새롭게 등록한 게시글의 번호를 같이 전달하기 위해서는
		//Model 대신 RedirectAttributes를 사용한다.
/*		ra.addFlashAttribute("notice",noticedto);
		ra.addFlashAttribute("noticenum",noticenum);*/
		
		mav = new ModelAndView("redirect:/support/notice/"+noticenum);
        return mav;
	}
	
	
	    	
	
	//이메일 문의 페이지로 연결
	@GetMapping("/customer")
	public void email() {
	}
	 
	 //메일 발송 메소드
	 @RequestMapping("send.do") 
	 public String send(@ModelAttribute EmailDTO dto, RedirectAttributes attr) {
		 try {
			 
			 //수신받을 이메일 지정 nv3000@nate.com으로 바뀔 예정
			 dto.setToMail("eastgerm@nate.com");;
			/* System.out.println("내용:......................"+dto.getContent());*/
			 
			// dto(메일관련 정보)를 sendMail에 저장함
			 service.sendMail(dto); 
			 attr.addFlashAttribute("message","이메일 전송이 성공하였습니다!");
			 
		 } catch (Exception e) {
			 e.printStackTrace();
			 attr.addFlashAttribute("message","이메일 전송이 실패하였습니다! 잠시 후 다시 시도해주세요.");
		 }
		 
		// 실패했으므로 다시 write jsp 페이지로 이동함
		 return "redirect:/support/customer"; 
	 }
	}
