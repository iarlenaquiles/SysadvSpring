package com.sysadv.cache;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import com.sysadv.model.Cidade;
import com.sysadv.repository.CidadeRepository;

@Component
public class CidadeCache {
	@Autowired
	private CidadeRepository cidadeRepository;
	static final Logger logger = Logger.getLogger(CidadeCache.class);

	@Cacheable(value = "CidadesCache")
	public List<Cidade> getAllCidades() {
		logger.info("[CACHE] De todos as cidades");
		return cidadeRepository.findAll(new Sort(new Sort.Order(Sort.Direction.ASC, "nome")));
	}

}
