package com.green.user.service;

import java.util.HashMap;

import com.green.user.vo.UserVo;

public interface UserService {
	
	UserVo getUser(String user_id);

	UserVo login(HashMap<String, Object> map);

}
