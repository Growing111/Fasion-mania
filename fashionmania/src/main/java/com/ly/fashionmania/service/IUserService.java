package com.ly.fashionmania.service;

import com.ly.fashionmania.entity.User;

import java.util.List;


public interface IUserService {

	int updateUser(User user);

	int deleteUserById(Integer id);

	int addUser(User user);

	User getUserByName(String nickname);

	List<User>getUsers();

	List<User>getUsersPage(int limit,int page);

	User findUser(User user);

	User getUserByEmail(String email);
}
