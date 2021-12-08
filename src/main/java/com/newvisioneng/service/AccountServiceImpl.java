package com.newvisioneng.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newvisioneng.domain.Account;
import com.newvisioneng.mapper.AccountMapper;
import com.newvisioneng.mapper.AdminMapper;

import lombok.Setter;

@Service
public class AccountServiceImpl implements AccountService {

	@Setter(onMethod_ = @Autowired)
	private AccountMapper accountMapper;
	
	@Override
	public void join(Account account) {
		accountMapper.insertAccount(account);
	}
	
}