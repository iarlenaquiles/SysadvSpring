package com.sysadv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sysadv.cache.EstadoCache;
import com.sysadv.model.Cidade;
import com.sysadv.model.Estado;
import com.sysadv.repository.CidadeRepository;

@RestController
public class EstadoCidadeController {

	@Autowired
	private CidadeRepository cidadeRepository;
	
	@Autowired
	private EstadoCache estadoCache;

	@RequestMapping("/getEstado")
	public List<Estado> getEstado() {
		List<Estado> lista = estadoCache.getAllEstados();
		return lista;
	}

	@RequestMapping("/getCidade")
	public List<Cidade> getCidade() {
		List<Cidade> lista = cidadeRepository.findAll(new Sort(new Sort.Order(Sort.Direction.ASC, "nome")));
		return lista;
	}

}
