package com.newvisioneng.controller;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.drew.imaging.ImageMetadataReader;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.exif.ExifIFD0Directory;
import com.drew.metadata.jpeg.JpegDirectory;
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

	@Setter(onMethod_ = @Autowired)
	private BusinessService service;

	// 사업소개 페이지로 연결
	@GetMapping("/business_cctv")
	public String cctv() {

		return "/business/business_cctv";
	}

	// 사업소개 페이지로 연결
	@GetMapping("/business_com")
	public String communicate() {

		return "/business/business_com";
	}

	// 사업소개 페이지로 연결
	@GetMapping("/business_sp")
	public String special() {

		return "/business/business_sp";
	}

	// 사업소개 페이지로 연결
	@GetMapping("/business_army")
	public String introduce() {

		return "/business/business_army";
	}

//============================================================================

	// 사업실적 페이지로 연결(+목록 가져오기)
	@GetMapping("/result")
	public String result(Model model, Criteria cri, HttpServletRequest req,
			@RequestParam(value = "tab", required = false) String firstTab) {
		log.info("------business_list-------");
		log.info("firstTab..........."+firstTab);

		cri.setPageSize(15);
		log.info("cri : " + cri);

		// DB 검색
		model.addAttribute("business_list_1", service.getBusinessList(cri, "군사시설"));
		model.addAttribute("pageMaker1", new PageDTO(service.getBusinessTotal("군사시설",null), cri));

		model.addAttribute("business_list_2", service.getBusinessList(cri, "공공기관"));
		model.addAttribute("pageMaker2", new PageDTO(service.getBusinessTotal("공공기관",null), cri));

		model.addAttribute("business_list_3", service.getBusinessList(cri, "민간기업"));
		model.addAttribute("pageMaker3", new PageDTO(service.getBusinessTotal("민간기업",null), cri));
		
		model.addAttribute("firstTab",firstTab);

		return "/business/result";
	}

	// 사업실적 페이지에서 ajax로 각 리스트 페이지 이동
	@GetMapping("/result_pageAjax")
	public String result_pageAjax(Model model, Criteria cri, HttpServletRequest req,
			@RequestParam(value = "msg", required = false) String msg,
			@RequestParam(value = "tabId", required = false) String tabId) {
		log.info("-----------------------------------------------");
		log.info("------------business_list_pageAjax-------------");
		
		if(tabId.equals("main")) {
			model.addAttribute("business_list", service.getMainBusinessList());
			return "/business/result_ajax";
		}

		log.info("넘어온 msg값.........." + msg);
		log.info("넘어온 s_keyword값.........." + cri.getS_keyword());
		log.info("넘어온 tabId값.........." + tabId);
		log.info("넘어온 page값.........." + cri.getPage());

		cri.setPageSize(15);

		log.info("cri : " + cri);

		String resultClass = "";
		if (tabId.equals("military")) {
			resultClass = "군사시설";
		} else if (tabId.equals("publicOrg")) {
			resultClass = "공공기관";
		} else if (tabId.equals("privateCorp")) {
			resultClass = "민간기업";
		}

		log.info("resultClass.........." + resultClass);

		// DB 검색
		model.addAttribute("business_list", service.getBusinessList(cri, resultClass));
		model.addAttribute("pageMaker", new PageDTO(service.getBusinessTotal(resultClass,cri.getS_keyword()), cri));
		model.addAttribute("tabId", tabId);
		model.addAttribute("resultClass", resultClass);

		if (msg != null) {
			model.addAttribute("msg", msg);
		}

		return "/business/result_ajax";
	}

	// 사업실적 등록
	@PostMapping("/result_writeOK")
	public String result_writeOK(Model model, Criteria cri, RedirectAttributes ra, @RequestParam("tabId") String tabId,
			@RequestParam("resultContents") String resultContents) {
		log.info("------------new_business_resultOK-------------");
		log.info("새로운 사업실적의 분류tabId..........." + tabId);
		log.info("새로운 사업실적 내용..........." + resultContents);

		String resultClass = "";
		if (tabId.equals("military")) {
			resultClass = "군사시설";
		} else if (tabId.equals("publicOrg")) {
			resultClass = "공공기관";
		} else if (tabId.equals("privateCorp")) {
			resultClass = "민간기업";
		}

		log.info("새로운 사업실적 resultClass..........." + resultClass);

		if (service.registBusinessResult(resultClass, resultContents)) {
			log.info(".....................사업실적 등록 성공");
			ra.addAttribute("msg", "등록 완료");
			ra.addAttribute("page", 1);
			ra.addAttribute("tabId", tabId);
			return "redirect:/business/result_pageAjax";
		} else {
			log.info(".....................사업실적 등록 실패");
			return "/business/result";
		}
	}

	// 사업실적 수정
	@PostMapping("/result_modifyOK")
	public String result_modifyOK(Model model, Criteria cri, RedirectAttributes ra,
			@RequestParam(value = "resultNum", required = false) long resultNum,
			@RequestParam(value = "tabId", required = false) String tabId,
			@RequestParam(value = "resultContents", required = false) String resultContents,
			@RequestParam(value = "page", required = false) String page) {
		log.info("------------modify_business_result-------------");
		log.info("수정할 사업실적 번호..........." + resultNum);
		log.info("수정후 사업실적의 분류tabId..........." + tabId);
		log.info("수정후 사업실적 내용..........." + resultContents);
		log.info("수정되는 사업실적 페이지..........." + page);

		String resultClass = "";
		if (tabId.equals("military")) {
			resultClass = "군사시설";
		} else if (tabId.equals("publicOrg")) {
			resultClass = "공공기관";
		} else if (tabId.equals("privateCorp")) {
			resultClass = "민간기업";
		}

		log.info("수정후 사업실적 resultClass..........." + resultClass);

		if (service.modifyBusinessResult(resultNum, resultClass, resultContents)) {
			log.info(".....................사업실적 수정 성공");
			ra.addAttribute("msg", "수정 완료");
			ra.addAttribute("page", page);
			ra.addAttribute("tabId", tabId);
			return "redirect:/business/result_pageAjax";
		} else {
			log.info(".....................사업실적 수정 실패");
			return "/business/result";
		}
	}

	// 사업실적 삭제
	@GetMapping("/result_delete")
	public String result_delete(Model model, Criteria cri, RedirectAttributes ra,
			@RequestParam(value = "resultNum", required = false) long resultNum,
			@RequestParam(value = "page", required = false) String page,
			@RequestParam(value = "tabId", required = false) String tabId) {

		log.info("------------business_delete-------------");
		log.info("넘어온 resultNum값.........." + resultNum);
		log.info("넘어온 page값.........." + page);
		log.info("넘어온 tabId값.........." + tabId);

		// 사업실적 삭제
		if (service.deleteBusinessResult(resultNum)) {
			log.info(".....................사업실적 삭제 성공");
			// 리다이렉트로 값 넘기는법
			ra.addAttribute("msg", "삭제 완료");
			ra.addAttribute("page", page);
			ra.addAttribute("tabId", tabId);
			return "redirect:/business/result_pageAjax";
		} else {
			log.info(".....................사업실적 삭제 실패");
			return "/business/result";
		}
	}

	// 사업실적 메인화면 등록페이지로 이동
	@PostMapping("/result_showMain")
	public String result_showMain(Model model,
			@RequestParam(value = "main_resultNum", required = false) long main_resultNum,
			@RequestParam(value = "main_resultContents", required = false) String main_resultContents,
			@RequestParam(value = "main_page", required = false) String main_page,
			@RequestParam(value = "main_tabId", required = false) String main_tabId,
			@RequestParam(value = "msg", required = false) String msg) {

		log.info("------------business_result_showMain-------------");
		log.info("넘어온 main_resultNum값.........." + main_resultNum);
		log.info("넘어온 main_resultContents값.........." + main_resultContents);
		log.info("넘어온 page값.........." + main_page);
		log.info("넘어온 main_tabId값.........." + main_tabId);

		String resultClass = "";
		if (main_tabId.equals("military")) {
			resultClass = "군사시설";
		} else if (main_tabId.equals("publicOrg")) {
			resultClass = "공공기관";
		} else if (main_tabId.equals("privateCorp")) {
			resultClass = "민간기업";
		}

		model.addAttribute("main_resultNum", main_resultNum);
		model.addAttribute("main_resultContents", main_resultContents);
		model.addAttribute("resultClass", resultClass);
		model.addAttribute("page", main_page);
		model.addAttribute("tabId", main_tabId);
		
		if (msg != null) {
			model.addAttribute("msg", msg);
		}
		
		return "/business/result_showMain";
	}

	// 사업실적 메인화면 등록(DB에 이미지 정보 등록)
	@RequestMapping(value = "/result_showMainOK", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String result_showMainOK(Model model, HttpServletRequest req, MultipartFile customImg,RedirectAttributes ra,
			@RequestParam(value = "resultNum", required = false) long resultNum,
			@RequestParam(value = "basicImgSrc", required = false) String basicImgSrc) throws IOException {

		log.info("\n------------business_result_showMain-------------");
		log.info("메인에 등록할 사업실적 resultNum값.........." + resultNum);

		String newpath = req.getServletContext().getRealPath("/") + "resources/img/business_result/main_imgs/";
		log.info("새로 저장되는 이미지의 위치............" + newpath);
		File target = new File(newpath);

		// 파일을 저장할 경로가 존재하지 않으면 폴더를 생성
		if (!target.exists()) {
			target.mkdirs();
		}

		// 기존에 저장한 이미지가 있다면 삭제
		if (service.getMainImgName(resultNum)!=null) {
			log.info("기존에 저장된 이미지의 파일명.........." + service.getMainImgName(resultNum));
			// 이미지 실제 파일 삭제
			File file = new File(req.getServletContext().getRealPath("/") + "resources/img/business_result/main_imgs/"
					+ service.getMainImgName(resultNum));

			if (file.exists()) {
				if (file.delete()) {
					log.info("삭제된 파일................." + service.getMainImgName(resultNum));
				} else {
					log.info("삭제실패");
				}
			} else {
				log.info("파일이 존재하지 않습니다." + service.getMainImgName(resultNum));
			}
		}

		String fileName = "";
		// 기본이미지를 선택했을시
		if (basicImgSrc != null && !basicImgSrc.equals("")) {
			log.info("..........기본이미지 들어옴");
			log.info("메인에 등록할 사업실적 BasicImgSrc값.........." + basicImgSrc);
			// 앞에 '/'하나 없애주고
			basicImgSrc = basicImgSrc.substring(1);

			String basicpath = req.getServletContext().getRealPath("/") + basicImgSrc;
			log.info("선택한 기본 이미지 기존 경로............" + basicpath);
			
			fileName = "resultNum_" + resultNum + "_basic.jpg";

			// 기본이미지 파일 복사 저장(resultNum_번호.jpg)
			File in = new File(req.getServletContext().getRealPath("/") + basicImgSrc);
			File out = new File(target,fileName);
			FileCopyUtils.copy(in, out);

		// 다른 이미지 첨부 및 선택했을시	
			} else if (!customImg.isEmpty()) {
				log.info("............................파일 넘어온거 있음 ^^ !!!!!!!!");
				log.info("................기본이미지 대신 외부이미지 첨부");
				log.info("메인에 등록할 사업실적 customImg 기존 파일명.........." + customImg.getOriginalFilename());
				fileName = "resultNum_" + resultNum + "_" + customImg.getOriginalFilename();
				
				File file = new File(target,fileName);
				customImg.transferTo(file);
				
				
				// 원본 이미지 경로 + 파일명 + 확장자
				String imgOriginalPath = newpath + "/" + fileName;
				// 원본 이미지 파일명만
				String imgOriginalName = FilenameUtils.getBaseName(fileName);
				// 원본 이미지 확장자만
				String imgOriginalextension = FilenameUtils.getExtension(fileName);

				Path Originalpath = Paths.get(imgOriginalPath);
				long bytes = Files.size(Originalpath);
				long kilobyte = bytes / 1024;
				long megabyte = kilobyte / 1024;
				log.info(".............원본 이미지 용량 : " + megabyte + " mb..........................");

				if (megabyte >= 1) {
					log.info("...용량이 1mb 이상.........................................");
					log.info("=====================이미지 리사이징 시작=====================");

					// 새 이미지 포맷. jpg, gif 등
					String newImgFormat = imgOriginalextension;
					if (newImgFormat.equals("png")) {
						log.info("png에서 jpg로..........");
						newImgFormat = "jpg";
					}
					log.info("새로운 이미지 확장자 : " + newImgFormat);

					// 새 이미지 파일명
					String newImgSavedName = imgOriginalName + "_resized" + "." + newImgFormat;
					log.info("새로운 이미지 파일명 : " + newImgSavedName);
					// 새 이미지 경로
					String newImgTargetPath = newpath + "/" + newImgSavedName;

					// 원본 이미지 가져오기
					BufferedImage image = ImageIO.read(new File(imgOriginalPath));

					// 원본 이미지 회전정보 구하기
					int orientation = 1; // 회전정보, 1. 0도, 3. 180도, 6. 270도, 8. 90도 회전한 정보
					Metadata metadata; // 이미지 메타 데이터 객체
					Directory directory; // 이미지의 Exif 데이터를 읽기 위한 객체
					JpegDirectory jpegDirectory; // JPG 이미지 정보를 읽기 위한 객체
					try {
						metadata = ImageMetadataReader.readMetadata(new File(imgOriginalPath));
						directory = metadata.getFirstDirectoryOfType(ExifIFD0Directory.class);
						jpegDirectory = metadata.getFirstDirectoryOfType(JpegDirectory.class);
						if (directory != null) {
							// 회전정보
							orientation = directory.getInt(ExifIFD0Directory.TAG_ORIENTATION); 
						}
					} catch (Exception e) {
						orientation = 1;
					}

					// 회전 시킨다.
					switch (orientation) {
					case 6:
						log.info("회전정보 : " + orientation + ".......270도 상태이므로 90도 회전");
						image = Scalr.rotate(image, Scalr.Rotation.CW_90, null);
						break;
					case 1:
						log.info("회전정보 : " + orientation + ".......0도 상태이므로 회전 없음");

						break;
					case 3:
						log.info("회전정보 : " + orientation + ".......180도 상태이므로 180도 회전");
						image = Scalr.rotate(image, Scalr.Rotation.CW_180, null);
						break;
					case 8:
						log.info("회전정보 : " + orientation + ".......90도 상태이므로270도 회전");
						image = Scalr.rotate(image, Scalr.Rotation.CW_270, null);
						break;

					default:
						orientation = 1;
						break;
					}

					// 원본 이미지 사이즈 가져오기
					int originalWidth = image.getWidth(null);
					int originalHeight = image.getHeight(null);
					
					log.info("원본 이미지 가로 길이 : "+originalWidth);

					// 변경할 가로 길이
					int newWidth = originalWidth;
					
					// 최대 크기 1000
					if(!imgOriginalextension.equals("png") && originalWidth>1500) {
						log.info("png파일이 아니면서 가로길이 1500초과");
						newWidth = 1500;
					}
					
					// 기존 이미지 비율을 유지하여 세로 길이 설정
					int newHeight = (originalHeight * newWidth) / originalWidth;

					log.info("새 이미지 가로 길이 : "+newWidth);
					log.info("새 이미지 세로 길이 : "+newHeight);
					
					// 이미지 리사이즈
					// Image.SCALE_DEFAULT : 기본 이미지 스케일링 알고리즘 사용
					// Image.SCALE_FAST : 이미지 부드러움보다 속도 우선
					// Image.SCALE_REPLICATE : ReplicateScaleFilter 클래스로 구체화 된 이미지 크기 조절 알고리즘
					// Image.SCALE_SMOOTH : 속도보다 이미지 부드러움을 우선
					// Image.SCALE_AREA_AVERAGING : 평균 알고리즘 사용
					Image resizeImage = image.getScaledInstance(newWidth, newHeight, Image.SCALE_DEFAULT);

					// 새 이미지 저장하기
					BufferedImage newImage = new BufferedImage(newWidth, newHeight, BufferedImage.TYPE_INT_RGB);
					Graphics g = newImage.getGraphics();
					g.drawImage(resizeImage, 0, 0, null);
					g.dispose();
					ImageIO.write(newImage, newImgFormat, new File(newImgTargetPath));
					
					// =================================================================================================

					// 기존 파일 삭제
					File originalFile = new File(imgOriginalPath);

					if (originalFile.exists()) {
						if (originalFile.delete()) {
							log.info("원본 이미지 삭제완료................." + originalFile);
						} else {
							log.info("삭제실패");
						}
					} else {
						log.info("파일이 존재하지 않습니다...." + originalFile);
					}
					
					fileName = newImgSavedName;
					log.info("=====================이미지 리사이징 완료=====================");
				}
				
				
				
				
				
			} else {
				log.info("............................파일 넘어온거 없음");
			}

		
		// 사업실적 DB업데이트
		if (service.addMainBusinessResult(resultNum,fileName)) {
			log.info("DB업데이트 성공");
			log.info("resultNum : "+resultNum);
			log.info("fileName : "+fileName);
			ra.addAttribute("msg","사업실적 메인 등록 성공");
			return "사업실적 메인 등록 성공";
		} else {
			log.info("DB...업데이트...실패...");
			ra.addAttribute("msg","등록 실패");
			return "등록 실패";
		}
	}
	
	
	//메인등록된 사업실적들 취소 관리하기
	@GetMapping("/result_showMainCancel")
	public String result_showMainCancel(Model model, HttpServletRequest req) {
		log.info("-----------------------------------------------");
		log.info("------------business_result_showMainCancel-------------");
		
		model.addAttribute("business_list", service.getMainBusinessList());
		return "/business/result_showMainCancel";
		}
		
	//메인등록된 사업실적 등록 취소
	@GetMapping("/result_showMainCancelOK")
	@ResponseBody
	public String result_showMainCancelOK(HttpServletRequest req,
			@RequestParam(value = "resultNum", required = false) long resultNum,
			@RequestParam(value = "imgName", required = false) String imgName) {
		log.info("-----------------------------------------------");
		log.info("------------business_result_showMainCancelOK-------------");
		
		//이미지 실제 파일 삭제
		File file = new File(req.getServletContext().getRealPath("/") + "resources/img/business_result/main_imgs/"
				+imgName);

		if (file.exists()) {
			if (file.delete()) {
				log.info("삭제된 파일................." +imgName);
			} else {
				log.info("삭제실패");
			}
		} else {
			log.info("파일이 존재하지 않습니다." +imgName);
		}
		
		//DB수정
		if(service.cancelMainBusinessResult(resultNum)) {
			log.info("........메인에 등록된 사업실적 등록 취소 성공");
			return "success";
		}else {
			return "fail";
		}
	}
}