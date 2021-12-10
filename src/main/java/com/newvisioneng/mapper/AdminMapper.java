package com.newvisioneng.mapper;

import com.newvisioneng.domain.Account;
import com.newvisioneng.domain.AdminDTO;

public interface AdminMapper {

	Account getAccountById(String id);
	void insertAccount(Account account);
	
	/*String adminLoginCheck(AdminDTO admin);*/
}
