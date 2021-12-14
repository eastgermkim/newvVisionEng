package com.newvisioneng.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.newvisioneng.domain.BusinessDTO;
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
	
	//사업소개 페이지로 연결
	@GetMapping("/area")
	public String introduce() {
		
		return "/business/business";
	}

	
//============================================================================
	
	//사업실적 페이지로 연결(+목록 가져오기)
	@GetMapping("/result")
	public String result(Model model,Criteria cri, HttpServletRequest req) {
		log.info("------business_list-------");
		
		cri.setPageSize(15);
		
		//DB 검색
		model.addAttribute("business_list_1",service.getBusinessList(cri,"군사시설"));
		model.addAttribute("pageMaker1",new PageDTO(service.getBusinessTotal("군사시설"), cri));
		
		model.addAttribute("business_list_2",service.getBusinessList(cri,"공공기관"));
		model.addAttribute("pageMaker2",new PageDTO(service.getBusinessTotal("공공기관"), cri));
		
		model.addAttribute("business_list_3",service.getBusinessList(cri,"민간기업"));
		model.addAttribute("pageMaker3",new PageDTO(service.getBusinessTotal("민간기업"), cri));
		
		model.addAttribute("qwe","안뇽");
		
		return "/business/result";
	}
	
	//사업실적 페이지로 연결(+목록 가져오기)
	@RequestMapping(value="/result2", method=RequestMethod.POST)
	@ResponseBody
	public BusinessDTO result2(@RequestParam("resultClass")String resultClass,Criteria cri) {
		 
		System.out.println("resultClass : "+resultClass);
		cri.setPageSize(15);
		
		List<BusinessDTO> blist = service.getBusinessList(cri,resultClass);
		BusinessDTO qwe = blist.get(0);
		
		System.out.println("qwe : "+qwe);
		
		BusinessDTO testdto = new BusinessDTO();
		
		testdto.setResultClass("공공기관");
		testdto.setResultContnents("내용내용");
		testdto.setResultNum(100L);
		testdto.setShow_Mainpage(100L);
		return testdto;
	}

}
