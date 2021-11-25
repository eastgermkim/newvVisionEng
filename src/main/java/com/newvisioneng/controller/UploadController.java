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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.newvisioneng.util.MediaUtils;
import com.newvisioneng.util.UploadFileUtils;


@Controller
@RequestMapping("/file/*")
public class UploadController {

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	//에디터 내부 이미지 삽입(이미지 임시 저장)
		//서버 API 는 Spring 를 기반으로 업로드된 이미지에 대한 정보를 JSON 형태로 응답하게 작성하면 된다. 
		//파일 업로드를 서버측에 구축을 해 주어야 한다.
		//함수를 통해 파일이 업로드가 되고, 해당 리턴값을 json으로 리턴하면 xhr 에서 json으로 받는 형태
		//파일을 업로드 후에는 {url:'업로드된 파일 주소'} 형태의 데이터를 반환
	@ResponseBody
	@RequestMapping(value = "/temp/{temp_img_folder}", method = {RequestMethod.POST, RequestMethod.GET}, produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public String fileUpload(@PathVariable("temp_img_folder") String temp_img_folder,  
			@RequestParam(value="upload", required = false) MultipartFile fileload,
			HttpServletRequest req) throws Exception  {
		
		String location = "temp/"+temp_img_folder+"/";
		
		//이미지 저장
		String[] names = uploadImg(fileload.getOriginalFilename(), fileload.getBytes(), req, location);
		//json값으로 리턴
		String result = imgJsonReturn(names,location);
		
		return result;
		
	}
	
	//에디터 안에 삽입된 이미지를 저장하는 함수
	private String[] uploadImg(String originalName, byte[] fileDate,HttpServletRequest req, String location) throws IOException {
		logger.info("fileUpload");
		System.out.println("\n에디터 속 이미지 삽입..............");
		
		String path = req.getServletContext().getRealPath("/")+"resources/files/" + location;
		System.out.println("저장된 위치 : "+path);
		
		File target = new File(path);
		
		//파일을 저장할 경로가 존재하지 않으면 폴더를 생성
		if(!target.exists()) { target.mkdirs();}

		//겹쳐지지 않는 파일명을 위한 유니크한 값 생성
		UUID uid = UUID.randomUUID();
		//DB에 이름 중복  방지를 위해 변경한 이름(원본파일 이름과 UUID 결합)
		String savedName = uid.toString() + "_" + originalName;
		
        //uploadPath 폴더 경로의 saveFileName이라는 파일에 대한 file 객체 생성
        //서버에 실제 파일을 저장한다. (임시디렉토리에 업로드)
        target = new File(path, savedName);
        
		//org.springframework.util 패키지의 FileCopyUtils는 파일 데이터를 파일로 처리하거나, 복사하는 등의 기능이 있다.
        //임시 디렉토리에 업로드된 파일 데이터를 지정한 폴더에 저장한다.
        FileCopyUtils.copy(fileDate, target);
		
		String[] names = {originalName,savedName};
		
		return names;
	}
	//저장한 이미지를 json으로 리턴하는 함수
	private String imgJsonReturn(String[] names,String location) {
		
		//원래 이미지 이름
		String originalName = names[0];
		//바뀐 이미지 이름
		String savedName = names[1];
		
		//이미지 저장 위치
		String path = "/resources/files/"+ location;
		
		// json 데이터로 등록
        // {"uploaded" : 1, "fileName" : "test.jpg", "url" : "/img/test.jpg"}
        // 이런 형태로 리턴이 나가야함.
		JsonObject json = new JsonObject();
        json.addProperty("uploaded", 1);
        json.addProperty("alt", originalName);
        json.addProperty("url", path + savedName);
        
        //json 리턴값 미리보기
        System.out.println("json리턴값 : "+json.toString());
    
        //json 리턴
        System.out.println("...........................이미지 삽입 완료\n");
        return json.toString();
	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	

}