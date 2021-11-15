package com.newvisioneng.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.newvisioneng.util.MediaUtils;
import com.newvisioneng.util.UploadFileUtils;


@Controller
@RequestMapping("/file/*")
public class UploadController {

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	
	////////////////////////////////////////////////////////실제 사용//////////////////////////////////////
	//공지사항 에디터에 업로드된 파일을 저장하는 함수
	private String uploadNoticeImg(String originalName, byte[] fileDate,HttpServletRequest req) throws IOException {
		
		UUID uid = UUID.randomUUID();
		
		String path = req.getServletContext().getRealPath("/")+"resources/temp_img/";
		
		System.out.println("저장된 위치 : "+path);
		
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(path, savedName);
		
		//org.springframework.util 패키지의 FileCopyUtils는 파일 데이터를 파일로 처리하거나, 복사하는 등의 기능이 있다.
		FileCopyUtils.copy(fileDate, target);
		
		return savedName;
		
	}
	
	/**ck에디터 파일업로드 이벤트 발생 시 처리
	 * @param model
	 * @param fileload
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/noticeImg", method = {RequestMethod.POST, RequestMethod.GET}, produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public String fileUpload(Model model,  
	        @RequestParam(value="upload", required = false) MultipartFile fileload,
	        HttpServletRequest req) throws Exception  {
		
		logger.info("fileUpload");
		
		String savedName = uploadNoticeImg(fileload.getOriginalFilename(), fileload.getBytes(), req);
		System.out.println("파일 새이름 : " +savedName);
		
		return "{ \"uploaded\" : true, \"url\" : \"/resources/temp_img/"+ savedName + "\" }";
		
	}
	
	
}