package com.sysadv.cache;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import com.sysadv.model.Cliente;
import com.sysadv.repository.ClienteRepository;

@Component
public class ClienteCache {

	@Autowired
	ClienteRepository clienteRepository;

	static final Logger logger = Logger.getLogger(ClienteCache.class);

	@Cacheable(value = "clienteCache", key = "#id")
	public Cliente getCliente(Integer id) {
		logger.info("[CACHE] Realizando consulta pelo cliente com id: " + id);
		return clienteRepository.findOne(id);
	}

	@Cacheable(value = "ClientesCache")
	public List<Cliente> getAllClientes() {
		logger.info("[CACHE] De todos os clientes");
		return clienteRepository.findAll(new Sort(new Sort.Order(Sort.Direction.ASC, "nome")));
	}

	@Cacheable(value = "qtdClientes")
	public Long qtdClientes() {
		logger.info("[CACHE] Quantidade de clientes");
		return clienteRepository.count();
	}
}
