package com.uniadv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uniadv.model.Cliente;
import com.uniadv.repository.ClienteRepository;

@Service
public class ClienteService {

	@Autowired
	private ClienteRepository repository;

	// Retorna uma lista com todos clientes inseridos
	public List<Cliente> findAll() {
		return repository.findAll();
	}

	// Retorno um cliente a partir do ID
	public Cliente findOne(Integer id) {
		return repository.findOne(id);
	}

	// Salva ou atualiza um cliente
	public void save(Cliente cliente) {
		repository.saveAndFlush(cliente);
	}

	// Exclui um cliente
	public void delete(Cliente cliente) {
		repository.delete(cliente);
	}

}
