package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.entity.Users;
import com.repository.UsersRepository;
@Service
public class UserServiceImpl implements UserService{

	
	@Autowired
	UsersRepository usersRepository;
	public Users findByUname(String uname) {
		// TODO Auto-generated method stub
		return usersRepository.findByUname(uname);
	}
	@Override
	public void save(Users users) {
		usersRepository.save(users);
	}
	

}
