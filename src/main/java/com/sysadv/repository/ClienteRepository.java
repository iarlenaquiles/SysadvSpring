package com.sysadv.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sysadv.model.Cliente;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, Integer> {
}