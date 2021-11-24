package com.newvisioneng.util;

import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.java.Log;

@Component("fileUtils")
public class FileUtils {
 
	//게시판에 파일 첨부하여 글 작성시 업로드 된 파일을 로컬 저장소에 저장후 파일 정보를 담아 리턴해주는 함수
    public static List<Map<String, Object>> parseFileInfo( String uploadPath , MultipartFile[] file , long boardnum ) throws Exception {
    	
    	List<Map<String, Object>> fileList = new ArrayList<Map<String, Object>>();
 
        File target = new File(uploadPath);
        
        //파일을 저장할 경로가 존재하지 않으면 폴더를 생성
        if(!target.exists()) { target.mkdirs();}
        
        //겹쳐지지 않는 파일명을 위한 유니크한 값 생성
        UUID uid = UUID.randomUUID();
        
        for(int i=0; i<file.length; i++) {
        	
        	//파일 원래 이름
            String orgFileName = file[i].getOriginalFilename();
            //DB에 이름 중복  방지를 위해 변경한 이름(원본파일 이름과 UUID 결합)
            String saveFileName = uid.toString() + "_" + orgFileName;
            //파일 크기
            Long saveFileSize = file[i].getSize();
            //파일 종류	
            String orgFileExtension = orgFileName.substring(orgFileName.lastIndexOf("."));
            
            System.out.println("================== file start ==================");
            System.out.println("파일 실제 이름: "+orgFileName);
            System.out.println("파일 저장 이름: "+saveFileName);
            System.out.println("파일 크기: "+saveFileSize+" 바이트");
            System.out.println("파일 종류: "+orgFileExtension);
            System.out.println("content type: "+file[i].getContentType());
            System.out.println("================== file   END ==================");
 
            //uploadPath 폴더 경로의 saveFileName이라는 파일에 대한 file 객체 생성
            //서버에 실제 파일을 저장한다. (임시디렉토리에 업로드)
            target = new File(uploadPath, saveFileName);
            //임시 디렉토리에 업로드된 파일 데이터를 지정한 폴더에 저장한다.
            file[i].transferTo(target);
            
            Map<String, Object> fileInfo = new HashMap<String, Object>();
            
            //파일의 정보를 각각의 이름으로 fileInfo에 담은 뒤, fileList에 담아준다.
            fileInfo.put("ORGNAME", orgFileName);
            fileInfo.put("SYSTEMNAME", saveFileName);
            fileInfo.put("FILE_SIZE", saveFileSize);
            fileInfo.put("BOARDNUM", boardnum);
            fileInfo.put("orgfileextension", orgFileExtension);
            fileList.add(fileInfo);
            
        }
        //파일들의 정보가 담긴 fileList를 반환한다.
        return fileList;
    }
    
    
    
    
}


