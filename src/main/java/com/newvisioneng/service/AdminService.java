package com.newvisioneng.service;

import javax.servlet.http.HttpSession;

import com.newvisioneng.domain.AdminDTO;

public interface AdminService {

	boolean loginCheck(AdminDTO admin, HttpSession session) throws Exception;



}
