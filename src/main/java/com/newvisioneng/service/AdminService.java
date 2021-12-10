package com.newvisioneng.service;

import javax.servlet.http.HttpSession;

import com.newvisioneng.domain.Account;
import com.newvisioneng.domain.AdminDTO;

public interface AdminService {

	void join (Account account);
	
	/*boolean loginCheck(AdminDTO admin, HttpSession session) throws Exception;*/



}
