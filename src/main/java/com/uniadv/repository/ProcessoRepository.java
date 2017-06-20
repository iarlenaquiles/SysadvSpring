package com.uniadv.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.uniadv.model.Processo;

@Repository
public interface ProcessoRepository extends JpaRepository<Processo, Integer> {
}