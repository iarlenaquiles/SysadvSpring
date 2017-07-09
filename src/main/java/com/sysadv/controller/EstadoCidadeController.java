package com.sysadv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sysadv.model.Estado;
import com.sysadv.repository.EstadoRepository;

@RestController
public class EstadoCidadeController {

	@Autowired
	private EstadoRepository estadoRepository;

	@RequestMapping("/getEstado")
	public List<Estado> getEstado() {
		List<Estado> lista = estadoRepository.findAll(new Sort(new Sort.Order(Sort.Direction.ASC, "nome")));
		return lista;
	}

}
