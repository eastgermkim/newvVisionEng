package com.newvisioneng.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.newvisioneng.mapper.AccountMapper;

public class SecurityAccountService implements UserDetailsService {
    @Autowired
    AccountMapper accountMapper;

    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
    	SecurityAccount account = new SecurityAccount(accountMapper.getAccountById(id));
    	System.out.println(account);
    	return account;
    }
}