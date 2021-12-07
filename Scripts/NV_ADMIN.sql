/*관리자 테이블*/
CREATE TABLE NV_ADMIN(
	ADMIN_ID VARCHAR(255) PRIMARY KEY,
	ADMIN_PW VARCHAR(255) NOT NULL,
	EMAIL VARCHAR(255),
	REG_DATE DATETIME DEFAULT now()
);

/*테이블 조회*/
SELECT * FROM nv_admin;

/*-------------------------------------------------------------------------------*/

INSERT INTO NV_ADMIN(ADMIN_ID,ADMIN_PW,EMAIL) VALUES('admin2','admin1234','');

SELECT ADMIN_ID FROM NV_ADMIN
        WHERE ADMIN_ID='admin2' AND ADMIN_PW='admin1234';