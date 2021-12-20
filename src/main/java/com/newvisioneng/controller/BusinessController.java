package com.newvisioneng.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.PageDTO;
import com.newvisioneng.service.BusinessService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/business/*")
//New Vision ENG 탭 
public class BusinessController {

	@Setter(onMethod_=@Autowired)
	private BusinessService service;
	//gd
	//사업소개 페이지로 연결
	@GetMapping("/business_cctv")
	public String cctv() {
		
		return "/business/business_cctv";
	}
	//사업소개 페이지로 연결
	@GetMapping("/business_com")
	public String communicate() {
		
		return "/business/business_com";
	}
	//사업소개 페이지로 연결
	@GetMapping("/business_sp")
	public String special() {
		
		return "/business/business_sp";
	}
	//사업소개 페이지로 연결
	@GetMapping("/business_fo")
	public String introduce() {
		
		return "/business/business_fo";
	}

	
//============================================================================
	
	//사업실적 페이지로 연결(+목록 가져오기)
	@GetMapping("/result")
	public String result(Model model,Criteria cri, HttpServletRequest req) {
		log.info("------business_list-------");
		
		cri.setPageSize(15);
		log.info("cri : "+cri);
		
		//DB 검색
		model.addAttribute("business_list_1",service.getBusinessList(cri,"군사시설"));
		model.addAttribute("pageMaker1",new PageDTO(service.getBusinessTotal("군사시설"), cri));
		
		model.addAttribute("business_list_2",service.getBusinessList(cri,"공공기관"));
		model.addAttribute("pageMaker2",new PageDTO(service.getBusinessTotal("공공기관"), cri));
		
		model.addAttribute("business_list_3",service.getBusinessList(cri,"민간기업"));
		model.addAttribute("pageMaker3",new PageDTO(service.getBusinessTotal("민간기업"), cri));
		
		return "/business/result";
	}
	
	//사업실적 페이지에서 ajax로 각 리스트 페이지 이동
	@GetMapping("/result_pageAjax")
	public String result_pageAjax(Model model,Criteria cri, HttpServletRequest req,
			@RequestParam(value="msg",required=false)String msg,
			@RequestParam(value="page",required=false)String page,
			@RequestParam(value="tabId",required=false)String tabId
			) {
		log.info("-----------------------------------------------");
		log.info("------------business_list_pageAjax-------------");
		
		log.info("넘어온 msg값.........."+msg);
		log.info("넘어온 page값.........."+page);
		log.info("넘어온 tabId값.........."+tabId);
		
		cri.setPageSize(15);
		cri.setPage(Integer.parseInt(page));

		log.info("cri : "+cri);
		
		String resultClass = "";
		if(tabId.equals("military")) {
			resultClass = "군사시설";
		}else if(tabId.equals("publicOrg")) {
			resultClass = "공공기관";
		}else if(tabId.equals("privateCorp")) {
			resultClass = "민간기업";
		}
		
		log.info("resultClass.........."+resultClass);
		
		//DB 검색
		model.addAttribute("business_list",service.getBusinessList(cri,resultClass));
		model.addAttribute("pageMaker",new PageDTO(service.getBusinessTotal(resultClass), cri));
		model.addAttribute("tabId",tabId);
		
		if(msg!=null) {
			model.addAttribute("msg",msg);
		}
		
		return "/business/result_ajax";
	}
	
	//사업실적 등록
	@PostMapping("/result_writeOK")
	public String result_writeOK(Model model, Criteria cri, RedirectAttributes ra,
			@RequestParam("tabId")String tabId, 
			@RequestParam("resultContnents")String resultContnents) {
		log.info("------------new_business_resultOK-------------");
		log.info("새로운 사업실적의 분류tabId..........."+tabId);
		log.info("새로운 사업실적 내용..........."+resultContnents);
	
		String resultClass = "";
		if(tabId.equals("military")) {
			resultClass = "군사시설";
		}else if(tabId.equals("publicOrg")) {
			resultClass = "공공기관";
		}else if(tabId.equals("privateCorp")) {
			resultClass = "민간기업";
		}
		
		log.info("새로운 사업실적 resultClass..........."+resultClass);
		
		if(service.registBusinessResult(resultClass,resultContnents)){
			log.info(".....................사업실적 등록 성공");
			ra.addAttribute("msg","등록 완료");
			ra.addAttribute("page", 1);
			ra.addAttribute("tabId", tabId);
			return "redirect:/business/result_pageAjax";
		}else {
			log.info(".....................사업실적 등록 실패");
			return "/business/result";
		}
	}
	
	//사업실적 수정
	@PostMapping("/result_modifyOK")
	public String result_modifyOK(Model model, Criteria cri, RedirectAttributes ra,
			@RequestParam(value="resultNum",required=false)long resultNum, 
			@RequestParam(value="tabId",required=false)String tabId, 
			@RequestParam(value="resultContnents",required=false)String resultContnents,
			@RequestParam(value="page",required=false)String page) {
		log.info("------------modify_business_result-------------");
		log.info("수정할 사업실적 번호..........."+resultNum);
		log.info("수정후 사업실적의 분류tabId..........."+tabId);
		log.info("수정후 사업실적 내용..........."+resultContnents);
		log.info("수정되는 사업실적 페이지..........."+page);
		
		String resultClass = "";
		if(tabId.equals("military")) {
			resultClass = "군사시설";
		}else if(tabId.equals("publicOrg")) {
			resultClass = "공공기관";
		}else if(tabId.equals("privateCorp")) {
			resultClass = "민간기업";
		}
		
		log.info("수정후 사업실적 resultClass..........."+resultClass);
		
		if(service.modifyBusinessResult(resultNum,resultClass,resultContnents)){
			log.info(".....................사업실적 수정 성공");
			ra.addAttribute("msg","수정 완료");
			ra.addAttribute("page", page);
			ra.addAttribute("tabId", tabId);
			return "redirect:/business/result_pageAjax";
		}else {
			log.info(".....................사업실적 수정 실패");
			return "/business/result";
		}
	}
	
	//사업실적 삭제
	@GetMapping("/result_delete")
	public String result_delete(Model model,Criteria cri, RedirectAttributes ra,
			@RequestParam(value="resultNum",required=false) long resultNum,
			@RequestParam(value="page",required=false) String page,
			@RequestParam(value="tabId",required=false) String tabId) {
		
		log.info("------------business_delete-------------");
		log.info("넘어온 resultNum값.........."+resultNum);
		log.info("넘어온 page값.........."+page);
		log.info("넘어온 tabId값.........."+tabId);
		
				//사업실적 삭제
		if(service.deleteBusinessResult(resultNum)) {
			log.info(".....................사업실적 삭제 성공");
			//리다이렉트로 값 넘기는법
			ra.addAttribute("msg","삭제 완료");
			ra.addAttribute("page", page);
			ra.addAttribute("tabId", tabId);
			return "redirect:/business/result_pageAjax";
		} else {
			log.info(".....................사업실적 삭제 실패");
			return "/business/result";
		}
		
	}

}
