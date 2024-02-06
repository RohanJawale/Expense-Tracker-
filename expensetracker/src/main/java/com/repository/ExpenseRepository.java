package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.entity.Expense;

@Repository
public interface ExpenseRepository extends JpaRepository<Expense,Long>{


//	@Query("select * from Expense e WHERE e.date LIKE %:date%")
//	List<Expense> findAllByDate(@Param("date")String date);
	List<Expense> findAllByUid(Long uid);
	
}
