package com.sysadv.cache;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import com.sysadv.model.Estado;
import com.sysadv.repository.EstadoRepository;

@Component
public class EstadoCache {

	@Autowired
	private EstadoRepository estadoRepository;
	
	static final Logger logger = Logger.getLogger(EstadoCache.class);
	
	@Cacheable(value = "EstadosCache")
	public List<Estado> getAllEstados() {
		logger.info("[CACHE] De todos os estados");
		return estadoRepository.findAll(new Sort(new Sort.Order(Sort.Direction.ASC, "nome")));
	}
}
