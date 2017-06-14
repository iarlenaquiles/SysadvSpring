package com.uniadv.repository;

import java.util.List;
import com.uniadv.model.Cliente;

public interface ClienteDao {
	public void adiciona(Cliente cliente);

	public List<Cliente> getLista();

	public void altera(Cliente cliente);

	public void remove(Integer id);
	
	public Cliente getCliente(Integer id);

}
