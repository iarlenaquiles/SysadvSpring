package com.uniadv.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.uniadv.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {
}
