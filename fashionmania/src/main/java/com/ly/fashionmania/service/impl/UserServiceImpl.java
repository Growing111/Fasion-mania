package com.ly.fashionmania.service.impl;


import com.ly.fashionmania.dao.UserDao;
import com.ly.fashionmania.entity.User;
import com.ly.fashionmania.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService {
   
	@Autowired
	private UserDao userDao;

	@Override
	public int updateUser(User user) {
		
		return userDao.updateUser(user);
	}

	@Override
	public int deleteUserById(Integer id) {
		
		return userDao.deleteUserById(id);
	}

	@Override
	public int addUser(User user) {
		return userDao.addUser(user);
	}

	@Override
	public User getUserByName(String nickname) {
		
		return userDao.getUserByName(nickname);
	}

	@Override
	public List<User> getUsers() {
		return userDao.getUsers();
	}

	@Override
	public User findUser(User user) {
		return userDao.findUser(user);
	}

	@Override
	public User getUserByEmail(String email) {
		return userDao.getUserByEmail(email);
	}

}
