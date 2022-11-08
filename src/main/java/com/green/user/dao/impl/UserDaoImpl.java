package com.green.user.dao.impl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.dao.UserDao;
import com.green.user.vo.UserVo;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SqlSession  sqlSession;
	
	@Override
	public UserVo getUser(String user_id) {
		UserVo  vo = sqlSession.selectOne("User.User", user_id );
		return vo;
	}

	@Override
	public UserVo login(HashMap<String, Object> map) {
		System.out.println("userdao map:" + map);
		UserVo  vo  =  sqlSession.selectOne("User.login", map); 
		
		return  vo;
	}

}
