package com.sysadv.service;

import java.util.List;

import com.sysadv.model.Contato;

public interface ContatoService {
	void save(Contato contato);

	List<Contato> getLista();
	
	void remove(String id);
}
