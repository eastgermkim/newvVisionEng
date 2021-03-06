/*사업실적 테이블*/
CREATE TABLE NV_BUSINESS_RESULT(
	RESULTNUM BIGINT AUTO_INCREMENT PRIMARY KEY,
	RESULTCLASS VARCHAR(255) NOT NULL, /*군사시설, 공공기관, 민간기업*/
	RESULTCONTENTS TEXT NOT NULL,
	SHOW_MAINPAGE INT DEFAULT 0, /*기본값 0, 메인페이지에 보여줄시 1로 변경*/
	IMGNAME VARCHAR(255) /*메인페이지 등록시 저장되는 이미지 파일명*/
	);

ALTER TABLE NV_BUSINESS_RESULT CHANGE RESULTCONTNENTS RESULTCONTENTS TEXT NOT NULL;

SELECT * FROM NV_BUSINESS_RESULT ORDER BY RESULTNUM DESC ;
SELECT * FROM NV_BUSINESS_RESULT ORDER BY RESULTNUM DESC LIMIT 0,15;
SELECT * FROM NV_BUSINESS_RESULT WHERE RESULTCLASS = '군사시설' ORDER BY RESULTNUM DESC LIMIT 0, 15;
SELECT * FROM NV_BUSINESS_RESULT WHERE RESULTCLASS = '군사시설' ORDER BY RESULTNUM DESC LIMIT 10, 15;
	
SELECT COUNT(*) FROM NV_BUSINESS_RESULT WHERE RESULTNUM>0;
SELECT COUNT(*) FROM NV_BUSINESS_RESULT WHERE RESULTCLASS = '군사시설' and RESULTNUM>0;
SELECT IMGNAME FROM NV_BUSINESS_RESULT  WHERE RESULTNUM=13;

DROP TABLE NV_BUSINESS_RESULT;

INSERT INTO NV_BUSINESS_RESULT(RESULTCLASS,RESULTCONTENTS) VALUES
('군사시설','공군 제1방호포병여단 IP CAMERA 설치'),
('군사시설','공군 제2388부대 IP CAMERA 설치'),
('군사시설','00포병 CCTV 설치납품'),
('군사시설','군단 사령부 경계용 CCTV 설치납품'),
('군사시설','000통신 경계용 CCTV 설치납품'),
('군사시설','경계용 CCTV 구매설치'),
('군사시설','GP 소통문 감시장비 구매'),
('군사시설','경계 및 부대관리 CCTV 납품'),
('군사시설','제2311부대 CCTV SYSTEM 유지보수.'),
('군사시설','진해해군관사 APT CCTV 설치공사.'),
('군사시설','서울환경전광판감시, 육군 5378부대 CCTV SYSTEM 유지보수 용역'),
('군사시설','군단사령부 경계용 CCTV 설치납품'),
('군사시설','781 통신 경계용 CCT 설치납품'),
('군사시설','육군훈련소 CCTV 설치공사'),
('군사시설','철원 0000부대 CCTV 설치공사'),
('군사시설','화천 00사단 CCTV 설치공사'),
('군사시설','양양 0000부대 CCTV 설치공사'),
('군사시설','양주 0000부대 CCTV 설치공사'),
('군사시설','탄약고 CCTV 설치공사'),
('군사시설','공군 제15비행단CCTV 유지보수'),
('군사시설','6군단사령부 CCTV 설치공사'),
('군사시설','가납리 비행장 CCTV 설치공사'),
('군사시설','1기갑여단CCTV 설치공사, 수도방위사령부 CCTV 설치공사');

INSERT INTO NV_BUSINESS_RESULT(RESULTCLASS,RESULTCONTENTS) VALUES
('공공기관','강남주민편익시설 CCTV 설치공사'),
('공공기관','경찰청 보안3과 CCTV 설치공사.'),
('공공기관','과천시청ITS OPTICAL LINK 및 CCTV SYSTEM 설치공사.'),
('공공기관','광화문우체국 CCTV 설치공사.'),
('공공기관','구리시청 원격제어 CCTV 설치공사.'),
('공공기관','국립고궁박물관 CCTV SYSTEM 및 경보시스템 유지보수.'),
('공공기관','김포매립지 CCTV 설치공사.'),
('공공기관','남양주우체국 CCTV 설치공사.'),
('공공기관','도로공사 산업용 스위치 설치공사.'),
('공공기관','문화재청 CCTV SYSTEM 설치공사 및 유지보수.'),
('공공기관','부산 수영 음식쓰레기 처리장 CCTV 설치공사.'),
('공공기관','신음배수펌프장 CCTV 설치공사.'),
('공공기관','과천ITS CCTV 설치공사 및 유지보수.'),
('공공기관','원주도로교통 2차, 3차, 4차 CCTV 설치공사.'),
('공공기관','서울경찰청 CCTV 설치 및 유지보수공사.'),
('공공기관','연천군청 CCTV 설치공사.'),
('공공기관','용인수지우체국 CCTV 설치공사.'),
('공공기관','인천서구문화회관 CCTV SYSTEM 설치공사.'),
('공공기관','인천시경 CCTV 자재납품공사 (7차).'),
('공공기관','인천 지하철 부평구간 CCTV 광케이블 공사.'),
('공공기관','의정부시청 재난감시SYSTEM 교체공사'),
('공공기관','제주경찰서 교통관제 CCTV 설치공사.'),
('공공기관','제주항만청 CCTV 설치공사.'),
('공공기관','중앙우체국 DVR 교체공사.'),
('공공기관','중랑구청 WEB CCTV 유지보수.'),
('공공기관','충북지방경찰청 신축 CCTV 설치공사.'),
('공공기관','평택우체국 CCTV 설치공사.'),
('공공기관','한국도로공사 ITS 네트워크장비 설치.'),
('공공기관','한국철도공사 신호통신공사.'),
('공공기관','과천시 노후 CCTV 교체공사'),
('공공기관','한강살리기 6공구(여주) 무선MESH, 소수력, 보 CAMERA SYSTEM 설치.'),
('공공기관','과천 시청 노후 CCTV 교체공사'),
('공공기관','한국 무역보험공사 CCTV 교체공사'),
('공공기관','인왕산 CCTV 설치공사'),
('공공기관','인왕산 광케이블 이설공사');



INSERT INTO NV_BUSINESS_RESULT(RESULTCLASS,RESULTCONTENTS) VALUES
('민간기업','강원랜드 네트웍 케이블 설치공사.'),
('민간기업','경보아파트 CCTV 설치공사.'),
('민간기업','고척공구상가 CCTV 설치공사.'),
('민간기업','구미 농심 CCTV 설치공사.'),
('민간기업','구미대학 전자파시험실 CCTV 설치공사.'),
('민간기업','대왕제지 소각로 CCTV 설치공사.'),
('민간기업','대우자동차(주) 라노스LINE CCTV 설치공사.'),
('민간기업','대우전자(주) 전자파시험실 CCTV 설치공사.'),
('민간기업','대원여고 증축 통신공사.'),
('민간기업','데이콤 안양 및 용산지국 CCTV 설치공사.'),
('민간기업','동국제강 OPTICAL LINK 및 CCTV SYSTEM 설치공사.'),
('민간기업','동서식품 CCTV SYSTEM 설치공사.'),
('민간기업','동서리서치 CCTV 및 음향장치 설치공사.'),
('민간기업','롯데아파트 CCTV 보수 및 설치공사.'),
('민간기업','말레이시아 철강공장 CCTV 납품 설치.'),
('민간기업','메리츠종합금융 CCTV 납품 설치.'),
('민간기업','번동 솔그린아파트 CCTV 설치공사.'),
('민간기업','부경대 전자파시험실 CCTV 설치공사.'),
('민간기업','브라운호텔 CCTV 설치공사.'),
('민간기업','상계동 삼창아파트 CCTV 설치공사.'),
('민간기업','삼보금고 CCTV SYSTEM 이설공사.'),
('민간기업','상계백병원 CCTV 설치공사.'),
('민간기업','샘표 소각로 CCTV 설치공사.'),
('민간기업','서강대 CCTV 설치공사.'),
('민간기업','성내우림아파트 CCTV 설치공사.'),
('민간기업','세종연구소 CCTV 설치공사.'),
('민간기업','숭실대 CCTV 설치공사.'),
('민간기업','L.G CARD(주) CCTV 설치공사.'),
('민간기업','(주)유니드 CCTV SYSTEM 설치공사.'),
('민간기업','원주연세대 전자파시험실 CCTV 설치공사.'),
('민간기업','이천열병합발전소 로내감시용 CCTV 설치공사'),
('민간기업','인천레미콘 CCTV 설치공사.'),
('민간기업','인천우솔빌라 CCTV 설치공사'),
('민간기업','전자파시험실 및 전파통신연구소외 다수 CCTV 설치공사.'),
('민간기업','전진교통 CCTV 설치공사.'),
('민간기업','조선기전 전자파시험실 CCTV 설치공사.'),
('민간기업','GM 대우 Auto&Technology CCTV 설치공사.'),
('민간기업','청계 정수장 CCTV 설치공사.'),
('민간기업','충주 슬러지 CCTV 설치공사.'),
('민간기업','㈜COEX CCTV SYSTEM 유지보수'),
('민간기업','(주)코프랑 공장 자동화 CCTV 설치공사.'),
('민간기업','(주)코프랑 로내감시 CCTV 설치공사.'),
('민간기업','(주)코프랑 온산공장 CCTV 설치공사.'),
('민간기업','통영가스공사 CCTV 설치공사.'),
('민간기업','주)퍼시픽 호텔 CCTV 설치공사.'),
('민간기업','평창동 LOTTE APT CCTV 설치공사.'),
('민간기업','한강오피스텔 CCTV 설치공사.'),
('민간기업','한국철강(주) CCTV 설치 및 보수공사.'),
('민간기업','한신 상호신용금고 CCTV 설치공사.'),
('민간기업','한보철강 CCTV 설치공사.'),
('민간기업','현대아산(금강산) CCTV 설치공사'),
('민간기업','현대자동차(주) 주행시험장 전자파시험실 CCTV 설치공사.'),
('민간기업','현대전자(주) 전자파 시험실 CCTV 설치공사.'),
('민간기업','호남대 강당 CCTV 설치공사.'),
('민간기업','환영철강 CCTV 설치공사.'),
('민간기업','한국 다우코닝 외곽경비 SYSTEM 유지보수중.'),
('민간기업','주)코엑스 빔프로젝트 유지보수중.'),
('민간기업','㈜UNID AEO CCTV 설치공사'),
('민간기업','㈜대연씨앤아이 태양광 모니터링 CCTV 설치공사'),
('민간기업','UNID 울산공장 U-PROJECT'),
('민간기업','UNID 울산공장 U1-PROJECT'),
('민간기업','평강랜드 관제용 모니터링 시스템 설치공사'),
('민간기업','이테크건설 삼양이노캠 CCTV설치'),
('민간기업','충북대학교 테스트임베드 열화상카메라 설치공사');

















