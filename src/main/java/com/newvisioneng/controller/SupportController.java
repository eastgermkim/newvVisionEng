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

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.EmailDTO;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.domain.PageDTO;
import com.newvisioneng.service.SupportService;
import com.newvisioneng.util.FileUtils;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/support/*")
//고객지원 탭 
public class SupportController {
	
	@Setter(onMethod_=@Autowired)
	private SupportService service;
	
	//공지사항========================================================================================================================================================
	
	//공지사항 페이지로 연결(전체 목록 가져오기)
	@GetMapping("/notice")
	public void notice(Model model, Criteria cri) {
		log.info("------list-------");
		//DB 검색
		model.addAttribute("notice_list",service.getNoticeList(cri));
		model.addAttribute("pageMaker",new PageDTO(service.getNoticeTotal(cri), cri));
	}
	/*//글목록보기(PageMaker객체 사용)
	// http://localhost:8081/support/noticePage
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listPageGET(Criteria cri, Model model) throws Exception{
		l.info("C: cri는 "+cri);
		model.addAttribute("boardList", service.listCri(cri));

		PageMaker pm = new PageMaker();
		pm.setCri(cri);
		pm.setTotalCount(service.pageCount()); //DB의 전체ROW수 입력

		// 뷰페이지로 전달 
		model.addAttribute("pm", pm);
	}*/
	
	//공지사항 게시글 하나 클릭시 or 주소창에 /support/notice/글번호 쳤을시 
	@GetMapping("/notice/{noticeNum}")
	public String notice_detail(@PathVariable("noticeNum") Long noticeNum, Model model) throws Exception {
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
		
			//다운로드 받을 파일이 위치한곳
			String location = "resources/files/notice_files/";
			
			//파일 다운로드 메소드
			FileUtils.fileDownload(location, systemName, orgName, req, response);
    }
	
	//공지사항 글 등록 view단으로 이동하는 요청
	@GetMapping("/notice_write")
	public void notice_write() {
		
	}
	//공지사항 글 등록 메소드
	@PostMapping("/notice_writeOK")
	public ModelAndView notice_writeOK(NoticeDTO noticedto,RedirectAttributes ra, MultipartFile[] file,HttpServletRequest req) throws Exception {
		
		ModelAndView mav = new ModelAndView();

		System.out.println("제목 : "+noticedto.getNoticeTitle());
		System.out.println("작성자 : "+noticedto.getNoticeWriter());
		System.out.println("내용 : "+noticedto.getNoticeContents());

		//글 등록, 등록한 글의 번호 담아주기
		long noticenum = service.noticeRegist(noticedto,file,req);
		
		//새롭게 등록한 게시글의 번호를 같이 전달하기 위해서는
		//Model 대신 RedirectAttributes를 사용한다.
/*		ra.addFlashAttribute("notice",noticedto);
		ra.addFlashAttribute("noticenum",noticenum);*/
		
		mav = new ModelAndView("redirect:/support/notice/"+noticenum);
        return mav;
	}
	
	//공지사항 글 수정 view단으로 이동(현재글 noticenum 들고)
	@GetMapping("/notice_modify")
	public String notice_modify() {
		
		
		return "/support/notice_modify";
	}
	
	//============================================================================================================================================================
	
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
