package com.sysadv.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.sysadv.model.Cidade;

@Repository
public interface CidadeRepository extends JpaRepository<Cidade, Integer> {

	@Query("select c.id, c.nome from cidade c, estado e  where e.id=:id")
	public List<Cidade> getListaCidadeByEstado(@Param("id") Integer idEstado);
}
