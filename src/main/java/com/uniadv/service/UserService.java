package com.uniadv.service;

import com.uniadv.model.User;

public interface UserService {
	void save(User user);

	User findByUsername(String username);
}
