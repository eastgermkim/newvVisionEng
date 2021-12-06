package com.newvisioneng.mapper;

import java.util.List;
import java.util.Map;

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.RecruitDTO;

public interface RecruitMapper {

//채용공고 등록
 public void insertRecruit(RecruitDTO recruitdto);
 public void insertRecruitFile(Map<String, Object> map);

//채용공고 글 조회
 public RecruitDTO readRecruit(Long recruitNum);
 public List<Map<String, Object>> readRecruitFile(Long recruitNum) throws Exception;

//채용공고 전체 목록 불러오기
 public List<RecruitDTO> getRecruitList(Criteria cri);
 //전체개수
 public int getRecruitTotal(Criteria cri);

 //이미지 삽입시 DB 저장
 public void insertRecruitImg(Map<String, Object> map);
 //글 등록에 최종 사용된 이미지의 DB에만 recruitnum 업데이트
 public void updateRecruitImg(Map<String, Object> map);
 
 //recruitnum이 NULL인 이미지들 systemname 불러오기
 public List<String> getRecruitImgsNULL();
 //recruitnum이 NULL인 이미지들 DB에서 전체 삭제
 public void deleteRecruitImgNULL();
 
 //첨부된 파일 삭제시
 public boolean deleteRecruitFile(String fileSystemName) throws Exception;
 
 //채용공고 수정
 public void updateRecruit(RecruitDTO recruit);
 //채용공고 수정시 기존 이미지 DB의 recruitnum을 일단 NULL로 변경
 public void emptyRecruitImg(Long recruitNum);
 
 //채용공고 삭제
 public int deleteRecruit(Long recruitnum);
}
