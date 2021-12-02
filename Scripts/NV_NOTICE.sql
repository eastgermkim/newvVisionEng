/*공지사항 테이블*/
CREATE TABLE NV_NOTICE(
   NOTICENUM BIGINT AUTO_INCREMENT PRIMARY KEY,
   NOTICEWRITER VARCHAR(1000) NOT NULL,
   NOTICETITLE VARCHAR(1000) NOT NULL,
   NOTICECONTENTS VARCHAR(4000) NOT NULL,
   NOTICEDATE DATETIME,
   READCOUNT BIGINT
);
/*공지사항 첨부파일 테이블*/
CREATE TABLE NV_NOTICE_FILE(
   SYSTEMNAME VARCHAR(255) primary key,
   ORGNAME VARCHAR(1000),
   NOTICENUM BIGINT,
   CONSTRAINT NV_NOTICE_FILE_FK FOREIGN KEY(NOTICENUM) 
   		REFERENCES NV_NOTICE(NOTICENUM) ON DELETE CASCADE
);
/*공지사항 내용에 삽입된 이미지 테이블*/
CREATE TABLE NV_NOTICE_IMG(
   SYSTEMNAME VARCHAR(255) primary key,
   ORGNAME VARCHAR(1000),
   NOTICENUM BIGINT,
   CONSTRAINT NV_NOTICE_IMG_FK FOREIGN KEY(NOTICENUM) 
   		REFERENCES NV_NOTICE(NOTICENUM) ON DELETE SET NULL
);


/*테이블 조회*/
SELECT * FROM NV_NOTICE ORDER BY NOTICENUM DESC;
SELECT * FROM NV_NOTICE_FILE;
SELECT * FROM NV_NOTICE_IMG;

/*테이블 드랍*/
DROP TABLE NV_NOTICE;
DROP TABLE NV_NOTICE_FILE;
DROP TABLE NV_NOTICE_IMG;



/*-------------------------------------------------------------------------------*/

INSERT INTO NV_NOTICE VALUES(NULL,'tester','testTitle','testCONTENTS',now(),1);

SELECT *,
	(SELECT NOTICENUM FROM NV_NOTICE WHERE NOTICENUM > 209 LIMIT 1) 
	AS PREVNOTICENUM,
	(SELECT NOTICETITLE FROM NV_NOTICE WHERE NOTICENUM > 209 LIMIT 1) 
	AS PREVNOTICETITLE,
	(SELECT NOTICENUM AS NEXTNOTICENUM FROM NV_NOTICE WHERE NOTICENUM < 209 ORDER BY NOTICENUM DESC LIMIT 1)
	AS NEXTNOTICENUM
	FROM NV_NOTICE WHERE NOTICENUM = 209;