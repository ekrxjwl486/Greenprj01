package com.green.user.dao;

import java.util.HashMap;

import com.green.user.vo.UserVo;

public interface UserDao {


	UserVo getUser(String user_id);

	UserVo login(HashMap<String, Object> map);

}
