package com.newvisioneng.controller;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.mail.BodyPart;
import javax.mail.internet.MimeBodyPart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.datasource.init.ScriptUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
	public String notice_detail(@PathVariable("noticeNum") Long noticeNum,Model model) {
		model.addAttribute("noticeNum",noticeNum);
		System.out.println("11111111111");
		return "/support/notice_detail";
	}
	//그때 페이지 열리자마자 자바스크립트로 
	@GetMapping(value="/notice/get/{noticeNum}",produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<NoticeDTO> notice_detail(@PathVariable("noticeNum") Long noticeNum){
	
		//임시 Test용으로 일단 DTO 수동으로 작성
		NoticeDTO noticeDto = new NoticeDTO();
		noticeDto.setNoticeNum(noticeNum);
		noticeDto.setNoticeDate("2021.11.04");
		noticeDto.setNoticeTitle("제일 최근 공지사항 게시물이 가장 위에 오도록");
		noticeDto.setNoticeWriter("관리자");
		noticeDto.setNoticeContents("첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 ");
		
		System.out.println("2222222222");
		System.out.println(noticeDto);
		
		return new ResponseEntity<>(noticeDto,HttpStatus.OK);
	}
	//공지사항 글 등록 페이지로 연결
	@GetMapping("/notice_write")
	public void notice_write() {
		
	}
	
	//서버 API 는 Spring 를 기반으로 업로드된 이미지에 대한 정보를 JSON 형태로 응답하게 작성하면 된다. 

	//파일 업로드를 서버측에 구축을 해 주어야 한다.
	//함수를 통해 파일이 업로드가 되고, 해당 리턴값을 json으로 리턴하면 xhr 에서 json으로 받는 형태
	// 파일을 업로드 후에는
	//	{url:'업로드된 파일 주소'}
	//	형태의 데이터를 반환해 주시면 될 것 같습니다.
	@RequestMapping(value = "/notice/fileupload", method = RequestMethod.POST, produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public String fileUpload() {
		
		
	        return "{ \"uploaded\" : true, \"url\" : \"/resources/temp_img/댕댕이.jpg\"}";
	 
	}
	    	
	
	//이메일 문의 페이지로 연결
	@GetMapping("/email")
	public void email() {
		
	}
	 
	 //메일 발송 메소드
	 @RequestMapping("send.do") 
	 public String send(@ModelAttribute EmailDTO dto, RedirectAttributes attr) {
		 try {
			 
			 //수신받을 이메일 지정 nv3000@nate.com으로 바뀔 예정
			 dto.setToMail("eastgerm@nate.com");;
	
			 
			// dto(메일관련 정보)를 sendMail에 저장함
			 service.sendMail(dto); 
			 attr.addFlashAttribute("message","이메일 전송이 성공하였습니다!");
			 
		 } catch (Exception e) {
			 e.printStackTrace();
			 attr.addFlashAttribute("message","이메일 전송이 실패하였습니다! 잠시 후 다시 시도해주세요.");
		 }
		 
		// 실패했으므로 다시 write jsp 페이지로 이동함
		 return "redirect:/support/email"; 
	 }
	}
