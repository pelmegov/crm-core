package com.cafe.crm.dao;

import com.cafe.crm.models.shift.Shift;
import com.cafe.crm.models.worker.Manager;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.util.Set;


public interface ManagerRepository extends JpaRepository<Manager, Long> {


	@Query("SELECT e FROM Shift e WHERE e.dateShift BETWEEN :startDate and :endDate")
	Set<Shift> findByDates(@Param("startDate") LocalDate startDate,
						   @Param("endDate") LocalDate endDate);

	// for login
	@Query("SELECT u FROM Manager u WHERE u.login =:name")
	Manager getUserByLogin(@Param("name") String login);
}
