package com.sysadv.cache;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;

import com.sysadv.model.Processo;
import com.sysadv.repository.ProcessoRepository;

@Component
public class ProcessoCache {
	
	@Autowired
	ProcessoRepository processoRepository;
	
	static final Logger logger = Logger.getLogger(ProcessoCache.class);
	
	@Cacheable(value = "processoCache")
	public List<Processo> getAll(){
		logger.info("[CACHE] Listando todos os processos!");
		return processoRepository.findAll();
	}

}
