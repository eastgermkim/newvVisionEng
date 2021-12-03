package com.newvisioneng.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class AdminDTO {
	private String admin_ID;
	private String admin_PW;
	private String email;
	private Date reg_Date;
}
