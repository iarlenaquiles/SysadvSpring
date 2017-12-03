package com.sysadv.service;

import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sysadv.cache.UsuarioCache;
import com.sysadv.model.User;
import com.sysadv.repository.RoleRepository;
import com.sysadv.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	private UsuarioCache usuarioCache;

	@Override
	public void save(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(new HashSet<>(roleRepository.findAll()));
		userRepository.save(user);
	}

	@Override
	public User findByUsername(String username) {
		return usuarioCache.getUsuario(username);
	}

	@Override
	public List<User> getLista() {
		return userRepository.findAll(new Sort(new Sort.Order(Sort.Direction.ASC, "username")));
	}

	@Override
	public void delete(User user) {
		userRepository.delete(user.getId());
	}

	@Override
	public User findById(Integer id) {
		return userRepository.findOne(id);
	}

	@Override
	public Long count() {
		return userRepository.count();
	}

}
