package com.sysadv.service;

import java.util.List;

import com.sysadv.model.Departamento;

public interface DepartamentoService {
	void save(Departamento departamento);

	List<Departamento> getLista();
	
	void remove(String id);
	
	Long count();

}
