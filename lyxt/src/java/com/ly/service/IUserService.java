package com.ly.service;

import com.ly.entity.User;

import java.util.List;


public interface IUserService {

	int updateUser(User user);

	int deleteUserById(Integer id);

	int addUser(User user);

	User getUserByName(String nickname);

	List<User>getUsers();

	User findUser(User user);

	User getUserByEmail(String email);
}
