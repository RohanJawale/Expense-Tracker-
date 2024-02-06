package com.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.entity.Expense;

public interface ExpenseService {
	
	List<Expense> findAll();
	
	void save(Expense expense);
	
	Expense findById(Long id);
	
	List<Expense> findAllByUid(Long uid);

	
	void delete(Long id);
//	
//	@Query("select * from Expense e WHERE e.date LIKE %:date%")
//	List<Expense> findAllByDate(@Param("date")String date);

	

}
