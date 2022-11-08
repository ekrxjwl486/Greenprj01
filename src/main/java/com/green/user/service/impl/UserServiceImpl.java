package com.green.user.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public UserVo getUser(String user_id) {
		UserVo vo = userDao.getUser( user_id );
		return vo;
	}
	
	@Override
	public UserVo login(HashMap<String, Object> map) {
		UserVo    vo   =   userDao.login( map ); 
		return    vo;
	}
	

}
