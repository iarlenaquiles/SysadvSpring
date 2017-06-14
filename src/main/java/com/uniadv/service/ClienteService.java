package com.uniadv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uniadv.model.Cliente;
import com.uniadv.repository.ClienteJpaDao;

@Service
public class ClienteService {
	
//	@Autowired
//	private ClienteRepository repository; 
	@Autowired
	private ClienteJpaDao repository;
	
	//Retorna uma lista com todos clientes inseridos
	public List<Cliente> findAll() {
		return repository.getLista(); 
	}
	
	//Retorno um cliente a partir do ID
	public Cliente findOne(Integer id) {
		return repository.getCliente(id);
	}
	
	//Salva ou atualiza um cliente
	public void save(Cliente cliente) {
		repository.adiciona(cliente);
	}
	
	public void alterar(Cliente cliente){
		repository.altera(cliente);
	}
	
	//Exclui um cliente
	public void delete(Integer id) {
		repository.remove(id);
	}

}
