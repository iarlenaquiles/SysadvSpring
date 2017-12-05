package com.sysadv.cache;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;

import com.sysadv.model.Contato;
import com.sysadv.service.ContatoService;

@Component
public class ContatoCache {
	@Autowired
	ContatoService contatoService;

	static final Logger logger = Logger.getLogger(ContatoCache.class);
	
	@Cacheable(value = "ContatosCache")
	public List<Contato> getAllContatos() {
		logger.info("[CACHE] De todos os contatos");
		return contatoService.getLista();
	}
	
	@Cacheable(value = "qtdContato")
	public Long qtdContato() {
		logger.info("[CACHE] Quantidade de contatos");
		return contatoService.count();
	}
}
