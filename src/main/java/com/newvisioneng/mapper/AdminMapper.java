package com.newvisioneng.mapper;

import com.newvisioneng.domain.Account;
import com.newvisioneng.domain.AdminDTO;

public interface AdminMapper {

	public Account getAccountById(String id);
	public void insertAccount(Account account);
	
	/*String adminLoginCheck(AdminDTO admin);*/
}
