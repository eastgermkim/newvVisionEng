package com.newvisioneng.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.newvisioneng.mapper.AdminMapper;

public class SecurityAccountService implements UserDetailsService {
    @Autowired
    AdminMapper adminMapper;

    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
    	SecurityAccount account = new SecurityAccount(adminMapper.getAccountById(id));
    	System.out.println(account);
    	return account;
    }
}