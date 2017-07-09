package com.sysadv.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sysadv.model.Estado;

@Repository
public interface EstadoRepository extends JpaRepository<Estado, Integer> {

}
