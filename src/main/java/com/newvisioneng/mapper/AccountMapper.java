package com.newvisioneng.mapper;

import com.newvisioneng.domain.Account;

public interface AccountMapper {
	Account getAccountById(String id);
	void insertAccount(Account account);
}