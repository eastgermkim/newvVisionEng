package com.newvisioneng.controller;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.newvisioneng.service.CompanyService;
import com.newvisioneng.service.RecruitService;
import com.newvisioneng.service.SupportService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Controller
@RequestMapping("/file/*")
public class UploadController {
	
	@Setter(onMethod_=@Autowired)
	private SupportService supportService;
	
	@Setter(onMethod_=@Autowired)
	private CompanyService companyService;
	
	@Setter(onMethod_=@Autowired)
	private RecruitService recruitService;

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	//에디터 내부 이미지 삽입(이미지 임시 저장)
		//서버 API 는 Spring 를 기반으로 업로드된 이미지에 대한 정보를 JSON 형태로 응답하게 작성하면 된다. 
		//파일 업로드를 서버측에 구축을 해 주어야 한다.
		//함수를 통해 파일이 업로드가 되고, 해당 리턴값을 json으로 리턴하면 xhr 에서 json으로 받는 형태
		//파일을 업로드 후에는 {url:'업로드된 파일 주소'} 형태의 데이터를 반환
	@ResponseBody
	@RequestMapping(value = "/img/{img_folder}", method = {RequestMethod.POST, RequestMethod.GET}, produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public String fileUpload(@PathVariable("img_folder") String img_folder,  
			@RequestParam(value="upload", required = false) MultipartFile fileload,
			HttpServletRequest req) throws Exception  {
		
		String location = img_folder+"/";
		
		//이미지 저장
		String[] names = uploadImg(fileload.getOriginalFilename(), fileload, req, location);
		
		//json값으로 리턴
		String result = imgJsonReturn(names,location);
		
		//DB에 저장(BOARDNUM은 NULL로 들어감)
		insertToImgDB(names,img_folder);
		
		return result;
		
	}
	
	//에디터 안에 삽입된 이미지를 저장하는 함수
	private String[] uploadImg(String originalName, MultipartFile fileload,HttpServletRequest req, String location) throws IOException {
		
		log.info("\n에디터 속 이미지 삽입..............");
		
		String path = req.getServletContext().getRealPath("/")+"resources/files/" + location;
		log.info("저장할 위치 : "+path);
		File target = new File(path);
		
		//파일을 저장할 경로가 존재하지 않으면 폴더를 생성
		if(!target.exists()) { target.mkdirs();}
		
		//겹쳐지지 않는 파일명을 위한 유니크한 값 생성
		UUID uid = UUID.randomUUID();
		
		//시간정보넣기
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy_MM_dd");
		Date time = new Date();
		String time1 = format1.format(time);
		
		//DB에 이름 중복  방지를 위해 변경한 이름(원본파일 이름과 UUID 결합)
		String savedName = time1+ "_" +uid.toString() + "_" + originalName;
		
	//리사이징=================================================================================================
	    // 이미지 읽어 오기
        BufferedImage inputImage = ImageIO.read(fileload.getInputStream());
        // 이미지 세로 가로 측정
        int originWidth = inputImage.getWidth();
        log.info("원본 이미지 가로 길이 : "+originWidth);
        int originHeight = inputImage.getHeight();
        log.info("원본 이미지 세로 길이 : "+originHeight);
       
        
        //=======일단 원본 저장=========
        byte[] fileData = fileload.getBytes();
        //uploadPath 폴더 경로의 saveFileName이라는 파일에 대한 file 객체 생성
        //서버에 실제 파일을 저장한다. (임시디렉토리에 업로드)
        target = new File(path, savedName);
        //org.springframework.util 패키지의 FileCopyUtils는 파일 데이터를 파일로 처리하거나, 복사하는 등의 기능이 있다.
        //임시 디렉토리에 업로드된 파일 데이터를 지정한 폴더에 저장한다.
        FileCopyUtils.copy(fileData, target);
        
        String imgOriginalPath= path+"/"+savedName;      // 원본 이미지 파일명
        
        Path Originalpath = Paths.get(imgOriginalPath);
        long bytes = Files.size(Originalpath);
        long kilobyte = bytes / 1024;
        long megabyte = kilobyte / 1024;
        log.info(".............원본 이미지 용량 : "+megabyte + " mb"); // 3 mb
        
        
        if(megabyte>1) {
        	log.info("용량이 1mb 초과.,........................................");
        	log.info("이미지 리사이징 시작........................................");
        	
        	// 변경할 가로 길이
        	int newWidth = 1000;
        	
	        String imgTargetPath= path+"/resized_"+savedName;    // 새 이미지 파일명
	        String imgFormat = "jpg";                             // 새 이미지 포맷. jpg, gif 등
	        String mainPosition = "W";                             // W:넓이중심, H:높이중심, X:설정한 수치로(비율무시)
	 
	        Image image;
	        int imageWidth;
	        int imageHeight;
	        double ratio;
	        int w;
	        int h;
	        
	        
	          // 기존 이미지 비율을 유지하여 세로 길이 설정
	            int newHeight = (originHeight * newWidth) / originWidth;
	         
	            
	            
	         // 원본 이미지 가져오기
	            image = ImageIO.read(new File(imgOriginalPath));
	 
	            // 원본 이미지 사이즈 가져오기
	            imageWidth = image.getWidth(null);
	            imageHeight = image.getHeight(null);
	 
	            w = newWidth;
	            h = newHeight;
	 
	            // 이미지 리사이즈
	            // Image.SCALE_DEFAULT : 기본 이미지 스케일링 알고리즘 사용
	            // Image.SCALE_FAST    : 이미지 부드러움보다 속도 우선
	            // Image.SCALE_REPLICATE : ReplicateScaleFilter 클래스로 구체화 된 이미지 크기 조절 알고리즘
	            // Image.SCALE_SMOOTH  : 속도보다 이미지 부드러움을 우선
	            // Image.SCALE_AREA_AVERAGING  : 평균 알고리즘 사용
	            Image resizeImage = image.getScaledInstance(w, h, Image.SCALE_DEFAULT);
	 
	            // 새 이미지  저장하기
	            BufferedImage newImage = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
	            Graphics g = newImage.getGraphics();
	            g.drawImage(resizeImage, 0, 0, null);
	            g.dispose();
	            ImageIO.write(newImage, imgFormat, new File(imgTargetPath));
	//=================================================================================================
        
		
		//기존 파일 삭제
		File originalFile = new File(imgOriginalPath);
		
		if(originalFile.exists()){ 
			if(originalFile.delete()){ 
				log.info("삭제된 파일................." + originalFile);
			}else{
				log.info("삭제실패");
			}
		}else{ 
			log.info("파일이 존재하지 않습니다...." + originalFile);
		}
		
		
		String[] names = {originalName,"resized_"+savedName};
		return names;
      
        }else {
        	String[] names = {originalName,savedName};
        	return names;
        }
		
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
        json.addProperty("url", path + savedName);
        
        //json 리턴값 미리보기
        System.out.println("json리턴값 : "+json.toString());
    
        //json 리턴
        System.out.println("...........................이미지 삽입 완료\n");
        
        return json.toString();
	}
	
	private void insertToImgDB(String[] names,String img_folder){
		logger.info("insertToImgDB......................");
		
		//원래 이미지 이름
		String originalName = names[0];
		//바뀐 이미지 이름
		String savedName = names[1];
				
		
		//파일의 정보를 각각의 이름으로 fileInfo에 담아준다.
        Map<String, Object> fileInfo = new HashMap<String, Object>();
        fileInfo.put("ORGNAME", originalName);
        fileInfo.put("SYSTEMNAME", savedName);

     //이미지를 DB에 저장
        //공지사항 게시판일때
        if(img_folder.equals("notice_img")) {
        	supportService.insertNoticeImg(fileInfo);
        //보도자료 게시판일때
        }else if(img_folder.equals("news_img")){
        	companyService.insertNewsImg(fileInfo);
        }else if(img_folder.equals("recruit_img")){
			recruitService.insertRecruitImg(fileInfo);
		}
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	

}