package com.sysadv.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sysadv.model.Contato;

@Repository
public interface ContatoRepository extends JpaRepository<Contato, Integer>{

}
