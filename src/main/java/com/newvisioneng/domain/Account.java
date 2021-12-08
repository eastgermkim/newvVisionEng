package com.newvisioneng.domain;

import org.apache.ibatis.type.Alias;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import lombok.Data;

@Data
public class Account {
	private String id;
	private String password;
	private String confirmPassword;
	private String email;
	private String phone;
	private String role;

}