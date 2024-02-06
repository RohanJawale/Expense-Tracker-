package com.service;

import org.springframework.stereotype.Service;

import com.entity.Expense;
import com.entity.Users;
public interface UserService {

	Users findByUname(String user_name);

	void save(Users users);

}
