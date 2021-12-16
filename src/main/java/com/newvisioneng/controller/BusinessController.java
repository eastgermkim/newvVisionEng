package com.newvisioneng.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
			@RequestParam(value="page",required=false)String page,
			@RequestParam(value="tab",required=false)String tab,
			@RequestParam(value="tabId",required=false)String tabId
			) {
		log.info("------------business_list_pageAjax-------------");
		
		log.info("넘어온 tab값.........."+tab);
		log.info("넘어온 tabId값.........."+tabId);
		log.info("넘어온 page값.........."+page);
		
		cri.setPageSize(15);
		cri.setPage(Integer.parseInt(page));

		log.info("cri : "+cri);
		
		//DB 검색
		model.addAttribute("business_list",service.getBusinessList(cri,tab));
		model.addAttribute("pageMaker",new PageDTO(service.getBusinessTotal(tab), cri));
		
		model.addAttribute("tab",tab);
		model.addAttribute("tabId",tabId);
		
		return "/business/result_pageAjax";
	}
	
	//사업실적 등록
	@PostMapping("/result_writeOK")
	public String result_writeOK(@RequestParam("subject")String resultClass, @RequestParam("resultTitle")String resultTitle) {
		log.info("------------new_business_resultOK-------------");
		log.info("등록된 사업실적의 분류..........."+resultClass);
		log.info("등록된 사업실적 내용..........."+resultTitle);
		
		service.registBusinessResult(resultClass,resultTitle);
		
		return "redirect:/business/result";
	}

}
