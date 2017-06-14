package com.uniadv.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.uniadv.model.Cliente;

@Repository
public class ClienteJpaDao implements ClienteDao {
	
	@Autowired
	private EntityManager em;

	@Override
	@Transactional
	public void adiciona(Cliente cliente) {
		em.persist(cliente);
	}

	@Override
	public List<Cliente> getLista() {
		List<Cliente> result = em.createQuery("from clientes", Cliente.class).getResultList();
		return result;
	}

	@Override
	@Transactional
	public void altera(Cliente cliente) {
		em.merge(cliente);
	}

	@Override
	@Transactional
	public void remove(Integer id) {
		Cliente encontrado = em.find(Cliente.class, id);
		em.remove(encontrado);
	}

	@Override
	public Cliente getCliente(Integer id) {
		return em.find(Cliente.class, id);
	}

}
