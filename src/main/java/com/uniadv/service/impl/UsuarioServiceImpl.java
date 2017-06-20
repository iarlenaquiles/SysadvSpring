package com.uniadv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uniadv.model.Usuario;
import com.uniadv.repository.UsuarioRepository;
import com.uniadv.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;
	@Override
	public Usuario buscarPorEmail(String email) {
		return null;
	}

	@Override
	public void alterarSenha(Integer id, String senhaAtual, String novaSenha) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void recuperarSenha(String email) {
		// TODO Auto-generated method stub
		
	}

}
