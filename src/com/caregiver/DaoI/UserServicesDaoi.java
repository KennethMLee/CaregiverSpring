package com.caregiver.DaoI;

import java.util.List;

import com.caregiver.entities.User;

public interface UserServicesDaoi {

	boolean addUser(User user);

	User getUserId(int userId);

	List<User> getAllUsers();

	boolean removeUser(int userId);

	User validateUser(String username, String password);

	User getUserByUsername(String username);

	boolean isUser(String username, String password);

}
