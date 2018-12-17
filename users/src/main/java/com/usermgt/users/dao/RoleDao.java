package com.usermgt.users.dao;

import com.usermgt.users.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleDao extends JpaRepository <Role, Integer> {
}
