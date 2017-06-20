package com.uniadv.service;

import com.uniadv.model.Usuario;

public interface UsuarioService {

	Usuario buscarPorEmail(String email);

	void alterarSenha(Integer id, String senhaAtual, String novaSenha);

}
