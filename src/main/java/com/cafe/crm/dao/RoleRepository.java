package com.cafe.crm.dao;

import com.cafe.crm.models.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface RoleRepository extends JpaRepository<Role,Long> {

	@Query("SELECT u FROM Role u WHERE u.name =:name")
	Role getRoleByName(@Param("name")String name);

}
