package com.ly.dao;

import com.ly.entity.User;
import org.springframework.stereotype.Repository;

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
