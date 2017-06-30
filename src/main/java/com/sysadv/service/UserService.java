package com.sysadv.service;

import java.util.List;

import com.sysadv.model.User;

public interface UserService {
	void save(User user);

	User findByUsername(String username);

	List<User> getLista();

	void delete(User user);

	User findById(Integer id);

	Long count();

}
