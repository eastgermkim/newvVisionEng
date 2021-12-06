package com.newvisioneng.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.RecruitDTO;

public interface RecruitService {

	//채용공고 목록 가져오기
	public List<RecruitDTO> getRecruitList(Criteria cri);
	//채용공고 총 글 개수
	public int getRecruitTotal(Criteria cri);
	
	//채용공고 글 하나 정보 가져오기
	public RecruitDTO recruitGet(Long recruitNum);
	//그 글에 첨부된 파일 정보도 가져오기
	public List<Map<String, Object>> readRecruitFile(Long recruitNum) throws Exception;

	//채용공고 글 등록
	public long recruitRegist(RecruitDTO recruitdto,MultipartFile[] file,HttpServletRequest req) throws Exception;
	
	//채용공고 글 작성 중에 이미지 삽입시
	public void insertRecruitImg(Map<String, Object> map);
	//채용공고 글 등록, 수정 시 최종적으로 삽입된 이미지들만 DB에 글번호 넣어주기
	public void updateRecruitNumToImgDB(String recruitContents,long recruitNum);


	//채용공고 글 수정 중에 이미 첨부된 파일 삭제하기
	public boolean deleteRecruitFile(String fileSystemName) throws Exception;
	
	//결국 채용공고 글 작성에 사용안된 이미지들 삭제하기
	public void deleteUnusedImgs(HttpServletRequest req);

	//채용공고 수정완료
	public void modifyRecruit(RecruitDTO recruit, MultipartFile[] file, HttpServletRequest req) throws Exception;

	//채용공고 삭제
	public boolean removeRecruit(Long recruitNum);


}
