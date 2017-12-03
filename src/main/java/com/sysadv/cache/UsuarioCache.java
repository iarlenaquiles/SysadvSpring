package com.sysadv.cache;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import com.sysadv.model.User;
import com.sysadv.repository.UserRepository;

@Component
public class UsuarioCache {

	@Autowired
	private UserRepository userRepository;

	static final Logger logger = Logger.getLogger(UsuarioCache.class);

	@Cacheable(value = "usuarioCache", key = "#nome")
	public User getUsuario(String nome) {
		logger.info("[CACHE] Realizando consulta pelo usuario com nome: " + nome);
		return userRepository.findByUsername(nome);
	}

	@Cacheable(value = "usuariosCache", key = "#nome")
	public List<User> getAll() {
		logger.info("[CACHE] Listando todos os usuarios");
		return userRepository.findAll(new Sort(new Sort.Order(Sort.Direction.ASC, "username")));
	}

}
