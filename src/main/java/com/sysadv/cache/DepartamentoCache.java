package com.sysadv.cache;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;

import com.sysadv.model.Departamento;
import com.sysadv.service.DepartamentoService;

@Component
public class DepartamentoCache {

	@Autowired
	DepartamentoService departamentoService;

	static final Logger logger = Logger.getLogger(DepartamentoCache.class);

	@Cacheable(value = "DepartamentoCache", key = "#id")
	public Departamento getDepartamento(String id) {
		logger.info("[CACHE] Realizando consulta pelo departamento com id: " + id);
		return departamentoService.findOne(id);
	}
	
	@Cacheable(value = "DepartamentosCache")
	public List<Departamento> getAllDepartamentos() {
		logger.info("[CACHE] De todos os departamentos");
		return departamentoService.getLista();
	}

	@Cacheable(value = "qtdDepartamento")
	public Long qtdDepartamento() {
		logger.info("[CACHE] Quantidade de departamentos");
		return departamentoService.count();
	}
}
