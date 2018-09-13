package com.ly.service.impl;

import java.util.List;

import com.ly.dao.UserDao;
import com.ly.entity.User;
import com.ly.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {
   
	@Autowired
	UserDao userDao;

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
