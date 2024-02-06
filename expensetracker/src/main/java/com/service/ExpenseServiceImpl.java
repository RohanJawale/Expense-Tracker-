package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Expense;
import com.repository.ExpenseRepository;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
@Service
public class ExpenseServiceImpl implements ExpenseService{
	
	 @Autowired
	 ExpenseRepository expenserepository;

	@Override
	public List<Expense> findAll() {
		// TODO Auto-generated method stub
		return expenserepository.findAll();
	}

	@Override
	public void save(Expense expense) {

			expenserepository.save(expense);
	}

	@Override
	public Expense findById(Long id) {
		if(expenserepository.findById(id).isPresent())
		{
			return expenserepository.findById(id).get();
		}
		return null;
	}

	@Override
	public void delete(Long id) {

		Expense expense=findById(id);
		expenserepository.delete(expense);
				
	}

	@Override
	public List<Expense> findAllByUid(Long uid) {
		// TODO Auto-generated method stub
		return expenserepository.findAllByUid(uid);
	}

//	@Override
//	public List<Expense> findAllByDate(String date) {
//		
//		return expenserepository.findAllByDate(date);
//	}

}
