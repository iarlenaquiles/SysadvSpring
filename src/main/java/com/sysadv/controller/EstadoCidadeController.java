package com.sysadv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sysadv.cache.CidadeCache;
import com.sysadv.cache.EstadoCache;
import com.sysadv.model.Cidade;
import com.sysadv.model.Estado;

@RestController
public class EstadoCidadeController {

	@Autowired
	private CidadeCache cidadeCache;
	
	@Autowired
	private EstadoCache estadoCache;

	@RequestMapping("/getEstado")
	public List<Estado> getEstado() {
		List<Estado> lista = estadoCache.getAllEstados();
		return lista;
	}

	@RequestMapping("/getCidade")
	public List<Cidade> getCidade() {
		List<Cidade> lista = cidadeCache.getAllCidades();
		return lista;
	}

}
