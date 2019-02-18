package com.ly.fashionmania.dao;



import com.ly.fashionmania.entity.User;

import java.util.List;


public interface UserDao {

	List<User> getUsers();

	User getUserByName(String nickname);

	int deleteUserById(Integer id);

	int updateUser(User user);

	int addUser(User user);

	User findUser(User user);

	User getUserByEmail(String email);
}
