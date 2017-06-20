package com.uniadv.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uniadv.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer>{

}
