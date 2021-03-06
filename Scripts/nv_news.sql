/*뉴스 테이블*/
CREATE TABLE NV_NEWS(
	NEWSNUM BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NEWSTITLE VARCHAR(1000) NOT NULL,
	NEWSSUBTITLE VARCHAR(1000),
	NEWSLINK VARCHAR(1000),
   	NEWSWRITER VARCHAR(1000) NOT NULL,
   	NEWSCONTENTS VARCHAR(4000),
   	NEWSDATE VARCHAR(1000),
   	NEWSWRITEDATE DATETIME
   );
/*뉴스 첨부파일 테이블*/
CREATE TABLE NV_NEWS_FILE(
   SYSTEMNAME VARCHAR(255) primary key,
   ORGNAME VARCHAR(1000),
   NEWSNUM BIGINT,
   CONSTRAINT NEWSFILE_FK1 FOREIGN KEY(NEWSNUM) REFERENCES NV_NEWS(NEWSNUM) ON DELETE CASCADE
);
/*뉴스 내용에 삽입된 이미지 테이블*/
CREATE TABLE NV_NEWS_IMG(
   SYSTEMNAME VARCHAR(255) primary key,
   ORGNAME VARCHAR(1000),
   NEWSNUM BIGINT,
   CONSTRAINT NEWSIMG_FK1 FOREIGN KEY(NEWSNUM) REFERENCES NV_NEWS(NEWSNUM) ON DELETE SET NULL
);
 
/*테이블 조회*/
SELECT * FROM NV_NEWS;
SELECT * FROM NV_NEWS_FILE;
SELECT * FROM NV_NEWS_IMG;
 
/*테이블 드랍*/ 
DROP TABLE NV_NEWS;
DROP TABLE NV_NEWS_FILE;
DROP TABLE NV_NEWS_IMG;
TRUNCATE TABLE NV_NEWS; 
TRUNCATE TABLE NV_NEWS_FILE;

/*더미 데이터 만들기 매우 편함 2의 배수씩 복제됨*/
INSERT INTO NV_NEWS(NEWSTITLE,NEWSSUBTITLE,NEWSLINK,NEWSWRITER,NEWSCONTENTS,NEWSDATE,NEWSWRITEDATE)
 (SELECT NEWSTITLE,NEWSSUBTITLE,NEWSLINK,NEWSWRITER,NEWSCONTENTS,NEWSDATE,NEWSWRITEDATE FROM NV_NEWS);

 /*-------------------------------------------------------------------------------*/
